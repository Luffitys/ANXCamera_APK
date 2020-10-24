.class Lcom/android/zxing/CacheImageDecoder$ImageWrapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mImage:Landroid/media/Image;

.field public noGaussian:Z


# direct methods
.method public constructor <init>(Landroid/media/Image;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    iput-boolean p2, p0, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->noGaussian:Z

    return-void
.end method
