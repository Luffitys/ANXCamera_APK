.class Lcom/android/gallery3d/ui/GLThread$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/GLThread;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/GLThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/ui/GLThread$2;->this$0:Lcom/android/gallery3d/ui/GLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLThread$2;->this$0:Lcom/android/gallery3d/ui/GLThread;

    invoke-static {v0}, Lcom/android/gallery3d/ui/GLThread;->access$100(Lcom/android/gallery3d/ui/GLThread;)Lcom/android/gallery3d/ui/EglOffscreenSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->releaseEglSurface()V

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLThread$2;->this$0:Lcom/android/gallery3d/ui/GLThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/GLThread;->access$102(Lcom/android/gallery3d/ui/GLThread;Lcom/android/gallery3d/ui/EglOffscreenSurface;)Lcom/android/gallery3d/ui/EglOffscreenSurface;

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLThread$2;->this$0:Lcom/android/gallery3d/ui/GLThread;

    invoke-static {v0}, Lcom/android/gallery3d/ui/GLThread;->access$000(Lcom/android/gallery3d/ui/GLThread;)Lcom/xiaomi/camera/liveshot/gles/EglCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->release()V

    iget-object p0, p0, Lcom/android/gallery3d/ui/GLThread$2;->this$0:Lcom/android/gallery3d/ui/GLThread;

    invoke-static {p0, v1}, Lcom/android/gallery3d/ui/GLThread;->access$002(Lcom/android/gallery3d/ui/GLThread;Lcom/xiaomi/camera/liveshot/gles/EglCore;)Lcom/xiaomi/camera/liveshot/gles/EglCore;

    const-string p0, "GLThread"

    const-string v0, "mEglOffscreenSurface and mEglCore release done"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
