.class public Landroid/graphics/ImageDecoder$ImageInfo;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field private mDecoder:Landroid/graphics/ImageDecoder;

.field private final mSize:Landroid/util/Size;


# direct methods
.method private constructor <init>(Landroid/graphics/ImageDecoder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Size;

    # getter for: Landroid/graphics/ImageDecoder;->mWidth:I
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->access$700(Landroid/graphics/ImageDecoder;)I

    move-result v1

    # getter for: Landroid/graphics/ImageDecoder;->mHeight:I
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->access$800(Landroid/graphics/ImageDecoder;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mSize:Landroid/util/Size;

    iput-object p1, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mDecoder:Landroid/graphics/ImageDecoder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/graphics/ImageDecoder;)V

    return-void
.end method

.method static synthetic access$1302(Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder;)Landroid/graphics/ImageDecoder;
    .registers 2

    iput-object p1, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mDecoder:Landroid/graphics/ImageDecoder;

    return-object p1
.end method


# virtual methods
.method public getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mDecoder:Landroid/graphics/ImageDecoder;

    # invokes: Landroid/graphics/ImageDecoder;->getColorSpace()Landroid/graphics/ColorSpace;
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->access$1100(Landroid/graphics/ImageDecoder;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mDecoder:Landroid/graphics/ImageDecoder;

    # invokes: Landroid/graphics/ImageDecoder;->getMimeType()Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->access$900(Landroid/graphics/ImageDecoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method public isAnimated()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mDecoder:Landroid/graphics/ImageDecoder;

    # getter for: Landroid/graphics/ImageDecoder;->mAnimated:Z
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->access$1000(Landroid/graphics/ImageDecoder;)Z

    move-result v0

    return v0
.end method
