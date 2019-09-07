.class public Lcom/bumptech/glide/b/e;
.super Ljava/lang/Object;
.source "StandardGifDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/b/a;


# static fields
.field private static final Fd:I = -0x1

.field private static final Gd:I = -0x1

.field private static final Hd:I = 0x4

.field private static final Jd:I = 0x0
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "e"

.field private static final Yc:I = 0xff


# instance fields
.field private Ad:Z

.field private Bd:I

.field private Cd:I

.field private Dd:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private Ed:Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private Xc:Ljava/nio/ByteBuffer;

.field private act:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private block:[B

.field private header:Lcom/bumptech/glide/b/c;

.field private parser:Lcom/bumptech/glide/b/d;

.field private pixelStack:[B

.field private prefix:[S

.field private sampleSize:I

.field private status:I

.field private suffix:[B

.field private final ud:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final vd:Lcom/bumptech/glide/b/a$a;

.field private wd:[B

.field private xd:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private yd:I

.field private zd:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->ud:[I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->Ed:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/bumptech/glide/b/e;->vd:Lcom/bumptech/glide/b/a$a;

    new-instance p1, Lcom/bumptech/glide/b/c;

    invoke-direct {p1}, Lcom/bumptech/glide/b/c;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/b/e;-><init>(Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/e;-><init>(Lcom/bumptech/glide/b/a$a;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/bumptech/glide/b/e;->a(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private Zj()Lcom/bumptech/glide/b/d;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b/e;->parser:Lcom/bumptech/glide/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/b/d;

    invoke-direct {v0}, Lcom/bumptech/glide/b/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->parser:Lcom/bumptech/glide/b/d;

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/b/e;->parser:Lcom/bumptech/glide/b/d;

    return-object p0
.end method

.method private _j()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/b/e;->Dd:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->Ed:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->vd:Lcom/bumptech/glide/b/a$a;

    iget v2, p0, Lcom/bumptech/glide/b/e;->Cd:I

    iget p0, p0, Lcom/bumptech/glide/b/e;->Bd:I

    invoke-interface {v1, v2, p0, v0}, Lcom/bumptech/glide/b/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;
    .locals 10

    iget-object v8, p0, Lcom/bumptech/glide/b/e;->xd:[I

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->zd:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/b/e;->vd:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/b/a$a;->d(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/b/e;->zd:Landroid/graphics/Bitmap;

    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x3

    if-eqz p2, :cond_2

    iget v2, p2, Lcom/bumptech/glide/b/b;->dispose:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/bumptech/glide/b/e;->zd:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    const/4 v9, 0x1

    if-eqz p2, :cond_8

    iget v2, p2, Lcom/bumptech/glide/b/b;->dispose:I

    if-lez v2, :cond_8

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    iget-boolean v1, p1, Lcom/bumptech/glide/b/b;->transparency:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget v2, v1, Lcom/bumptech/glide/b/c;->bgColor:I

    iget-object v3, p1, Lcom/bumptech/glide/b/b;->lct:[I

    if-eqz v3, :cond_3

    iget v1, v1, Lcom/bumptech/glide/b/c;->bgIndex:I

    iget v3, p1, Lcom/bumptech/glide/b/b;->transIndex:I

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/bumptech/glide/b/e;->yd:I

    if-nez v1, :cond_5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/b/e;->Dd:Ljava/lang/Boolean;

    :cond_5
    :goto_0
    iget v1, p2, Lcom/bumptech/glide/b/b;->ih:I

    iget v2, p0, Lcom/bumptech/glide/b/e;->sampleSize:I

    div-int/2addr v1, v2

    iget v3, p2, Lcom/bumptech/glide/b/b;->iy:I

    div-int/2addr v3, v2

    iget v4, p2, Lcom/bumptech/glide/b/b;->iw:I

    div-int/2addr v4, v2

    iget p2, p2, Lcom/bumptech/glide/b/b;->ix:I

    div-int/2addr p2, v2

    iget v2, p0, Lcom/bumptech/glide/b/e;->Cd:I

    mul-int/2addr v3, v2

    add-int/2addr v3, p2

    mul-int/2addr v1, v2

    add-int/2addr v1, v3

    :goto_1
    if-ge v3, v1, :cond_8

    add-int p2, v3, v4

    move v2, v3

    :goto_2
    if-ge v2, p2, :cond_6

    aput v0, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget p2, p0, Lcom/bumptech/glide/b/e;->Cd:I

    add-int/2addr v3, p2

    goto :goto_1

    :cond_7
    if-ne v2, v1, :cond_8

    iget-object v0, p0, Lcom/bumptech/glide/b/e;->zd:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    iget v6, p0, Lcom/bumptech/glide/b/e;->Cd:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/bumptech/glide/b/e;->Bd:I

    move-object v1, v8

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/e;->c(Lcom/bumptech/glide/b/b;)V

    iget-boolean p2, p1, Lcom/bumptech/glide/b/b;->interlace:Z

    if-nez p2, :cond_a

    iget p2, p0, Lcom/bumptech/glide/b/e;->sampleSize:I

    if-eq p2, v9, :cond_9

    goto :goto_3

    :cond_9
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/e;->b(Lcom/bumptech/glide/b/b;)V

    goto :goto_4

    :cond_a
    :goto_3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/e;->a(Lcom/bumptech/glide/b/b;)V

    :goto_4
    iget-boolean p2, p0, Lcom/bumptech/glide/b/e;->Ad:Z

    if-eqz p2, :cond_d

    iget p1, p1, Lcom/bumptech/glide/b/b;->dispose:I

    if-eqz p1, :cond_b

    if-ne p1, v9, :cond_d

    :cond_b
    iget-object p1, p0, Lcom/bumptech/glide/b/e;->zd:Landroid/graphics/Bitmap;

    if-nez p1, :cond_c

    invoke-direct {p0}, Lcom/bumptech/glide/b/e;->_j()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/b/e;->zd:Landroid/graphics/Bitmap;

    :cond_c
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->zd:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v6, p0, Lcom/bumptech/glide/b/e;->Cd:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/bumptech/glide/b/e;->Bd:I

    move-object v1, v8

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_d
    invoke-direct {p0}, Lcom/bumptech/glide/b/e;->_j()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x0

    iget v6, p0, Lcom/bumptech/glide/b/e;->Cd:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/bumptech/glide/b/e;->Bd:I

    move-object v0, p1

    move-object v1, v8

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/b/b;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->xd:[I

    iget v3, v1, Lcom/bumptech/glide/b/b;->ih:I

    iget v4, v0, Lcom/bumptech/glide/b/e;->sampleSize:I

    div-int/2addr v3, v4

    iget v5, v1, Lcom/bumptech/glide/b/b;->iy:I

    div-int/2addr v5, v4

    iget v6, v1, Lcom/bumptech/glide/b/b;->iw:I

    div-int/2addr v6, v4

    iget v7, v1, Lcom/bumptech/glide/b/b;->ix:I

    div-int/2addr v7, v4

    iget v4, v0, Lcom/bumptech/glide/b/e;->yd:I

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    if-nez v4, :cond_0

    move v4, v9

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget v11, v0, Lcom/bumptech/glide/b/e;->sampleSize:I

    iget v12, v0, Lcom/bumptech/glide/b/e;->Cd:I

    iget v13, v0, Lcom/bumptech/glide/b/e;->Bd:I

    iget-object v14, v0, Lcom/bumptech/glide/b/e;->wd:[B

    iget-object v15, v0, Lcom/bumptech/glide/b/e;->act:[I

    iget-object v8, v0, Lcom/bumptech/glide/b/e;->Dd:Ljava/lang/Boolean;

    const/16 v17, 0x8

    move/from16 v19, v9

    move/from16 v20, v17

    const/4 v9, 0x0

    move-object/from16 v17, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_10

    move-object/from16 v21, v10

    iget-boolean v10, v1, Lcom/bumptech/glide/b/b;->interlace:Z

    if-eqz v10, :cond_5

    const/4 v10, 0x2

    if-lt v9, v3, :cond_4

    move/from16 v23, v3

    add-int/lit8 v3, v19, 0x1

    if-eq v3, v10, :cond_3

    const/4 v10, 0x3

    if-eq v3, v10, :cond_2

    const/4 v10, 0x4

    if-eq v3, v10, :cond_1

    goto :goto_2

    :cond_1
    const/4 v9, 0x1

    const/16 v20, 0x2

    goto :goto_2

    :cond_2
    const/4 v10, 0x4

    move/from16 v20, v10

    const/4 v9, 0x2

    goto :goto_2

    :cond_3
    const/4 v10, 0x4

    move v9, v10

    goto :goto_2

    :cond_4
    move/from16 v23, v3

    move/from16 v3, v19

    :goto_2
    add-int v10, v9, v20

    move/from16 v19, v3

    goto :goto_3

    :cond_5
    move/from16 v23, v3

    move v10, v9

    move v9, v8

    :goto_3
    add-int/2addr v9, v5

    const/4 v3, 0x1

    if-ne v11, v3, :cond_6

    move/from16 v18, v3

    goto :goto_4

    :cond_6
    const/16 v18, 0x0

    :goto_4
    if-ge v9, v13, :cond_d

    mul-int/2addr v9, v12

    add-int v22, v9, v7

    add-int v3, v22, v6

    add-int/2addr v9, v12

    if-ge v9, v3, :cond_7

    move v3, v9

    :cond_7
    mul-int v9, v8, v11

    move/from16 v24, v5

    iget v5, v1, Lcom/bumptech/glide/b/b;->iw:I

    mul-int/2addr v9, v5

    if-eqz v18, :cond_a

    move/from16 v5, v22

    :goto_5
    if-ge v5, v3, :cond_e

    move/from16 v18, v6

    aget-byte v6, v14, v9

    and-int/lit16 v6, v6, 0xff

    aget v6, v15, v6

    if-eqz v6, :cond_8

    aput v6, v2, v5

    goto :goto_6

    :cond_8
    if-eqz v4, :cond_9

    if-nez v17, :cond_9

    move-object/from16 v17, v21

    :cond_9
    :goto_6
    add-int/2addr v9, v11

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v18

    goto :goto_5

    :cond_a
    move/from16 v18, v6

    sub-int v5, v3, v22

    mul-int/2addr v5, v11

    add-int/2addr v5, v9

    move/from16 v6, v22

    :goto_7
    if-ge v6, v3, :cond_f

    move/from16 v22, v3

    iget v3, v1, Lcom/bumptech/glide/b/b;->iw:I

    invoke-direct {v0, v9, v5, v3}, Lcom/bumptech/glide/b/e;->b(III)I

    move-result v3

    if-eqz v3, :cond_b

    aput v3, v2, v6

    goto :goto_8

    :cond_b
    if-eqz v4, :cond_c

    if-nez v17, :cond_c

    move-object/from16 v17, v21

    :cond_c
    :goto_8
    add-int/2addr v9, v11

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v22

    goto :goto_7

    :cond_d
    move/from16 v24, v5

    :cond_e
    move/from16 v18, v6

    :cond_f
    add-int/lit8 v8, v8, 0x1

    move v9, v10

    move/from16 v6, v18

    move-object/from16 v10, v21

    move/from16 v3, v23

    move/from16 v5, v24

    goto/16 :goto_1

    :cond_10
    iget-object v1, v0, Lcom/bumptech/glide/b/e;->Dd:Ljava/lang/Boolean;

    if-nez v1, :cond_12

    if-nez v17, :cond_11

    const/16 v16, 0x0

    goto :goto_9

    :cond_11
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move/from16 v16, v8

    :goto_9
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/b/e;->Dd:Ljava/lang/Boolean;

    :cond_12
    return-void
.end method

.method private b(III)I
    .locals 9
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    iget v7, p0, Lcom/bumptech/glide/b/e;->sampleSize:I

    add-int/2addr v7, p1

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/bumptech/glide/b/e;->wd:[B

    array-length v8, v7

    if-ge v1, v8, :cond_1

    if-ge v1, p2, :cond_1

    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/bumptech/glide/b/e;->act:[I

    aget v7, v8, v7

    if-eqz v7, :cond_0

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p1, p3

    move p3, p1

    :goto_1
    iget v1, p0, Lcom/bumptech/glide/b/e;->sampleSize:I

    add-int/2addr v1, p1

    if-ge p3, v1, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->wd:[B

    array-length v7, v1

    if-ge p3, v7, :cond_3

    if-ge p3, p2, :cond_3

    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    iget-object v7, p0, Lcom/bumptech/glide/b/e;->act:[I

    aget v1, v7, v1

    if-eqz v1, :cond_2

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    return v0

    :cond_4
    div-int/2addr v2, v6

    shl-int/lit8 p0, v2, 0x18

    div-int/2addr v3, v6

    shl-int/lit8 p1, v3, 0x10

    or-int/2addr p0, p1

    div-int/2addr v4, v6

    shl-int/lit8 p1, v4, 0x8

    or-int/2addr p0, p1

    div-int/2addr v5, v6

    or-int/2addr p0, v5

    return p0
.end method

.method private b(Lcom/bumptech/glide/b/b;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->xd:[I

    iget v3, v1, Lcom/bumptech/glide/b/b;->ih:I

    iget v4, v1, Lcom/bumptech/glide/b/b;->iy:I

    iget v5, v1, Lcom/bumptech/glide/b/b;->iw:I

    iget v6, v1, Lcom/bumptech/glide/b/b;->ix:I

    iget v7, v0, Lcom/bumptech/glide/b/e;->yd:I

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget v10, v0, Lcom/bumptech/glide/b/e;->Cd:I

    iget-object v11, v0, Lcom/bumptech/glide/b/e;->wd:[B

    iget-object v12, v0, Lcom/bumptech/glide/b/e;->act:[I

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_1
    if-ge v14, v3, :cond_5

    add-int v16, v14, v4

    mul-int v16, v16, v10

    add-int v17, v16, v6

    add-int v8, v17, v5

    add-int v9, v16, v10

    if-ge v9, v8, :cond_1

    move v8, v9

    :cond_1
    iget v9, v1, Lcom/bumptech/glide/b/b;->iw:I

    mul-int/2addr v9, v14

    move/from16 v16, v9

    move/from16 v9, v17

    :goto_2
    if-ge v9, v8, :cond_4

    aget-byte v13, v11, v16

    and-int/lit16 v1, v13, 0xff

    if-eq v1, v15, :cond_3

    aget v1, v12, v1

    if-eqz v1, :cond_2

    aput v1, v2, v9

    goto :goto_3

    :cond_2
    move v15, v13

    :cond_3
    :goto_3
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    :cond_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/bumptech/glide/b/e;->Dd:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    if-eqz v7, :cond_6

    const/4 v1, -0x1

    if-eq v15, v1, :cond_6

    const/16 v18, 0x1

    goto :goto_4

    :cond_6
    const/16 v18, 0x0

    :goto_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/b/e;->Dd:Ljava/lang/Boolean;

    return-void
.end method

.method private c(Lcom/bumptech/glide/b/b;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->Xc:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/bumptech/glide/b/b;->Pc:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget v2, v1, Lcom/bumptech/glide/b/c;->width:I

    iget v1, v1, Lcom/bumptech/glide/b/c;->height:I

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/bumptech/glide/b/b;->iw:I

    iget v1, v1, Lcom/bumptech/glide/b/b;->ih:I

    :goto_0
    mul-int/2addr v2, v1

    iget-object v1, v0, Lcom/bumptech/glide/b/e;->wd:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ge v1, v2, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/bumptech/glide/b/e;->vd:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/b/a$a;->d(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/b/e;->wd:[B

    :cond_3
    iget-object v1, v0, Lcom/bumptech/glide/b/e;->wd:[B

    iget-object v3, v0, Lcom/bumptech/glide/b/e;->prefix:[S

    const/16 v4, 0x1000

    if-nez v3, :cond_4

    new-array v3, v4, [S

    iput-object v3, v0, Lcom/bumptech/glide/b/e;->prefix:[S

    :cond_4
    iget-object v3, v0, Lcom/bumptech/glide/b/e;->prefix:[S

    iget-object v5, v0, Lcom/bumptech/glide/b/e;->suffix:[B

    if-nez v5, :cond_5

    new-array v5, v4, [B

    iput-object v5, v0, Lcom/bumptech/glide/b/e;->suffix:[B

    :cond_5
    iget-object v5, v0, Lcom/bumptech/glide/b/e;->suffix:[B

    iget-object v6, v0, Lcom/bumptech/glide/b/e;->pixelStack:[B

    if-nez v6, :cond_6

    const/16 v6, 0x1001

    new-array v6, v6, [B

    iput-object v6, v0, Lcom/bumptech/glide/b/e;->pixelStack:[B

    :cond_6
    iget-object v6, v0, Lcom/bumptech/glide/b/e;->pixelStack:[B

    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/e;->readByte()I

    move-result v7

    const/4 v8, 0x1

    shl-int v9, v8, v7

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v9, 0x2

    add-int/2addr v7, v8

    shl-int v12, v8, v7

    sub-int/2addr v12, v8

    const/4 v13, 0x0

    move v14, v13

    :goto_1
    if-ge v14, v9, :cond_7

    aput-short v13, v3, v14

    int-to-byte v15, v14

    aput-byte v15, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_7
    iget-object v14, v0, Lcom/bumptech/glide/b/e;->block:[B

    const/4 v15, -0x1

    move/from16 v26, v7

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v16, v13

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v22, v20

    move/from16 v23, v22

    move/from16 v21, v15

    :goto_2
    if-ge v13, v2, :cond_12

    if-nez v16, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/e;->readBlock()I

    move-result v16

    if-gtz v16, :cond_8

    const/4 v3, 0x3

    iput v3, v0, Lcom/bumptech/glide/b/e;->status:I

    goto/16 :goto_7

    :cond_8
    const/16 v19, 0x0

    :cond_9
    aget-byte v4, v14, v19

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v17

    add-int v18, v18, v4

    add-int/lit8 v17, v17, 0x8

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v4, v17

    move/from16 v8, v21

    move/from16 v28, v22

    move/from16 v27, v24

    move/from16 v21, v20

    move/from16 v20, v13

    move/from16 v13, v26

    :goto_3
    if-lt v4, v13, :cond_11

    and-int v15, v18, v25

    shr-int v18, v18, v13

    sub-int/2addr v4, v13

    if-ne v15, v9, :cond_a

    move v13, v7

    move/from16 v27, v11

    move/from16 v25, v12

    const/4 v8, -0x1

    const/4 v15, -0x1

    goto :goto_3

    :cond_a
    if-ne v15, v10, :cond_b

    move/from16 v17, v4

    move/from16 v26, v13

    move/from16 v13, v20

    move/from16 v20, v21

    move/from16 v24, v27

    move/from16 v22, v28

    const/16 v4, 0x1000

    const/4 v15, -0x1

    move/from16 v21, v8

    const/4 v8, 0x1

    goto :goto_2

    :cond_b
    const/4 v0, -0x1

    if-ne v8, v0, :cond_c

    aget-byte v8, v5, v15

    aput-byte v8, v1, v21

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move v8, v15

    move/from16 v28, v8

    move v15, v0

    :goto_4
    move-object/from16 v0, p0

    goto :goto_3

    :cond_c
    move/from16 v0, v27

    move/from16 v24, v4

    if-lt v15, v0, :cond_d

    move/from16 v4, v28

    int-to-byte v4, v4

    aput-byte v4, v6, v23

    add-int/lit8 v23, v23, 0x1

    move v4, v8

    goto :goto_5

    :cond_d
    move v4, v15

    :goto_5
    if-lt v4, v9, :cond_e

    aget-byte v26, v5, v4

    aput-byte v26, v6, v23

    add-int/lit8 v23, v23, 0x1

    aget-short v4, v3, v4

    goto :goto_5

    :cond_e
    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    move/from16 v26, v7

    int-to-byte v7, v4

    aput-byte v7, v1, v21

    :goto_6
    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v20, v20, 0x1

    if-lez v23, :cond_f

    add-int/lit8 v23, v23, -0x1

    aget-byte v27, v6, v23

    aput-byte v27, v1, v21

    goto :goto_6

    :cond_f
    move/from16 v27, v4

    const/16 v4, 0x1000

    if-ge v0, v4, :cond_10

    int-to-short v8, v8

    aput-short v8, v3, v0

    aput-byte v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    and-int v7, v0, v25

    if-nez v7, :cond_10

    if-ge v0, v4, :cond_10

    add-int/lit8 v13, v13, 0x1

    add-int v25, v25, v0

    :cond_10
    move v8, v15

    move/from16 v4, v24

    move/from16 v7, v26

    move/from16 v28, v27

    const/4 v15, -0x1

    move/from16 v27, v0

    goto :goto_4

    :cond_11
    move/from16 v24, v4

    move/from16 v0, v27

    move/from16 v15, v28

    move/from16 v26, v13

    move/from16 v22, v15

    move/from16 v13, v20

    move/from16 v20, v21

    move/from16 v17, v24

    const/16 v4, 0x1000

    const/4 v15, -0x1

    move/from16 v24, v0

    move/from16 v21, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_12
    :goto_7
    move/from16 v13, v20

    const/4 v0, 0x0

    invoke-static {v1, v13, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method private readBlock()I
    .locals 4

    invoke-direct {p0}, Lcom/bumptech/glide/b/e;->readByte()I

    move-result v0

    if-gtz v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->Xc:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->block:[B

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return v0
.end method

.method private readByte()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->Xc:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public F()I
    .locals 2

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget p0, p0, Lcom/bumptech/glide/b/c;->loopCount:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/2addr p0, v0

    return p0
.end method

.method public I()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->frameCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/bumptech/glide/b/e;->yd:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/b/e;->getDelay(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public N()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget p0, p0, Lcom/bumptech/glide/b/c;->loopCount:I

    return p0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", must be one of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/b/e;->Ed:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/b/e;->a(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    if-lez p3, :cond_2

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/b/e;->status:I

    iput-object p1, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    const/4 v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/b/e;->yd:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/b/e;->Xc:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/bumptech/glide/b/e;->Xc:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/bumptech/glide/b/e;->Xc:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/bumptech/glide/b/e;->Ad:Z

    iget-object p2, p1, Lcom/bumptech/glide/b/c;->frames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    iget v0, v0, Lcom/bumptech/glide/b/b;->dispose:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/bumptech/glide/b/e;->Ad:Z

    :cond_1
    iput p3, p0, Lcom/bumptech/glide/b/e;->sampleSize:I

    iget p2, p1, Lcom/bumptech/glide/b/c;->width:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/b/e;->Cd:I

    iget p2, p1, Lcom/bumptech/glide/b/c;->height:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/b/e;->Bd:I

    iget-object p2, p0, Lcom/bumptech/glide/b/e;->vd:Lcom/bumptech/glide/b/a$a;

    iget p3, p1, Lcom/bumptech/glide/b/c;->width:I

    iget p1, p1, Lcom/bumptech/glide/b/c;->height:I

    mul-int/2addr p3, p1

    invoke-interface {p2, p3}, Lcom/bumptech/glide/b/a$a;->d(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/b/e;->wd:[B

    iget-object p1, p0, Lcom/bumptech/glide/b/e;->vd:Lcom/bumptech/glide/b/a$a;

    iget p2, p0, Lcom/bumptech/glide/b/e;->Cd:I

    iget p3, p0, Lcom/bumptech/glide/b/e;->Bd:I

    mul-int/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/bumptech/glide/b/a$a;->f(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/b/e;->xd:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sample size must be >=0, not: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/b/c;[B)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/b/e;->a(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public advance()V
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/b/e;->yd:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/e;->yd:I

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->wd:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/b/e;->vd:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/b/a$a;->d([B)V

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->xd:[I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/bumptech/glide/b/e;->vd:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/b/a$a;->a([I)V

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->zd:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/bumptech/glide/b/e;->vd:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/b/a$a;->d(Landroid/graphics/Bitmap;)V

    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/b/e;->zd:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->Xc:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->Dd:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/bumptech/glide/b/e;->block:[B

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->vd:Lcom/bumptech/glide/b/a$a;

    invoke-interface {p0, v0}, Lcom/bumptech/glide/b/a$a;->d([B)V

    :cond_3
    return-void
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->Xc:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getDelay(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget v0, p0, Lcom/bumptech/glide/b/c;->frameCount:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/b/c;->frames:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/b/b;

    iget p0, p0, Lcom/bumptech/glide/b/b;->delay:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getFrameCount()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget p0, p0, Lcom/bumptech/glide/b/c;->frameCount:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget p0, p0, Lcom/bumptech/glide/b/c;->height:I

    return p0
.end method

.method public getLoopCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget p0, p0, Lcom/bumptech/glide/b/c;->loopCount:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->frameCount:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/b/e;->yd:I

    if-gez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/bumptech/glide/b/e;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/b/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget v4, v4, Lcom/bumptech/glide/b/c;->frameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bumptech/glide/b/e;->yd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v2, p0, Lcom/bumptech/glide/b/e;->status:I

    :cond_2
    iget v0, p0, Lcom/bumptech/glide/b/e;->status:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/bumptech/glide/b/e;->status:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/b/e;->status:I

    iget-object v4, p0, Lcom/bumptech/glide/b/e;->block:[B

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/bumptech/glide/b/e;->vd:Lcom/bumptech/glide/b/a$a;

    const/16 v5, 0xff

    invoke-interface {v4, v5}, Lcom/bumptech/glide/b/a$a;->d(I)[B

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/b/e;->block:[B

    :cond_4
    iget-object v4, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget-object v4, v4, Lcom/bumptech/glide/b/c;->frames:Ljava/util/List;

    iget v5, p0, Lcom/bumptech/glide/b/e;->yd:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/b/b;

    iget v5, p0, Lcom/bumptech/glide/b/e;->yd:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_5

    iget-object v6, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget-object v6, v6, Lcom/bumptech/glide/b/c;->frames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/b/b;

    goto :goto_0

    :cond_5
    move-object v5, v3

    :goto_0
    iget-object v6, v4, Lcom/bumptech/glide/b/b;->lct:[I

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/bumptech/glide/b/b;->lct:[I

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget-object v6, v6, Lcom/bumptech/glide/b/c;->gct:[I

    :goto_1
    iput-object v6, p0, Lcom/bumptech/glide/b/e;->act:[I

    iget-object v6, p0, Lcom/bumptech/glide/b/e;->act:[I

    if-nez v6, :cond_8

    sget-object v0, Lcom/bumptech/glide/b/e;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/bumptech/glide/b/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid color table found for frame #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bumptech/glide/b/e;->yd:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput v2, p0, Lcom/bumptech/glide/b/e;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_8
    :try_start_1
    iget-boolean v1, v4, Lcom/bumptech/glide/b/b;->transparency:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->act:[I

    iget-object v2, p0, Lcom/bumptech/glide/b/e;->ud:[I

    iget-object v3, p0, Lcom/bumptech/glide/b/e;->act:[I

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->ud:[I

    iput-object v1, p0, Lcom/bumptech/glide/b/e;->act:[I

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->act:[I

    iget v2, v4, Lcom/bumptech/glide/b/b;->transIndex:I

    aput v0, v1, v2

    :cond_9
    invoke-direct {p0, v4, v5}, Lcom/bumptech/glide/b/e;->a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_a
    :goto_2
    :try_start_2
    sget-object v0, Lcom/bumptech/glide/b/e;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bumptech/glide/b/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/b/e;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/b/e;->status:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    iget p0, p0, Lcom/bumptech/glide/b/c;->width:I

    return p0
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    const/16 v0, 0x4000

    if-lez p2, :cond_0

    add-int/lit16 p2, p2, 0x1000

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array p2, v0, [B

    :goto_1
    array-length v0, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {v1, p2, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/b/e;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    sget-object v0, Lcom/bumptech/glide/b/e;->TAG:Ljava/lang/String;

    const-string v1, "Error reading data from stream"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    const/4 p2, 0x2

    iput p2, p0, Lcom/bumptech/glide/b/e;->status:I

    :goto_2
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    sget-object p2, Lcom/bumptech/glide/b/e;->TAG:Ljava/lang/String;

    const-string v0, "Error closing stream"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    iget p0, p0, Lcom/bumptech/glide/b/e;->status:I

    return p0
.end method

.method public declared-synchronized read([B)I
    .locals 1
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/b/e;->Zj()Lcom/bumptech/glide/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/b/d;->setData([B)Lcom/bumptech/glide/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/b/d;->ag()Lcom/bumptech/glide/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/b/e;->header:Lcom/bumptech/glide/b/c;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/b/e;->a(Lcom/bumptech/glide/b/c;[B)V

    :cond_0
    iget p1, p0, Lcom/bumptech/glide/b/e;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public s()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/b/e;->yd:I

    return-void
.end method

.method public v()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/b/e;->yd:I

    return p0
.end method

.method public x()I
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/b/e;->Xc:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->wd:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/bumptech/glide/b/e;->xd:[I

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr v0, p0

    return v0
.end method
