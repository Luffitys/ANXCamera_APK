.class public Lcom/miui/internal/graphics/gif/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field public static final MAX_DECODE_SIZE:I = 0x100000

.field protected static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_DECODE_CANCEL:I = 0x3

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field private calledOnce:Z

.field protected delay:I

.field private dest:[I

.field protected dispose:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field private height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/BufferedInputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastBitmap:Landroid/graphics/Bitmap;

.field protected lastDispose:I

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field private mCancel:Z

.field private mDecodeBmSize:J

.field private mDecodeToTheEnd:Z

.field private mDecodedFrames:I

.field private mMaxDecodeSize:J

.field private mStartFrame:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->loopCount:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->calledOnce:Z

    return-void
.end method

.method public static isGifStream(Ljava/io/InputStream;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2a

    const-string v1, ""

    const/4 v2, 0x0

    :goto_6
    const/4 v3, 0x6

    if-ge v2, v3, :cond_24

    invoke-static {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readOneByte(Ljava/io/InputStream;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    goto :goto_24

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_24
    :goto_24
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :cond_2a
    return v0
.end method

.method protected static readOneByte(Ljava/io/InputStream;)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method private requestCancel()V
    .registers 1

    return-void
.end method


# virtual methods
.method protected decodeBitmapData()V
    .registers 28

    move-object/from16 v0, p0

    const/4 v1, -0x1

    iget v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    iget v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    mul-int/2addr v2, v3

    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    if-eqz v3, :cond_f

    array-length v3, v3

    if-ge v3, v2, :cond_13

    :cond_f
    new-array v3, v2, [B

    iput-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    :cond_13
    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    const/16 v4, 0x1000

    if-nez v3, :cond_1d

    new-array v3, v4, [S

    iput-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    :cond_1d
    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    if-nez v3, :cond_25

    new-array v3, v4, [B

    iput-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    :cond_25
    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    if-nez v3, :cond_2f

    const/16 v3, 0x1001

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v3

    const/4 v5, 0x1

    shl-int v6, v5, v3

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    move v9, v1

    add-int/lit8 v10, v3, 0x1

    shl-int v11, v5, v10

    sub-int/2addr v11, v5

    const/4 v12, 0x0

    :goto_41
    const/4 v13, 0x0

    if-ge v12, v6, :cond_50

    iget-object v14, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    aput-short v13, v14, v12

    iget-object v13, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    int-to-byte v14, v12

    aput-byte v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_41

    :cond_50
    move v14, v13

    move v15, v13

    move/from16 v16, v13

    move/from16 v17, v13

    move/from16 v18, v13

    move/from16 v19, v13

    move/from16 v20, v13

    const/16 v21, 0x0

    move/from16 v4, v19

    move/from16 v5, v21

    :goto_62
    if-ge v5, v2, :cond_15d

    if-nez v16, :cond_13a

    if-ge v4, v10, :cond_8d

    if-nez v18, :cond_79

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    move-result v18

    if-gtz v18, :cond_78

    move/from16 v23, v1

    move/from16 v24, v3

    move/from16 v26, v6

    goto/16 :goto_165

    :cond_78
    const/4 v14, 0x0

    :cond_79
    move/from16 v22, v12

    iget-object v12, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v4

    add-int v20, v20, v12

    add-int/lit8 v4, v4, 0x8

    const/4 v12, 0x1

    add-int/2addr v14, v12

    add-int/lit8 v18, v18, -0x1

    move/from16 v12, v22

    goto :goto_62

    :cond_8d
    move/from16 v22, v12

    and-int v12, v20, v11

    shr-int v20, v20, v10

    sub-int/2addr v4, v10

    if-gt v12, v8, :cond_12f

    if-ne v12, v7, :cond_a2

    move/from16 v23, v1

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v6

    goto/16 :goto_137

    :cond_a2
    if-ne v12, v6, :cond_b0

    add-int/lit8 v10, v3, 0x1

    const/16 v21, 0x1

    shl-int v22, v21, v10

    add-int/lit8 v11, v22, -0x1

    add-int/lit8 v8, v6, 0x2

    move v9, v1

    goto :goto_62

    :cond_b0
    const/16 v21, 0x1

    if-ne v9, v1, :cond_cb

    move/from16 v23, v1

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v22, v16, 0x1

    move/from16 v24, v3

    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v3, v3, v12

    aput-byte v3, v1, v16

    move v9, v12

    move v13, v12

    move/from16 v16, v22

    move/from16 v1, v23

    move/from16 v3, v24

    goto :goto_62

    :cond_cb
    move/from16 v23, v1

    move/from16 v24, v3

    move v1, v12

    if-ne v12, v8, :cond_e0

    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v22, v16, 0x1

    move/from16 v25, v4

    int-to-byte v4, v13

    aput-byte v4, v3, v16

    move v3, v9

    move v12, v3

    move/from16 v16, v22

    goto :goto_e2

    :cond_e0
    move/from16 v25, v4

    :goto_e2
    if-le v12, v6, :cond_f7

    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v4, v16, 0x1

    move/from16 v22, v4

    iget-object v4, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v4, v4, v12

    aput-byte v4, v3, v16

    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    aget-short v12, v3, v12

    move/from16 v16, v22

    goto :goto_e2

    :cond_f7
    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v4, v3, v12

    and-int/lit16 v13, v4, 0xff

    const/16 v4, 0x1000

    if-lt v8, v4, :cond_107

    move/from16 v26, v6

    move/from16 v4, v25

    goto/16 :goto_165

    :cond_107
    iget-object v4, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v22, v16, 0x1

    move/from16 v26, v6

    int-to-byte v6, v13

    aput-byte v6, v4, v16

    iget-object v4, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    int-to-short v6, v9

    aput-short v6, v4, v8

    int-to-byte v4, v13

    aput-byte v4, v3, v8

    add-int/lit8 v8, v8, 0x1

    and-int v3, v8, v11

    if-nez v3, :cond_126

    const/16 v3, 0x1000

    if-ge v8, v3, :cond_128

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v8

    goto :goto_128

    :cond_126
    const/16 v3, 0x1000

    :cond_128
    :goto_128
    move v4, v1

    move v9, v4

    move/from16 v16, v22

    move/from16 v4, v25

    goto :goto_146

    :cond_12f
    move/from16 v23, v1

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v6

    :goto_137
    move/from16 v4, v25

    goto :goto_165

    :cond_13a
    move/from16 v23, v1

    move/from16 v24, v3

    move/from16 v26, v6

    move/from16 v22, v12

    const/16 v3, 0x1000

    const/16 v21, 0x1

    :goto_146
    add-int/lit8 v16, v16, -0x1

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    add-int/lit8 v6, v15, 0x1

    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    aget-byte v3, v3, v16

    aput-byte v3, v1, v15

    add-int/lit8 v5, v5, 0x1

    move v15, v6

    move/from16 v1, v23

    move/from16 v3, v24

    move/from16 v6, v26

    goto/16 :goto_62

    :cond_15d
    move/from16 v23, v1

    move/from16 v24, v3

    move/from16 v26, v6

    move/from16 v22, v12

    :goto_165
    move v1, v15

    :goto_166
    if-ge v1, v2, :cond_170

    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    const/4 v5, 0x0

    aput-byte v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_166

    :cond_170
    return-void
.end method

.method protected err()Z
    .registers 2

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(I)I
    .registers 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    if-ltz p1, :cond_17

    if-ge p1, v0, :cond_17

    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    iget v1, v1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->delay:I

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    :cond_17
    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    return v1
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    rem-int/2addr p1, v0

    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    iget-object v1, v1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getFrameCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    return v0
.end method

.method public getLoopCount()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->loopCount:I

    return v0
.end method

.method public getRealFrameCount()I
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    return v0
.end method

.method protected init()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gct:[I

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lct:[I

    return-void
.end method

.method public isDecodeToTheEnd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    return v0
.end method

.method protected read()I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    goto :goto_d

    :catch_9
    move-exception v1

    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    :goto_d
    return v0
.end method

.method public read(Ljava/io/InputStream;)I
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->calledOnce:Z

    if-nez v0, :cond_46

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->calledOnce:Z

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->init()V

    const/4 v1, 0x2

    if-eqz p1, :cond_37

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    :try_start_17
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readHeader()V

    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-nez v2, :cond_36

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readContents()V

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v2

    if-gez v2, :cond_36

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I
    :try_end_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception v0

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->recycle()V

    :cond_36
    :goto_36
    goto :goto_39

    :cond_37
    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    :goto_39
    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->recycle()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    :cond_43
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    return v0

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder cannot be called more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readBitmap()V
    .registers 8

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ix:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iy:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v3

    :goto_25
    iput-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctFlag:Z

    const/4 v1, 0x2

    and-int/lit8 v4, v0, 0x7

    shl-int/2addr v1, v4

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctSize:I

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_33

    move v1, v2

    goto :goto_34

    :cond_33
    move v1, v3

    :goto_34
    iput-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->interlace:Z

    iget-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctFlag:Z

    if-eqz v1, :cond_45

    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctSize:I

    invoke-virtual {p0, v1}, Lcom/miui/internal/graphics/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lct:[I

    iput-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    goto :goto_51

    :cond_45
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gct:[I

    iput-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgIndex:I

    iget v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    if-ne v1, v4, :cond_51

    iput v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgColor:I

    :cond_51
    :goto_51
    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    aget v1, v4, v5

    aput v3, v4, v5

    :cond_5e
    iget-object v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    if-nez v3, :cond_64

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    :cond_64
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v3

    if-eqz v3, :cond_6b

    return-void

    :cond_6b
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->decodeBitmapData()V

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v3

    if-eqz v3, :cond_78

    return-void

    :cond_78
    iget-boolean v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v3, :cond_7d

    return-void

    :cond_7d
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->setPixels()V

    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    iget v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mStartFrame:I

    if-lt v3, v4, :cond_94

    iget-object v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v4, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    iget-object v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    invoke-direct {v4, v5, v6}, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_94
    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    aput v1, v2, v3

    :cond_a3
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->resetFrame()V

    return-void
.end method

.method protected readBlock()I
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_2a

    :goto_9
    :try_start_9
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_1e

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1f

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1c

    goto :goto_1e

    :cond_1c
    add-int/2addr v1, v0

    goto :goto_9

    :cond_1e
    :goto_1e
    goto :goto_23

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_23
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_2a

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    :cond_2a
    return v1
.end method

.method protected readColorTable(I)[I
    .registers 14

    mul-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    new-array v2, v0, [B

    const/4 v3, 0x0

    :try_start_6
    iget-object v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_10

    move v3, v4

    goto :goto_14

    :catch_10
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    if-ge v3, v0, :cond_1a

    const/4 v4, 0x1

    iput v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    goto :goto_44

    :cond_1a
    const/16 v4, 0x100

    new-array v1, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_20
    if-ge v4, p1, :cond_44

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, v4, 0x1

    const/high16 v10, -0x1000000

    shl-int/lit8 v11, v5, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v6, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v7

    aput v10, v1, v4

    move v5, v8

    move v4, v9

    goto :goto_20

    :cond_44
    :goto_44
    return-object v1
.end method

.method protected readContents()V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_af

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v1

    if-nez v1, :cond_af

    iget-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v1, :cond_12

    goto/16 :goto_af

    :cond_12
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5a

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2c

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_27

    iput v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    goto/16 :goto_ad

    :cond_27
    const/4 v0, 0x1

    iput-boolean v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    goto/16 :goto_ad

    :cond_2c
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBitmap()V

    iget-object v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v2, :cond_50

    iget-wide v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeBmSize:J

    iget-object v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    iget-object v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeBmSize:J

    :cond_50
    iget-wide v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeBmSize:J

    iget-wide v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_ad

    const/4 v0, 0x1

    goto :goto_ad

    :cond_5a
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    if-eq v1, v3, :cond_a9

    const/16 v2, 0xf9

    if-eq v1, v2, :cond_a5

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_a1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_70

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    goto :goto_ad

    :cond_70
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    const-string v2, ""

    const/4 v3, 0x0

    :goto_76
    const/16 v4, 0xb

    if-ge v3, v4, :cond_91

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    :cond_91
    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readNetscapeExt()V

    goto :goto_ad

    :cond_9d
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    goto :goto_ad

    :cond_a1
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    goto :goto_ad

    :cond_a5
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readGraphicControlExt()V

    goto :goto_ad

    :cond_a9
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    nop

    :cond_ad
    :goto_ad
    goto/16 :goto_4

    :cond_af
    :goto_af
    return-void
.end method

.method protected readGraphicControlExt()V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_12

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    :cond_12
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    iput-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    if-gtz v1, :cond_28

    const/16 v1, 0x64

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    :cond_28
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    return-void
.end method

.method protected readHeader()V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, ""

    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x6

    if-ge v1, v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    return-void

    :cond_2e
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readLSD()V

    iget-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctFlag:Z

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v1

    if-nez v1, :cond_49

    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctSize:I

    invoke-virtual {p0, v1}, Lcom/miui/internal/graphics/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gct:[I

    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgIndex:I

    aget v1, v1, v2

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgColor:I

    :cond_49
    return-void
.end method

.method protected readLSD()V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctFlag:Z

    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctSize:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgIndex:I

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelAspect:I

    return-void
.end method

.method protected readNetscapeExt()V
    .registers 4

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->loopCount:I

    :cond_19
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_23

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_23
    return-void
.end method

.method protected readShort()I
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    invoke-virtual {v2}, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public requestCancelDecode()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    invoke-direct {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->requestCancel()V

    return-void
.end method

.method protected resetFrame()V
    .registers 2

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ix:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrx:I

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iy:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lry:I

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrw:I

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrh:I

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBgColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lct:[I

    return-void
.end method

.method public setMaxDecodeSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    return-void
.end method

.method protected setPixels()V
    .registers 15

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    if-nez v0, :cond_d

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    :cond_d
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-lez v0, :cond_76

    if-ne v0, v1, :cond_47

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-lez v0, :cond_3b

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    iput-object v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    const/4 v6, 0x0

    iget v10, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v11, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    move-object v4, v3

    move v7, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_3a
    goto :goto_47

    :cond_3b
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    iget v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_76

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    if-ne v0, v2, :cond_76

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    if-nez v3, :cond_56

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBgColor:I

    :cond_56
    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lry:I

    iget v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrx:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    :goto_5f
    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrh:I

    if-ge v4, v5, :cond_76

    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrw:I

    add-int/2addr v5, v3

    move v6, v3

    :goto_67
    if-ge v6, v5, :cond_70

    iget-object v7, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    aput v0, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    :cond_70
    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    add-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    :cond_76
    const/4 v0, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7b
    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    if-ge v5, v6, :cond_cf

    move v7, v5

    iget-boolean v8, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->interlace:Z

    if-eqz v8, :cond_99

    if-lt v4, v6, :cond_97

    add-int/lit8 v0, v0, 0x1

    if-eq v0, v2, :cond_96

    if-eq v0, v1, :cond_93

    const/4 v6, 0x4

    if-eq v0, v6, :cond_90

    goto :goto_97

    :cond_90
    const/4 v4, 0x1

    const/4 v3, 0x2

    goto :goto_97

    :cond_93
    const/4 v4, 0x2

    const/4 v3, 0x4

    goto :goto_97

    :cond_96
    const/4 v4, 0x4

    :cond_97
    :goto_97
    move v7, v4

    add-int/2addr v4, v3

    :cond_99
    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iy:I

    add-int/2addr v7, v6

    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    if-ge v7, v6, :cond_cc

    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    mul-int v8, v7, v6

    iget v9, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ix:I

    add-int/2addr v9, v8

    iget v10, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    add-int/2addr v10, v9

    add-int v11, v8, v6

    if-ge v11, v10, :cond_b0

    add-int v10, v8, v6

    :cond_b0
    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    mul-int/2addr v6, v5

    :goto_b3
    if-ge v9, v10, :cond_cc

    iget-object v11, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    add-int/lit8 v12, v6, 0x1

    aget-byte v6, v11, v6

    and-int/lit16 v6, v6, 0xff

    iget-object v11, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    aget v11, v11, v6

    if-eqz v11, :cond_c7

    iget-object v13, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    aput v11, v13, v9

    :cond_c7
    nop

    add-int/lit8 v9, v9, 0x1

    move v6, v12

    goto :goto_b3

    :cond_cc
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    :cond_cf
    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mStartFrame:I

    if-gt v1, v2, :cond_e4

    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_e4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_e4

    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e4
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setStartFrame(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mStartFrame:I

    return-void
.end method

.method protected skip()V
    .registers 2

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_d

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    return-void
.end method
