.class Lcom/android/camera/resource/ProgressResponseBody$1;
.super Lokio/ForwardingSource;
.source ""


# instance fields
.field contentLength:J

.field final synthetic this$0:Lcom/android/camera/resource/ProgressResponseBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/android/camera/resource/ProgressResponseBody;Lokio/Source;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->this$0:Lcom/android/camera/resource/ProgressResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->totalBytesRead:J

    iput-wide p1, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->contentLength:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->totalBytesRead:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    const-wide/16 v2, 0x0

    if-eqz p3, :cond_0

    move-wide v4, p1

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->totalBytesRead:J

    iget-wide v0, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->contentLength:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->this$0:Lcom/android/camera/resource/ProgressResponseBody;

    invoke-static {p3}, Lcom/android/camera/resource/ProgressResponseBody;->access$000(Lcom/android/camera/resource/ProgressResponseBody;)Lokhttp3/ResponseBody;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->contentLength:J

    :cond_1
    iget-object p3, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->this$0:Lcom/android/camera/resource/ProgressResponseBody;

    invoke-static {p3}, Lcom/android/camera/resource/ProgressResponseBody;->access$100(Lcom/android/camera/resource/ProgressResponseBody;)Lcom/android/camera/resource/ResponseListener;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->this$0:Lcom/android/camera/resource/ProgressResponseBody;

    invoke-static {p3}, Lcom/android/camera/resource/ProgressResponseBody;->access$100(Lcom/android/camera/resource/ProgressResponseBody;)Lcom/android/camera/resource/ResponseListener;

    move-result-object p3

    iget-wide v0, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->totalBytesRead:J

    iget-wide v2, p0, Lcom/android/camera/resource/ProgressResponseBody$1;->contentLength:J

    invoke-interface {p3, v0, v1, v2, v3}, Lcom/android/camera/resource/ResponseListener;->onResponseProgress(JJ)V

    :cond_2
    return-wide p1
.end method
