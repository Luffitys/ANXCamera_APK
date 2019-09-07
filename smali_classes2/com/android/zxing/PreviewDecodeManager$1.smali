.class Lcom/android/zxing/PreviewDecodeManager$1;
.super Ljava/lang/Object;
.source "PreviewDecodeManager.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/PreviewDecodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/PreviewDecodeManager;


# direct methods
.method constructor <init>(Lcom/android/zxing/PreviewDecodeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/zxing/PreviewDecodeManager$1;->this$0:Lcom/android/zxing/PreviewDecodeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager$1;->this$0:Lcom/android/zxing/PreviewDecodeManager;

    invoke-static {p0}, Lcom/android/zxing/PreviewDecodeManager;->access$000(Lcom/android/zxing/PreviewDecodeManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/zxing/Decoder;

    invoke-virtual {p2}, Lcom/android/zxing/Decoder;->needPreviewFrame()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/zxing/Decoder;->isNeedImage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/android/zxing/Decoder;->onPreviewFrame(Landroid/media/Image;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/zxing/PreviewImage;

    invoke-direct {v0, p1, p3}, Lcom/android/zxing/PreviewImage;-><init>(Landroid/media/Image;I)V

    invoke-virtual {p2, v0}, Lcom/android/zxing/Decoder;->onPreviewFrame(Lcom/android/zxing/PreviewImage;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
