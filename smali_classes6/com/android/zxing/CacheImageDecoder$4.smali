.class Lcom/android/zxing/CacheImageDecoder$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field final synthetic this$0:Lcom/android/zxing/CacheImageDecoder;


# direct methods
.method constructor <init>(Lcom/android/zxing/CacheImageDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/zxing/CacheImageDecoder$4;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/zxing/CacheImageDecoder$FrameInfo;)Lcom/android/zxing/CacheImageDecoder$FrameInfo;
    .locals 2

    iget-object p0, p0, Lcom/android/zxing/CacheImageDecoder$4;->this$0:Lcom/android/zxing/CacheImageDecoder;

    iget-wide v0, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mTimestamp:J

    invoke-static {p0, v0, v1}, Lcom/android/zxing/CacheImageDecoder;->access$200(Lcom/android/zxing/CacheImageDecoder;J)Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->setImage(Lcom/android/zxing/CacheImageDecoder$ImageWrapper;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;

    invoke-virtual {p0, p1}, Lcom/android/zxing/CacheImageDecoder$4;->apply(Lcom/android/zxing/CacheImageDecoder$FrameInfo;)Lcom/android/zxing/CacheImageDecoder$FrameInfo;

    move-result-object p0

    return-object p0
.end method
