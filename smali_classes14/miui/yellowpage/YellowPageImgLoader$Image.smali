.class public Lmiui/yellowpage/YellowPageImgLoader$Image;
.super Ljava/lang/Object;
.source "YellowPageImgLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageImgLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;,
        Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;
    }
.end annotation


# instance fields
.field private mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

.field private mImageProcesser:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    sget-object v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->JPG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    iput-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Lmiui/yellowpage/YellowPageImgLoader$Image;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    iget-object v1, v0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getFormat()Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lmiui/util/HashUtils;->getSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mImageProcesser:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;->processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_9
    return-object p1
.end method

.method public setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mImageProcesser:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;

    return-void
.end method
