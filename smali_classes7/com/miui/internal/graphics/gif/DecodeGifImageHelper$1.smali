.class Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;->this$0:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;->this$0:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-static {p1}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->access$000(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;)Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->getAndClearDecodeResult()Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->handleDecodeFramesResult(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;->this$0:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    :cond_1
    :goto_0
    return-void
.end method
