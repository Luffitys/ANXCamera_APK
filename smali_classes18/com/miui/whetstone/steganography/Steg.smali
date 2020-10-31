.class public Lcom/miui/whetstone/steganography/Steg;
.super Ljava/lang/Object;
.source "Steg.java"


# instance fields
.field private final PASS_NONE:I

.field private final PASS_SIMPLE_XOR:I

.field private inBitmap:Landroid/graphics/Bitmap;

.field private key:Ljava/lang/String;

.field private passmode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/steganography/Steg;->PASS_NONE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/whetstone/steganography/Steg;->PASS_SIMPLE_XOR:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/steganography/Steg;->key:Ljava/lang/String;

    iput v0, p0, Lcom/miui/whetstone/steganography/Steg;->passmode:I

    iput-object v1, p0, Lcom/miui/whetstone/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private bytesAvaliableInBitmap()I
    .registers 3

    iget-object v0, p0, Lcom/miui/whetstone/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/whetstone/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0xc

    return v0
.end method

.method private setInputBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;
    .registers 2

    new-instance v0, Lcom/miui/whetstone/steganography/Steg;

    invoke-direct {v0}, Lcom/miui/whetstone/steganography/Steg;-><init>()V

    invoke-direct {v0, p0}, Lcom/miui/whetstone/steganography/Steg;->setInputBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static withInput(Ljava/io/File;)Lcom/miui/whetstone/steganography/Steg;
    .registers 3

    new-instance v0, Lcom/miui/whetstone/steganography/Steg;

    invoke-direct {v0}, Lcom/miui/whetstone/steganography/Steg;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/steganography/Steg;->setInputBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static withInput(Ljava/lang/String;)Lcom/miui/whetstone/steganography/Steg;
    .registers 3

    new-instance v0, Lcom/miui/whetstone/steganography/Steg;

    invoke-direct {v0}, Lcom/miui/whetstone/steganography/Steg;-><init>()V

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/steganography/Steg;->setInputBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public decode()Lcom/miui/whetstone/steganography/DecodedObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/miui/whetstone/steganography/DecodedObject;

    iget-object v1, p0, Lcom/miui/whetstone/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->decode(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/steganography/DecodedObject;-><init>([B)V

    return-object v0
.end method

.method public encode(Ljava/io/File;)Lcom/miui/whetstone/steganography/EncodedObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/whetstone/steganography/Steg;->encode([B)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v0

    return-object v0
.end method

.method public encode([B)Lcom/miui/whetstone/steganography/EncodedObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p1

    invoke-direct {p0}, Lcom/miui/whetstone/steganography/Steg;->bytesAvaliableInBitmap()I

    move-result v1

    if-gt v0, v1, :cond_13

    new-instance v0, Lcom/miui/whetstone/steganography/EncodedObject;

    iget-object v1, p0, Lcom/miui/whetstone/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->encode(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/steganography/EncodedObject;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space in bitmap to hold data (max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/whetstone/steganography/Steg;->bytesAvaliableInBitmap()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withPassword(Ljava/lang/String;)Lcom/miui/whetstone/steganography/Steg;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/whetstone/steganography/Steg;->withPassword(Ljava/lang/String;I)Lcom/miui/whetstone/steganography/Steg;

    return-object p0
.end method

.method public withPassword(Ljava/lang/String;I)Lcom/miui/whetstone/steganography/Steg;
    .registers 5

    iput-object p1, p0, Lcom/miui/whetstone/steganography/Steg;->key:Ljava/lang/String;

    iput p2, p0, Lcom/miui/whetstone/steganography/Steg;->passmode:I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
