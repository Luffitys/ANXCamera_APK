.class Lcom/android/camera2/MiCamera2$1;
.super Landroid/os/Handler;
.source "MiCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2;->initHelperHandler(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera2/MiCamera2;


# direct methods
.method constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2$1;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-wide/16 v3, 0x1388

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2$1;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2;->access$300(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Preview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForManually()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2$1;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2;->access$400(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v0

    const-wide/32 v5, 0xf4240

    div-long/2addr v0, v5

    cmp-long v0, v0, v3

    if-ltz v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2$1;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2;->access$400(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v0

    div-long/2addr v0, v5

    add-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera2/MiCamera2$1;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2;->access$500(Lcom/android/camera2/MiCamera2;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera2/MiCamera2$1;->this$0:Lcom/android/camera2/MiCamera2;

    const/16 p1, 0xee

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2$1;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2;->access$200(Lcom/android/camera2/MiCamera2;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->updateDeferPreviewSession(Landroid/view/Surface;)Z

    move-result p0

    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: MSG_WAITING_LOCAL_PARALLEL_SERVICE_READY updateDeferPreviewSession result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "waiting af lock timeOut"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2$1;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2;->access$100(Lcom/android/camera2/MiCamera2;)V

    :cond_5
    :goto_0
    return-void
.end method
