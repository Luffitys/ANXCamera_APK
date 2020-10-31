.class Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;
.super Landroid/os/Handler;
.source "DecodeGifImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->firstDecodeNextFrames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;->this$0:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_1b

    :cond_6
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;->this$0:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    # getter for: Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;
    invoke-static {v0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->access$000(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;)Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->getAndClearDecodeResult()Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->handleDecodeFramesResult(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;->this$0:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-virtual {v0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    :cond_1b
    :goto_1b
    return-void
.end method
