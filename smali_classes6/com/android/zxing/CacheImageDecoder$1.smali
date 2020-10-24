.class Lcom/android/zxing/CacheImageDecoder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PreviewCallback;


# instance fields
.field final synthetic this$0:Lcom/android/zxing/CacheImageDecoder;


# direct methods
.method constructor <init>(Lcom/android/zxing/CacheImageDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/zxing/CacheImageDecoder$1;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 0

    iget-object p2, p0, Lcom/android/zxing/CacheImageDecoder$1;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-virtual {p2}, Lcom/android/zxing/CacheImageDecoder;->isNeedImage()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/zxing/CacheImageDecoder$1;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-virtual {p0, p1}, Lcom/android/zxing/CacheImageDecoder;->onPreviewFrame(Landroid/media/Image;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
