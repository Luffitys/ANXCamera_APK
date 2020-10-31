.class public Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;
.super Ljava/lang/Object;
.source "DecodeGifImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;,
        Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    }
.end annotation


# static fields
.field public static final MESSAGE_WHAT_DECODE_FRAMES:I = 0x1


# instance fields
.field public mDecodeFrameHandler:Landroid/os/Handler;

.field private mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;

.field public mDecodedAllFrames:Z

.field public mFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field public mGifSource:Lmiui/io/ResettableInputStream;

.field public mMaxDecodeSize:J

.field private mMaxFrames:I

.field public mRealFrameCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;)Lcom/miui/internal/graphics/gif/DecodeGifFrames;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    return-object v0
.end method

.method private calcFrameIndex(I)I
    .registers 3

    iget v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    if-nez v0, :cond_5

    return p1

    :cond_5
    rem-int v0, p1, v0

    return v0
.end method

.method public static decode(Lmiui/io/ResettableInputStream;JI)Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .registers 8

    new-instance v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    invoke-direct {v0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    :try_start_b
    invoke-virtual {p0}, Lmiui/io/ResettableInputStream;->reset()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_2d

    nop

    new-instance v2, Lcom/miui/internal/graphics/gif/GifDecoder;

    invoke-direct {v2}, Lcom/miui/internal/graphics/gif/GifDecoder;-><init>()V

    iput-object v2, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    iget-object v2, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    invoke-virtual {v2, p3}, Lcom/miui/internal/graphics/gif/GifDecoder;->setStartFrame(I)V

    invoke-virtual {v2, p1, p2}, Lcom/miui/internal/graphics/gif/GifDecoder;->setMaxDecodeSize(J)V

    invoke-virtual {v2, p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read(Ljava/io/InputStream;)I

    move-result v3

    if-nez v3, :cond_25

    const/4 v1, 0x1

    :cond_25
    iput-boolean v1, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    :try_start_27
    invoke-virtual {p0}, Lmiui/io/ResettableInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    move-exception v1

    :goto_2c
    return-object v0

    :catch_2d
    move-exception v1

    return-object v0
.end method

.method private getLastFrameIndex()I
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;

    iget v1, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mIndex:I

    return v1
.end method


# virtual methods
.method public decodeFrom(I)Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiui/io/ResettableInputStream;

    iget-wide v1, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    invoke-static {v0, v1, v2, p1}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decode(Lmiui/io/ResettableInputStream;JI)Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object v0

    return-object v0
.end method

.method public decodeNextFrames()V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxFrames:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-gt v1, v5, :cond_13

    if-gt v0, v3, :cond_11

    move v2, v4

    :cond_11
    move v1, v2

    goto :goto_18

    :cond_13
    div-int/2addr v1, v3

    if-gt v0, v1, :cond_17

    move v2, v4

    :cond_17
    move v1, v2

    :goto_18
    if-eqz v1, :cond_28

    invoke-direct {p0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->getLastFrameIndex()I

    move-result v2

    add-int/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->calcFrameIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    invoke-virtual {v3, v2}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->decode(I)V

    :cond_28
    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->destroy()V

    :cond_7
    return-void
.end method

.method public firstDecodeNextFrames()V
    .registers 5

    new-instance v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;-><init>(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeFrameHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiui/io/ResettableInputStream;

    iget-wide v2, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    invoke-static {v1, v2, v3, v0}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->createInstance(Lmiui/io/ResettableInputStream;JLandroid/os/Handler;)Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxFrames:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    return-void
.end method

.method public handleDecodeFramesResult(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z
    .registers 13

    iget-boolean v0, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7d

    iget-object v0, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    if-nez v0, :cond_a

    goto :goto_7d

    :cond_a
    iget-object v0, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v1, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    invoke-virtual {v1}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    iget-boolean v4, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v1, 0x3

    iget v4, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "Thread#%d: decoded %d frames [%s] [%d]"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dumpFrameIndex"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/miui/internal/graphics/gif/GifDecoder;->isDecodeToTheEnd()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {v0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getRealFrameCount()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    :cond_53
    invoke-virtual {v0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v2

    if-lez v2, :cond_7c

    invoke-direct {p0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->getLastFrameIndex()I

    move-result v4

    const/4 v5, 0x0

    :goto_5e
    if-ge v5, v2, :cond_7c

    invoke-virtual {v0, v5}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v5}, Lcom/miui/internal/graphics/gif/GifDecoder;->getDelay(I)I

    move-result v7

    add-int/lit8 v8, v4, 0x1

    add-int/2addr v8, v5

    invoke-direct {p0, v8}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->calcFrameIndex(I)I

    move-result v8

    iget-object v9, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    new-instance v10, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;

    invoke-direct {v10, v6, v7, v8}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    :cond_7c
    return v3

    :cond_7d
    :goto_7d
    return v1
.end method
