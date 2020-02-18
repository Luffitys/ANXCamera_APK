.class Lcom/android/camera/module/impl/component/MiLiveRecorder$1;
.super Ljava/lang/Object;
.source "MiLiveRecorder.java"

# interfaces
.implements Lcom/xiaomi/recordmediaprocess/EffectCameraNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/MiLiveRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/MiLiveRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNeedStopRecording()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1400(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnNeedStopRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1400(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/impl/component/y;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/y;-><init>(Lcom/android/camera/module/impl/component/MiLiveRecorder$1;)V

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

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1300(Lcom/android/camera/module/impl/component/MiLiveRecorder;I)V

    return-void
.end method

.method public OnRecordFinish(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OnRecordFinish(Ljava/lang/String;JJ)V
    .locals 9

    const-wide/16 v0, 0x1f4

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recording time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", it\'s too short"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
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

    :goto_0
    iget-object p4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p4}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnRecordFinish path = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", nextPos = "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", count = "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1100(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", segments = "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1100(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1200(Lcom/android/camera/module/impl/component/MiLiveRecorder;)I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1300(Lcom/android/camera/module/impl/component/MiLiveRecorder;I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1200(Lcom/android/camera/module/impl/component/MiLiveRecorder;)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1100(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1300(Lcom/android/camera/module/impl/component/MiLiveRecorder;I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1300(Lcom/android/camera/module/impl/component/MiLiveRecorder;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic sf()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->stopRecording()V

    return-void
.end method
