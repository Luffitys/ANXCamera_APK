.class Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method public onRecordCreateError()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onConflictAudio()V

    :cond_0
    return-void
.end method

.method public onRecordRelease()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onStopAudio()V

    :cond_0
    return-void
.end method

.method public onRecording([BI)V
    .locals 3

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->writeFile([B)V

    :cond_0
    return-void
.end method

.method public onRecordingEnd()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->closeFile()V

    :cond_0
    return-void
.end method

.method public onRecordingFailed()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onConflictAudio()V

    :cond_0
    return-void
.end method

.method public onRecordingStart()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onStartAudio()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object p0

    const-string v0, "record"

    invoke-virtual {p0, v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->createFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
