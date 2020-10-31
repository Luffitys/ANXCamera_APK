.class Lmiui/media/LocalWavRecorder$RecordingThread;
.super Ljava/lang/Thread;
.source "LocalWavRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/LocalWavRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/media/LocalWavRecorder;


# direct methods
.method private constructor <init>(Lmiui/media/LocalWavRecorder;)V
    .registers 2

    iput-object p1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/media/LocalWavRecorder;Lmiui/media/LocalWavRecorder$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/media/LocalWavRecorder$RecordingThread;-><init>(Lmiui/media/LocalWavRecorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v0, "WavRecorder"

    const-string v1, "RecordingThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mRecordingState:I
    invoke-static {v1}, Lmiui/media/LocalWavRecorder;->access$100(Lmiui/media/LocalWavRecorder;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mRecordingState:I
    invoke-static {v2}, Lmiui/media/LocalWavRecorder;->access$100(Lmiui/media/LocalWavRecorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v1, 0x3e9

    # invokes: Lmiui/media/LocalWavRecorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/LocalWavRecorder;->access$200(Lmiui/media/LocalWavRecorder;I)V

    return-void

    :cond_37
    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mOutputStream:Ljava/io/DataOutputStream;
    invoke-static {v1}, Lmiui/media/LocalWavRecorder;->access$300(Lmiui/media/LocalWavRecorder;)Ljava/io/DataOutputStream;

    move-result-object v1

    if-nez v1, :cond_4c

    const-string v1, "Error out put stream not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v1, 0x3ea

    # invokes: Lmiui/media/LocalWavRecorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/LocalWavRecorder;->access$200(Lmiui/media/LocalWavRecorder;I)V

    return-void

    :cond_4c
    :goto_4c
    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mRecordingState:I
    invoke-static {v1}, Lmiui/media/LocalWavRecorder;->access$100(Lmiui/media/LocalWavRecorder;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_10a

    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v1}, Lmiui/media/LocalWavRecorder;->access$500(Lmiui/media/LocalWavRecorder;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mBufferPCM:[S
    invoke-static {v4}, Lmiui/media/LocalWavRecorder;->access$400(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v4

    iget-object v5, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mBufferPCM:[S
    invoke-static {v5}, Lmiui/media/LocalWavRecorder;->access$400(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    int-to-long v5, v1

    # += operator for: Lmiui/media/LocalWavRecorder;->mCountRecordingSamples:J
    invoke-static {v4, v5, v6}, Lmiui/media/LocalWavRecorder;->access$614(Lmiui/media/LocalWavRecorder;J)J

    if-gtz v1, :cond_91

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error record sample failed, read size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v4, 0x3eb

    # invokes: Lmiui/media/LocalWavRecorder;->notifyError(I)V
    invoke-static {v2, v4}, Lmiui/media/LocalWavRecorder;->access$200(Lmiui/media/LocalWavRecorder;I)V

    goto/16 :goto_10a

    :cond_91
    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mBufferPCM:[S
    invoke-static {v4}, Lmiui/media/LocalWavRecorder;->access$400(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v5

    # invokes: Lmiui/media/LocalWavRecorder;->findMaxAmplitude([SI)I
    invoke-static {v4, v5, v1}, Lmiui/media/LocalWavRecorder;->access$800(Lmiui/media/LocalWavRecorder;[SI)I

    move-result v5

    # setter for: Lmiui/media/LocalWavRecorder;->mMaxAmplitude:I
    invoke-static {v4, v5}, Lmiui/media/LocalWavRecorder;->access$702(Lmiui/media/LocalWavRecorder;I)I

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mOutputFile:Ljava/io/File;
    invoke-static {v4}, Lmiui/media/LocalWavRecorder;->access$900(Lmiui/media/LocalWavRecorder;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_b2

    iget-object v2, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v4, 0x3f1

    # invokes: Lmiui/media/LocalWavRecorder;->notifyError(I)V
    invoke-static {v2, v4}, Lmiui/media/LocalWavRecorder;->access$200(Lmiui/media/LocalWavRecorder;I)V

    goto :goto_10a

    :cond_b2
    :try_start_b2
    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mOutputStream:Ljava/io/DataOutputStream;
    invoke-static {v4}, Lmiui/media/LocalWavRecorder;->access$300(Lmiui/media/LocalWavRecorder;)Ljava/io/DataOutputStream;

    move-result-object v4

    iget-object v5, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mBufferPCM:[S
    invoke-static {v5}, Lmiui/media/LocalWavRecorder;->access$400(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v5

    invoke-static {v5, v1}, Lmiui/media/RecorderUtils;->short2byte([SI)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    mul-int/lit8 v5, v1, 0x2

    int-to-long v5, v5

    # += operator for: Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J
    invoke-static {v4, v5, v6}, Lmiui/media/LocalWavRecorder;->access$1014(Lmiui/media/LocalWavRecorder;J)J

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J
    invoke-static {v4}, Lmiui/media/LocalWavRecorder;->access$1000(Lmiui/media/LocalWavRecorder;)J

    move-result-wide v4

    iget-object v6, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mMaxFileSize:J
    invoke-static {v6}, Lmiui/media/LocalWavRecorder;->access$1100(Lmiui/media/LocalWavRecorder;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_e5

    iget-object v2, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v4, 0x3ef

    # invokes: Lmiui/media/LocalWavRecorder;->notifyError(I)V
    invoke-static {v2, v4}, Lmiui/media/LocalWavRecorder;->access$200(Lmiui/media/LocalWavRecorder;I)V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_e4} :catch_e8

    goto :goto_10a

    :cond_e5
    nop

    goto/16 :goto_4c

    :catch_e8
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when write sample to file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # getter for: Lmiui/media/LocalWavRecorder;->mOutputFilePath:Ljava/lang/String;
    invoke-static {v5}, Lmiui/media/LocalWavRecorder;->access$1200(Lmiui/media/LocalWavRecorder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v5, 0x3ed

    # invokes: Lmiui/media/LocalWavRecorder;->notifyError(I)V
    invoke-static {v4, v5}, Lmiui/media/LocalWavRecorder;->access$200(Lmiui/media/LocalWavRecorder;I)V

    :cond_10a
    :goto_10a
    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    # setter for: Lmiui/media/LocalWavRecorder;->mMaxAmplitude:I
    invoke-static {v1, v3}, Lmiui/media/LocalWavRecorder;->access$702(Lmiui/media/LocalWavRecorder;I)I

    const-string v1, "RecordingThread stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
