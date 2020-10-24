.class Lcom/android/gallery3d/ui/GLThread$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/GLThread;

.field final synthetic val$sharedContext:Landroid/opengl/EGLContext;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/GLThread;Landroid/opengl/EGLContext;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/ui/GLThread$1;->this$0:Lcom/android/gallery3d/ui/GLThread;

    iput-object p2, p0, Lcom/android/gallery3d/ui/GLThread$1;->val$sharedContext:Landroid/opengl/EGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLThread$1;->this$0:Lcom/android/gallery3d/ui/GLThread;

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    const-string v2, "new egl Instance"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLThread$1;->this$0:Lcom/android/gallery3d/ui/GLThread;

    new-instance v2, Lcom/xiaomi/camera/liveshot/gles/EglCore;

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLThread$1;->val$sharedContext:Landroid/opengl/EGLContext;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/camera/liveshot/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/GLThread;->access$002(Lcom/android/gallery3d/ui/GLThread;Lcom/xiaomi/camera/liveshot/gles/EglCore;)Lcom/xiaomi/camera/liveshot/gles/EglCore;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLThread$1;->this$0:Lcom/android/gallery3d/ui/GLThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object p0, p0, Lcom/android/gallery3d/ui/GLThread$1;->this$0:Lcom/android/gallery3d/ui/GLThread;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLThread;->onGLThreadPrepared()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
