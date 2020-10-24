.class public Lcom/android/camera2/vendortag/struct/HdrEvValue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HDR_TYPE_HDR:I = 0x0

.field public static final HDR_TYPE_LLHDR:I = 0x1

.field private static final NEW_HDR_TYPE:[B

.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mHdrCheckerEvValue:[I

.field private mHdrType:I

.field private mSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->NEW_HDR_TYPE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x68t
        0x64t
        0x72t
        0x20t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrType:I

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length p2, p1

    const/16 v1, 0x8

    if-le p2, v1, :cond_1

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->isNewHdrFormat([B)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    const-string v3, "HdrEvValue is new version"

    invoke-static {p2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x4

    aget-byte p2, p1, p2

    if-ne p2, v2, :cond_2

    iput v2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrType:I

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    aget-byte p2, p1, v1

    iput p2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    :goto_1
    iget p2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    if-ge v0, p2, :cond_5

    iget-object p2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v1

    aget-byte v3, p1, v3

    aput v3, p2, v0

    sget-object p2, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HdrEvValue: evValue["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    aget v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_2
    if-nez p2, :cond_4

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    goto :goto_3

    :cond_4
    const/16 p1, 0xc

    iput p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    :cond_5
    :goto_3
    return-void

    :array_0
    .array-data 4
        -0x6
        0x0
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x6
        -0xc
    .end array-data
.end method

.method private static isNewHdrFormat([B)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x4

    :try_start_1
    new-array p0, p0, [B

    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->read([B)I

    sget-object v1, Lcom/android/camera2/vendortag/struct/HdrEvValue;->NEW_HDR_TYPE:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    const-string v1, "Exception parsing hdrCheckerValues type box."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getHdrCheckerEvValue()[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    return-object p0
.end method

.method public getHdrType()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrType:I

    return p0
.end method

.method public getSequenceNum()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
