.class Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private mCacheData:Ljava/io/ByteArrayOutputStream;

.field private mCancel:Z

.field private mMaxTime:I

.field private mRecordWorking:Z

.field public mRegisterState:I

.field final synthetic this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mMaxTime:I

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mCancel:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mRecordWorking:Z

    return-void
.end method

.method public end()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mRecordWorking:Z

    return-void
.end method

.method public run()V
    .locals 13

    const/16 v0, 0x140

    new-array v1, v0, [B

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0x3e80

    const/16 v5, 0x10

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mixRecordBufferSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mRecordSource:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$100(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VoicePrintManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/media/AudioRecord;

    iget-object v6, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$100(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)I

    move-result v8

    const/16 v9, 0x3e80

    const/16 v10, 0x10

    const/4 v11, 0x2

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v6, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/xiaomi/asr/engine/WVPListener;->onStartAudio()V

    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mRecordWorking:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    iget v6, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mMaxTime:I

    int-to-long v11, v6

    cmp-long v6, v9, v11

    if-lez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v1, v8, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v6

    if-lez v6, :cond_3

    iget-object v9, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v9}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$400(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$300(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;->voiceprintRegister(Ljava/lang/String;[B)I

    move-result v9

    iput v9, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mRegisterState:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    iget-object v8, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v8}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v8}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    invoke-static {v9, v6}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$500(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;[B)F

    move-result v6

    invoke-interface {v8, v6, v7}, Lcom/xiaomi/asr/engine/WVPListener;->onEnergyLevelAvailable(FZ)V

    goto :goto_0

    :cond_3
    if-gez v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local record error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onConflictAudio()V

    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onStopAudio()V

    :cond_5
    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mCancel:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onAbortEnrollmentComplete()V

    :cond_6
    return-void

    :cond_7
    iget v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mRegisterState:I

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$600(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_8

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0, v8}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$602(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;I)I

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$700(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)[[B

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$600(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$600(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)I

    move-result v2

    add-int/2addr v2, v7

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$602(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;I)I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0, v7, v8, v1, v8}, Lcom/xiaomi/asr/engine/WVPListener;->onEnrollmentComplete(ZZFI)V

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-interface {v0, p0, v7}, Lcom/xiaomi/asr/engine/WVPListener;->onEnrollAudioBufferAvailable([BZ)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mRegisterState:I

    invoke-interface {v0, v8, v8, v1, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onEnrollmentComplete(ZZFI)V

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-interface {v0, p0, v8}, Lcom/xiaomi/asr/engine/WVPListener;->onEnrollAudioBufferAvailable([BZ)V

    :cond_c
    :goto_3
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mRecordWorking:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->mCancel:Z

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
