.class Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;


# instance fields
.field private final STATIC_WAKEUP_BUFFER:J

.field final synthetic this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->STATIC_WAKEUP_BUFFER:J

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method public onRecordCreateError()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onConflictAudio()V

    :cond_0
    return-void
.end method

.method public onRecordRelease()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onStopAudio()V

    :cond_0
    return-void
.end method

.method public onRecording([BI)V
    .locals 11

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v0, p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;[BI)V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2502(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;I)I

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1902(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;I)I

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1702(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1802(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2602(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;J)J

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2000(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "wakeup start time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupStartTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", wakeup end time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", wakeup score:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupScore()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", wakeup pcm length:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getPcmLength()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", wakeup aec:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->isWakeupAec()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-static {p2, v2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2502(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;I)I

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v2, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupStartTime()J

    move-result-wide v4

    cmp-long p2, v2, v4

    const/16 v2, 0xa0

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v3, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-gtz p2, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    const/16 v3, 0x140

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v3, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p2

    const-string v3, "read wakeup level one end time.\n"

    invoke-interface {p2, v3}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2700(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)V

    :cond_2
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v3, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v5

    const-wide/16 v7, 0x12c

    add-long/2addr v5, v7

    cmp-long p2, v3, v5

    if-gtz p2, :cond_4

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const-string v3, "data"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput v2, p1, Landroid/os/Message;->arg1:I

    iput v1, p1, Landroid/os/Message;->arg2:I

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v0, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v2

    add-long/2addr v2, v7

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->arg2:I

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p2

    const-string v0, "read wakeup level one end time + 300ms.\n"

    invoke-interface {p2, v0}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_4
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v2, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v4

    add-long/2addr v4, v7

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getPcmLength()I

    move-result p2

    int-to-long v9, p2

    add-long/2addr v4, v9

    cmp-long p2, v2, v4

    if-lez p2, :cond_5

    return-void

    :cond_5
    :try_start_1
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p1

    int-to-long p1, p1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v2

    add-long/2addr v2, v7

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getPcmLength()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    cmp-long p1, p1, v2

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p1

    const-string p2, "read pcm data end.\n"

    invoke-interface {p1, p2}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->stopRecord()V

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p0, v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public onRecordingEnd()V
    .locals 0

    return-void
.end method

.method public onRecordingFailed()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onConflictAudio()V

    :cond_0
    return-void
.end method

.method public onRecordingStart()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onStartAudio()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object p0

    const-string v0, "w2vp"

    invoke-virtual {p0, v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->createFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
