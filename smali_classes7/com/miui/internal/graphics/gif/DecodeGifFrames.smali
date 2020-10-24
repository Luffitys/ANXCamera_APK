.class Lcom/miui/internal/graphics/gif/DecodeGifFrames;
.super Landroid/os/Handler;
.source ""


# static fields
.field private static final MESSAGE_WHAT_START:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "DecodeGifFrames"


# instance fields
.field private mCallerHandler:Landroid/os/Handler;

.field mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

.field private mGifSource:Lmiui/io/ResettableInputStream;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mMaxDecodeSize:J


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;Lmiui/io/ResettableInputStream;JLandroid/os/Handler;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    iput-wide p3, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mMaxDecodeSize:J

    iput-object p2, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mGifSource:Lmiui/io/ResettableInputStream;

    iput-object p5, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mCallerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static createInstance(Lmiui/io/ResettableInputStream;JLandroid/os/Handler;)Lcom/miui/internal/graphics/gif/DecodeGifFrames;
    .locals 7

    new-instance v1, Landroid/os/HandlerThread;

    const-string v0, "handler thread to decode GIF frames"

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;-><init>(Landroid/os/HandlerThread;Lmiui/io/ResettableInputStream;JLandroid/os/Handler;)V

    return-object v6
.end method


# virtual methods
.method public decode(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    invoke-direct {v0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAndClearDecodeResult()Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mGifSource:Lmiui/io/ResettableInputStream;

    iget-wide v2, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mMaxDecodeSize:J

    invoke-static {v0, v2, v3, p1}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decode(Lmiui/io/ResettableInputStream;JI)Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    iget-object v2, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    iput-object v2, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    iget-boolean p1, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    iput-boolean p1, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    iget-object p0, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mCallerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
