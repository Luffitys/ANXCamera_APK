.class Lcom/android/zxing/CacheImageDecoder$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field final synthetic this$0:Lcom/android/zxing/CacheImageDecoder;


# direct methods
.method constructor <init>(Lcom/android/zxing/CacheImageDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/zxing/CacheImageDecoder$2;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 4

    iget-object p0, p0, Lcom/android/zxing/CacheImageDecoder$2;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-static {p0}, Lcom/android/zxing/CacheImageDecoder;->access$000(Lcom/android/zxing/CacheImageDecoder;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;->onFrameThumbnailSuccess(J)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;->onFrameThumbnailFail()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/zxing/CacheImageDecoder$2;->accept(Ljava/lang/Long;)V

    return-void
.end method
