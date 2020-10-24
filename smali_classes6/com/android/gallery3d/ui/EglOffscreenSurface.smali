.class public Lcom/android/gallery3d/ui/EglOffscreenSurface;
.super Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;
.source ""


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/liveshot/gles/EglCore;II)V
    .locals 0
    .param p1    # Lcom/xiaomi/camera/liveshot/gles/EglCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;-><init>(Lcom/xiaomi/camera/liveshot/gles/EglCore;)V

    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    iput p2, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mWidth:I

    iput p3, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mHeight:I

    return-void
.end method
