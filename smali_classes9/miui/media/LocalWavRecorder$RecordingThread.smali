.class Lmiui/media/LocalWavRecorder$RecordingThread;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/media/LocalWavRecorder;


# direct methods
.method private constructor <init>(Lmiui/media/LocalWavRecorder;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/media/LocalWavRecorder;Lmiui/media/LocalWavRecorder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/media/LocalWavRecorder$RecordingThread;-><init>(Lmiui/media/LocalWavRecorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v0, "WavRecorder"

    const-string v1, "RecordingThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v1}, Lmiui/media/LocalWavRecorder;->access$100(Lmiui/media/LocalWavRecorder;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v2}, Lmiui/media/LocalWavRecorder;->access$100(Lmiui/media/LocalWavRecorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v0, 0x3e9

    invoke-static {p0, v0}, Lmiui/media/LocalWavRecorder;->access$200(Lmiui/media/LocalWavRecorder;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v1}, Lmiui/media/LocalWavRecorder;->access$300(Lmiui/media/LocalWavRecorder;)Ljava/io/DataOutputStream;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Error out put stream not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v0, 0x3ea

    invoke-static {p0, v0}, Lmiui/media/LocalWavRecorder;->access$200(Lmiui/media/LocalWavRecorder;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v1}, Lmiui/media/LocalWavRecorder;->access$100(Lmiui/media/LocalWavRecorder;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v1}, Lmiui/media/LocalWavRecorder;->access$500(Lmiui/media/LocalWavRecorder;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v4}, Lmiui/media/LocalWavRecorder;->access$400(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v4

    iget-object v5, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v5}, Lmiui/media/LocalWavRecorder;->access$400(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Lmiui/media/LocalWavRecorder;->access$614(Lmiui/media/LocalWavRecorder;J)J

    if-gtz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error record sample failed, read size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v2, 0x3eb

    :goto_0
    invoke-static {v1, v2}, Lmiui/media/LocalWavRecorder;->access$200(Lmiui/media/LocalWavRecorder;I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v4}, Lmiui/media/LocalWavRecorder;->access$400(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v5

    invoke-static {v4, v5, v1}, Lmiui/media/LocalWavRecorder;->access$800(Lmiui/media/LocalWavRecorder;[SI)I

    move-result v5

    invoke-static {v4, v5}, Lmiui/media/LocalWavRecorder;->access$702(Lmiui/media/LocalWavRecorder;I)I

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v4}, Lmiui/media/LocalWavRecorder;->access$900(Lmiui/media/LocalWavRecorder;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v2, 0x3f1

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v4}, Lmiui/media/LocalWavRecorder;->access$300(Lmiui/media/LocalWavRecorder;)Ljava/io/DataOutputStream;

    move-result-object v4

    iget-object v5, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v5}, Lmiui/media/LocalWavRecorder;->access$400(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v5

    invoke-static {v5, v1}, Lmiui/media/RecorderUtils;->short2byte([SI)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    mul-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Lmiui/media/LocalWavRecorder;->access$1014(Lmiui/media/LocalWavRecorder;J)J

    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v1}, Lmiui/media/LocalWavRecorder;->access$1000(Lmiui/media/LocalWavRecorder;)J

    move-result-wide v4

    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v1}, Lmiui/media/LocalWavRecorder;->access$1100(Lmiui/media/LocalWavRecorder;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v2, 0x3ef

    invoke-static {v1, v2}, Lmiui/media/LocalWavRecorder;->access$200(Lmiui/media/LocalWavRecorder;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when write sample to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {v2}, Lmiui/media/LocalWavRecorder;->access$1200(Lmiui/media/LocalWavRecorder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    const/16 v2, 0x3ed

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->this$0:Lmiui/media/LocalWavRecorder;

    invoke-static {p0, v3}, Lmiui/media/LocalWavRecorder;->access$702(Lmiui/media/LocalWavRecorder;I)I

    const-string p0, "RecordingThread stoped"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
