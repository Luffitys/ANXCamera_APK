.class Lcom/android/camera/module/impl/component/MiLiveRecorder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/recordmediaprocess/EffectCameraNotifier;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/MiLiveRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic OooO00o()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1600(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1600(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;->onRecordingTimeFinish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public OnNeedStopRecording()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1500(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnNeedStopRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1500(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/impl/component/OooOooO;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/OooOooO;-><init>(Lcom/android/camera/module/impl/component/MiLiveRecorder$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnNeedStopRecording fail~"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public OnNotifyRender()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnNotifyRender"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnRecordFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnRecordFailed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1100(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1300(Lcom/android/camera/module/impl/component/MiLiveRecorder;I)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1400(Lcom/android/camera/module/impl/component/MiLiveRecorder;)V

    return-void
.end method

.method public OnRecordFinish(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OnRecordFinish(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1100(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/util/Stack;

    move-result-object v0

    new-instance v8, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1000(Lcom/android/camera/module/impl/component/MiLiveRecorder;)F

    move-result v7

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;-><init>(Ljava/lang/String;JJF)V

    invoke-virtual {v0, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1100(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/util/Stack;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide p1

    const-wide/16 v0, 0x1f4

    cmp-long p1, p1, v0

    const/4 p2, 0x5

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1200(Lcom/android/camera/module/impl/component/MiLiveRecorder;)I

    move-result p1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "recording time = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", it\'s too short"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->OnRecordFailed()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "OnRecordFinish segments = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p4}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1100(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/util/Stack;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Stack;->toArray()[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1200(Lcom/android/camera/module/impl/component/MiLiveRecorder;)I

    move-result p1

    const/4 p3, 0x6

    if-ne p1, p3, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    const/4 p1, 0x3

    :goto_0
    invoke-static {p0, p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1300(Lcom/android/camera/module/impl/component/MiLiveRecorder;I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1200(Lcom/android/camera/module/impl/component/MiLiveRecorder;)I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->OooO00o()V

    return-void
.end method
