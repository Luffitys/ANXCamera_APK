.class Landroid/hardware/camera2/legacy/GLThreadManager$1;
.super Ljava/lang/Object;
.source "GLThreadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/GLThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private mConfigured:Z

.field private mDroppingFrames:Z

.field final synthetic this$0:Landroid/hardware/camera2/legacy/GLThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/GLThreadManager;)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_ad

    if-eq v0, v1, :cond_80

    const/4 v2, 0x2

    if-eq v0, v2, :cond_51

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_43

    const/4 v2, 0x4

    if-eq v0, v2, :cond_40

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3d

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on GLThread."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    :cond_3d
    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    goto :goto_ae

    :cond_40
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    goto :goto_ae

    :cond_43
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->cleanupEGLContext()V

    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    goto :goto_ae

    :cond_51
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ignoring frame."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    :cond_61
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    if-nez v0, :cond_70

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Dropping frame, EGL context not configured!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$100(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->drawIntoSurfaces(Landroid/hardware/camera2/legacy/CaptureCollector;)V

    goto :goto_ae

    :cond_80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->cleanupEGLContext()V

    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    move-result-object v2

    iget-object v3, v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureSurfaces(Ljava/util/Collection;)V

    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    iget-object v3, v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->collector:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/legacy/CaptureCollector;

    # setter for: Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v2, v3}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$102(Landroid/hardware/camera2/legacy/GLThreadManager;Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CaptureCollector;

    iget-object v2, v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_ac} :catch_af

    goto :goto_ae

    :cond_ad
    nop

    :goto_ae
    goto :goto_c4

    :catch_af
    move-exception v0

    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received exception on GL render thread: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/GLThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->access$300(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    :goto_c4
    return v1
.end method
