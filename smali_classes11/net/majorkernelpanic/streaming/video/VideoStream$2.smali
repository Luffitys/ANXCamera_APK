.class Lnet/majorkernelpanic/streaming/video/VideoStream$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field i:J

.field inputBuffers:[Ljava/nio/ByteBuffer;

.field now:J

.field oldnow:J

.field final synthetic this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

.field final synthetic val$convertor:Lnet/majorkernelpanic/streaming/hw/NV21Convertor;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/video/VideoStream;Lnet/majorkernelpanic/streaming/hw/NV21Convertor;)V
    .locals 2

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->val$convertor:Lnet/majorkernelpanic/streaming/hw/NV21Convertor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->now:J

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->oldnow:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->i:J

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    invoke-static {p1}, Lnet/majorkernelpanic/streaming/video/VideoStream;->access$000(Lnet/majorkernelpanic/streaming/video/VideoStream;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->inputBuffers:[Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9

    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->now:J

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->oldnow:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->now:J

    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->i:J

    const-wide/16 v2, 0x3

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->i:J

    :cond_0
    :try_start_0
    iget-object p2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    invoke-static {p2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->access$100(Lnet/majorkernelpanic/streaming/video/VideoStream;)Landroid/media/MediaCodec;

    move-result-object p2

    const-wide/32 v0, 0x7a120

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "VideoStream"

    if-ltz v3, :cond_2

    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-nez p1, :cond_1

    const-string v0, "Symptom of the \"Callback buffer was to small\" problem..."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->val$convertor:Lnet/majorkernelpanic/streaming/hw/NV21Convertor;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v3

    invoke-virtual {p2, p1, v0}, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->convert([BLjava/nio/ByteBuffer;)V

    :goto_0
    iget-object p2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    invoke-static {p2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->access$200(Lnet/majorkernelpanic/streaming/video/VideoStream;)Landroid/media/MediaCodec;

    move-result-object v2

    const/4 v4, 0x0

    iget-object p2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p2, p2, v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget-wide v6, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->now:J

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    :cond_2
    const-string v0, "No buffer available !"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-void

    :catchall_0
    move-exception p2

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    throw p2
.end method
