.class public Lcom/android/camera/ActivityBase$SaveGaussian2File;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ActivityBase$SaveGaussian2File;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase$SaveGaussian2File;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase$SaveGaussian2File;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/android/camera/Util;->saveLastFrameGaussian2File(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
