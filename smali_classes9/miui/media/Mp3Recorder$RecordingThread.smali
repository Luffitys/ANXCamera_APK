.class Lmiui/media/Mp3Recorder$RecordingThread;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/media/Mp3Recorder;


# direct methods
.method private constructor <init>(Lmiui/media/Mp3Recorder;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v0, "Mp3Recorder"

    const-string v1, "RecordingThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Error out put stream not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {p0, v2}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$500(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v4

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Lmiui/media/Mp3Recorder;->access$614(Lmiui/media/Mp3Recorder;J)J

    if-gtz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error record sample failed, read size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v2, 0x3

    :goto_1
    invoke-static {v1, v2}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto/16 :goto_3

    :cond_2
    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v5

    invoke-static {v4, v5, v1}, Lmiui/media/Mp3Recorder;->access$800(Lmiui/media/Mp3Recorder;[SI)I

    move-result v5

    invoke-static {v4, v5}, Lmiui/media/Mp3Recorder;->access$702(Lmiui/media/Mp3Recorder;I)I

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$900(Lmiui/media/Mp3Recorder;)I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;

    move-result-object v6

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v7

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v8

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v10

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v4

    array-length v11, v4

    move v9, v1

    invoke-virtual/range {v6 .. v11}, Lmiui/media/Mp3Encoder;->encode([S[SI[BI)I

    move-result v4

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;

    move-result-object v4

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v5

    iget-object v6, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v6}, Lmiui/media/Mp3Recorder;->access$1200(Lmiui/media/Mp3Recorder;)I

    move-result v6

    div-int v6, v1, v6

    iget-object v7, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v7}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v7

    iget-object v8, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v8}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lmiui/media/Mp3Encoder;->encodeInterleaved([SI[BI)I

    move-result v4

    :goto_2
    if-gtz v4, :cond_5

    if-nez v4, :cond_4

    const-string v1, "Not a complete frame samples to encode: skiped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encode PCM failed, encode size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " read size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1300(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v2, 0x4

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1400(Lmiui/media/Mp3Recorder;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/16 v2, 0x8

    goto/16 :goto_1

    :cond_6
    :try_start_0
    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v1

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)[B

    move-result-object v5

    invoke-virtual {v1, v5, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    int-to-long v4, v4

    invoke-static {v1, v4, v5}, Lmiui/media/Mp3Recorder;->access$1514(Lmiui/media/Mp3Recorder;J)J

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1500(Lmiui/media/Mp3Recorder;)J

    move-result-wide v4

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1600(Lmiui/media/Mp3Recorder;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when write sample to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$1700(Lmiui/media/Mp3Recorder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v2, 0x5

    goto/16 :goto_1

    :cond_7
    :goto_3
    iget-object p0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-static {p0, v3}, Lmiui/media/Mp3Recorder;->access$702(Lmiui/media/Mp3Recorder;I)I

    const-string p0, "RecordingThread stoped"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
