.class public Lcom/bumptech/glide/b/d;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GifHeaderParser"

.field private static final Yc:I = 0xff

.field private static final Zc:I = 0x2c

.field private static final _c:I = 0x21

.field private static final ad:I = 0x3b

.field private static final bd:I = 0xf9

.field private static final cd:I = 0xff

.field private static final dd:I = 0xfe

.field private static final ed:I = 0x1

.field private static final gd:I = 0x1c

.field private static final hd:I = 0x2

.field private static final jd:I = 0x1

.field private static final kd:I = 0x80

.field private static final ld:I = 0x40

.field private static final md:I = 0x7

.field private static final nd:I = 0x80

.field private static final od:I = 0x7

.field static final pd:I = 0x2

.field static final rd:I = 0xa

.field private static final td:I = 0x100


# instance fields
.field private Xc:Ljava/nio/ByteBuffer;

.field private final block:[B

.field private blockSize:I

.field private header:Lcom/bumptech/glide/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/b/d;->block:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/b/d;->blockSize:I

    return-void
.end method

.method private M(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v1, :cond_a

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->err()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->frameCount:I

    if-gt v2, p1, :cond_a

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iput v4, v2, Lcom/bumptech/glide/b/c;->status:I

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v3, v2, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    if-nez v3, :cond_2

    new-instance v3, Lcom/bumptech/glide/b/b;

    invoke-direct {v3}, Lcom/bumptech/glide/b/b;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readBitmap()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    move-result v2

    if-eq v2, v4, :cond_9

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->skip()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readBlock()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v0

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/bumptech/glide/b/d;->block:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readNetscapeExt()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->skip()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->skip()V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    new-instance v3, Lcom/bumptech/glide/b/b;

    invoke-direct {v3}, Lcom/bumptech/glide/b/b;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readGraphicControlExt()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->skip()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private Yj()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->skip()V

    return-void
.end method

.method private err()Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget p0, p0, Lcom/bumptech/glide/b/c;->status:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private read()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/b/c;->status:I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readBitmap()V
    .locals 8

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/b;->ix:I

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/b;->iy:I

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/b;->iw:I

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/b;->ih:I

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v5, v5, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, v5, Lcom/bumptech/glide/b/b;->interlace:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    invoke-direct {p0, v4}, Lcom/bumptech/glide/b/d;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/b/b;->lct:[I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bumptech/glide/b/b;->lct:[I

    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    iget-object v1, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/b;->Pc:I

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->Yj()V

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->err()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget v0, p0, Lcom/bumptech/glide/b/c;->frameCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/bumptech/glide/b/c;->frameCount:I

    iget-object v0, p0, Lcom/bumptech/glide/b/c;->frames:Ljava/util/List;

    iget-object p0, p0, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readBlock()V
    .locals 6

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/b/d;->blockSize:I

    iget v0, p0, Lcom/bumptech/glide/b/d;->blockSize:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/bumptech/glide/b/d;->blockSize:I

    if-ge v0, v2, :cond_1

    iget v1, p0, Lcom/bumptech/glide/b/d;->blockSize:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/bumptech/glide/b/d;->block:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "GifHeaderParser"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Reading Block n: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " count: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blockSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/b/d;->blockSize:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/b/c;->status:I

    :cond_1
    return-void
.end method

.method private readColorTable(I)[I
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    move v2, v7

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GifHeaderParser"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Format Error Reading Color Table"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    const/4 p1, 0x1

    iput p1, p0, Lcom/bumptech/glide/b/c;->status:I

    :cond_1
    return-object v1
.end method

.method private readContents()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/bumptech/glide/b/d;->M(I)V

    return-void
.end method

.method private readGraphicControlExt()V
    .locals 5

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v1, v1, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/b/b;->dispose:I

    iget v2, v1, Lcom/bumptech/glide/b/b;->dispose:I

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iput v4, v1, Lcom/bumptech/glide/b/b;->dispose:I

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v1, v1, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v1, Lcom/bumptech/glide/b/b;->transparency:Z

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readShort()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_2

    move v0, v1

    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v2, v2, Lcom/bumptech/glide/b/c;->Uc:Lcom/bumptech/glide/b/b;

    mul-int/2addr v0, v1

    iput v0, v2, Lcom/bumptech/glide/b/b;->delay:I

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    move-result v0

    iput v0, v2, Lcom/bumptech/glide/b/b;->transIndex:I

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    return-void
.end method

.method private readHeader()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/b/c;->status:I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readLSD()V

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-boolean v0, v0, Lcom/bumptech/glide/b/c;->gctFlag:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->err()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget v1, v0, Lcom/bumptech/glide/b/c;->gctSize:I

    invoke-direct {p0, v1}, Lcom/bumptech/glide/b/d;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/b/c;->gct:[I

    iget-object p0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget-object v0, p0, Lcom/bumptech/glide/b/c;->gct:[I

    iget v1, p0, Lcom/bumptech/glide/b/c;->bgIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/c;->bgColor:I

    :cond_2
    return-void
.end method

.method private readLSD()V
    .locals 6

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/c;->width:I

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readShort()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/c;->height:I

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/bumptech/glide/b/c;->gctFlag:Z

    iget-object v1, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    int-to-double v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/bumptech/glide/b/c;->gctSize:I

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/c;->bgIndex:I

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    move-result p0

    iput p0, v0, Lcom/bumptech/glide/b/c;->pixelAspect:I

    return-void
.end method

.method private readNetscapeExt()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readBlock()V

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/bumptech/glide/b/c;->loopCount:I

    :cond_1
    iget v0, p0, Lcom/bumptech/glide/b/d;->blockSize:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->block:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcom/bumptech/glide/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/b/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iput v1, p0, Lcom/bumptech/glide/b/d;->blockSize:I

    return-void
.end method

.method private skip()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->read()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method


# virtual methods
.method public ag()Lcom/bumptech/glide/b/c;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readHeader()V

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->err()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readContents()V

    iget-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget v1, v0, Lcom/bumptech/glide/b/c;->frameCount:I

    if-gez v1, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/b/c;->status:I

    :cond_1
    iget-object p0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setData() before parseHeader()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    return-void
.end method

.method public isAnimated()Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->readHeader()V

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->err()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/bumptech/glide/b/d;->M(I)V

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    iget p0, p0, Lcom/bumptech/glide/b/c;->frameCount:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setData(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/b/d;
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->reset()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public setData([B)Lcom/bumptech/glide/b/d;
    .locals 1
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b/d;->setData(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/b/d;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/b/d;->Xc:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/bumptech/glide/b/d;->header:Lcom/bumptech/glide/b/c;

    const/4 v0, 0x2

    iput v0, p1, Lcom/bumptech/glide/b/c;->status:I

    :goto_0
    return-object p0
.end method
