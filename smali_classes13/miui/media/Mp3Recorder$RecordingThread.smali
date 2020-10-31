.class Lmiui/media/Mp3Recorder$RecordingThread;
.super Ljava/lang/Thread;
.source "Mp3Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/Mp3Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/media/Mp3Recorder;


# direct methods
.method private constructor <init>(Lmiui/media/Mp3Recorder;)V
    .registers 2

    iput-object p1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v0, "Mp3Recorder"

    const-string v1, "RecordingThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x1

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    return-void

    :cond_36
    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-nez v1, :cond_49

    const-string v1, "Error out put stream not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v2}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    return-void

    :cond_49
    :goto_49
    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_189

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$500(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v4

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    int-to-long v5, v1

    # += operator for: Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J
    invoke-static {v4, v5, v6}, Lmiui/media/Mp3Recorder;->access$614(Lmiui/media/Mp3Recorder;J)J

    if-gtz v1, :cond_8d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error record sample failed, read size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v4, 0x3

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v2, v4}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto/16 :goto_189

    :cond_8d
    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v5

    # invokes: Lmiui/media/Mp3Recorder;->findMaxAmplitude([SI)I
    invoke-static {v4, v5, v1}, Lmiui/media/Mp3Recorder;->access$800(Lmiui/media/Mp3Recorder;[SI)I

    move-result v5

    # setter for: Lmiui/media/Mp3Recorder;->mMaxAmplitude:I
    invoke-static {v4, v5}, Lmiui/media/Mp3Recorder;->access$702(Lmiui/media/Mp3Recorder;I)I

    const/4 v4, 0x0

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mAudioChannel:I
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$900(Lmiui/media/Mp3Recorder;)I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_ca

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;

    move-result-object v6

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v7

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v8

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v10

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v5

    array-length v11, v5

    move v9, v1

    invoke-virtual/range {v6 .. v11}, Lmiui/media/Mp3Encoder;->encode([S[SI[BI)I

    move-result v4

    goto :goto_ef

    :cond_ca
    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;

    move-result-object v5

    iget-object v6, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v6}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v6

    iget-object v7, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mChannelCount:I
    invoke-static {v7}, Lmiui/media/Mp3Recorder;->access$1200(Lmiui/media/Mp3Recorder;)I

    move-result v7

    div-int v7, v1, v7

    iget-object v8, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v8}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v8

    iget-object v9, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v9}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lmiui/media/Mp3Encoder;->encodeInterleaved([SI[BI)I

    move-result v4

    :goto_ef
    if-gtz v4, :cond_125

    if-nez v4, :cond_fa

    const-string v3, "Not a complete frame samples to encode: skiped"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    :cond_fa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encode PCM failed, encode size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " read size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$1300(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v2

    if-eqz v2, :cond_189

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v5, 0x4

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v2, v5}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto :goto_189

    :cond_125
    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$1400(Lmiui/media/Mp3Recorder;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_139

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/16 v5, 0x8

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v2, v5}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto :goto_189

    :cond_139
    :try_start_139
    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v5

    iget-object v6, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v6}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v6

    invoke-virtual {v5, v6, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    int-to-long v6, v4

    # += operator for: Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J
    invoke-static {v5, v6, v7}, Lmiui/media/Mp3Recorder;->access$1514(Lmiui/media/Mp3Recorder;J)J

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$1500(Lmiui/media/Mp3Recorder;)J

    move-result-wide v5

    iget-object v7, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mMaxFileSize:J
    invoke-static {v7}, Lmiui/media/Mp3Recorder;->access$1600(Lmiui/media/Mp3Recorder;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_165

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v5, 0x7

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v2, v5}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_164} :catch_168

    goto :goto_189

    :cond_165
    nop

    goto/16 :goto_49

    :catch_168
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when write sample to file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;
    invoke-static {v6}, Lmiui/media/Mp3Recorder;->access$1700(Lmiui/media/Mp3Recorder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v6, 0x5

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v5, v6}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    :cond_189
    :goto_189
    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # setter for: Lmiui/media/Mp3Recorder;->mMaxAmplitude:I
    invoke-static {v1, v3}, Lmiui/media/Mp3Recorder;->access$702(Lmiui/media/Mp3Recorder;I)I

    const-string v1, "RecordingThread stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
