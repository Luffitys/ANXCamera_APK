.class Lnet/majorkernelpanic/streaming/video/VideoStream$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field count:J

.field i:I

.field now:J

.field oldnow:J

.field t:I

.field final synthetic this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

.field final synthetic val$lock:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/video/VideoStream;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->i:I

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->t:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->count:J

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9

    iget p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->i:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->now:J

    iget v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->i:I

    const-wide/16 v1, 0x1

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    iget v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->t:I

    int-to-long v3, v0

    iget-wide v5, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->oldnow:J

    sub-long/2addr p1, v5

    add-long/2addr v3, p1

    long-to-int p1, v3

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->t:I

    iget-wide p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->count:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->count:J

    :cond_0
    iget p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->i:I

    const/16 p2, 0x14

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    iget-object p1, p1, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    const-wide/32 v3, 0xf4240

    iget p2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->t:I

    int-to-long v5, p2

    iget-wide v7, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->count:J

    div-long/2addr v5, v7

    div-long/2addr v3, v5

    add-long/2addr v3, v1

    long-to-int p2, v3

    iput p2, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    iget-wide p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->now:J

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$5;->oldnow:J

    return-void
.end method
