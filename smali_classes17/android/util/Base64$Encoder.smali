.class Landroid/util/Base64$Encoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/util/Base64;

    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_14

    sput-object v1, Landroid/util/Base64$Encoder;->ENCODE:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_38

    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    nop

    :array_14
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_38
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 6

    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    iput-object p2, p0, Landroid/util/Base64$Encoder;->output:[B

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    iput-boolean v2, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_28

    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE:[B

    goto :goto_2a

    :cond_28
    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    :goto_2a
    iput-object v0, p0, Landroid/util/Base64$Encoder;->alphabet:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/Base64$Encoder;->tail:[B

    iput v1, p0, Landroid/util/Base64$Encoder;->tailLen:I

    iget-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_3a

    const/16 v0, 0x13

    goto :goto_3b

    :cond_3a
    const/4 v0, -0x1

    :goto_3b
    iput v0, p0, Landroid/util/Base64$Encoder;->count:I

    return-void
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3

    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/Base64$Encoder;->alphabet:[B

    iget-object v2, v0, Landroid/util/Base64$Encoder;->output:[B

    const/4 v3, 0x0

    iget v4, v0, Landroid/util/Base64$Encoder;->count:I

    move/from16 v5, p2

    add-int v6, p3, p2

    const/4 v7, -0x1

    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v8, v11, :cond_37

    if-eq v8, v10, :cond_18

    goto :goto_57

    :cond_18
    add-int/lit8 v8, v5, 0x1

    if-gt v8, v6, :cond_57

    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v12, v8, v9

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    aget-byte v8, v8, v11

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v12

    add-int/lit8 v12, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v7, v8, v5

    iput v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    move v5, v12

    goto :goto_57

    :cond_37
    add-int/lit8 v8, v5, 0x2

    if-gt v8, v6, :cond_57

    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v12, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v8

    add-int/lit8 v8, v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int v7, v5, v12

    iput v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    move v5, v8

    :cond_57
    :goto_57
    const/4 v8, -0x1

    const/16 v9, 0xd

    const/16 v12, 0xa

    if-eq v7, v8, :cond_98

    add-int/lit8 v8, v3, 0x1

    shr-int/lit8 v13, v7, 0x12

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v1, v13

    aput-byte v13, v2, v3

    add-int/lit8 v3, v8, 0x1

    shr-int/lit8 v13, v7, 0xc

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v1, v13

    aput-byte v13, v2, v8

    add-int/lit8 v8, v3, 0x1

    shr-int/lit8 v13, v7, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v1, v13

    aput-byte v13, v2, v3

    add-int/lit8 v3, v8, 0x1

    and-int/lit8 v13, v7, 0x3f

    aget-byte v13, v1, v13

    aput-byte v13, v2, v8

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_98

    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_91

    add-int/lit8 v8, v3, 0x1

    aput-byte v9, v2, v3

    move v3, v8

    :cond_91
    add-int/lit8 v8, v3, 0x1

    aput-byte v12, v2, v3

    const/16 v4, 0x13

    move v3, v8

    :cond_98
    :goto_98
    add-int/lit8 v8, v5, 0x3

    if-gt v8, v6, :cond_f0

    aget-byte v8, p1, v5

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v13, v5, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v8, v13

    add-int/lit8 v13, v5, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    or-int v7, v8, v13

    shr-int/lit8 v8, v7, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v3

    add-int/lit8 v8, v3, 0x1

    shr-int/lit8 v13, v7, 0xc

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v1, v13

    aput-byte v13, v2, v8

    add-int/lit8 v8, v3, 0x2

    shr-int/lit8 v13, v7, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v1, v13

    aput-byte v13, v2, v8

    add-int/lit8 v8, v3, 0x3

    and-int/lit8 v13, v7, 0x3f

    aget-byte v13, v1, v13

    aput-byte v13, v2, v8

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_98

    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_e8

    add-int/lit8 v8, v3, 0x1

    aput-byte v9, v2, v3

    move v3, v8

    :cond_e8
    add-int/lit8 v8, v3, 0x1

    aput-byte v12, v2, v3

    const/16 v4, 0x13

    move v3, v8

    goto :goto_98

    :cond_f0
    if-eqz p4, :cond_1da

    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v13, v5, v8

    add-int/lit8 v14, v6, -0x1

    const/16 v15, 0x3d

    if-ne v13, v14, :cond_14b

    const/4 v10, 0x0

    if-lez v8, :cond_107

    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v13, v10, 0x1

    aget-byte v8, v8, v10

    move v10, v13

    goto :goto_110

    :cond_107
    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p1, v5

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v17

    :goto_110
    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v7, v8, 0x4

    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v8, v10

    iput v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v8, v3, 0x1

    shr-int/lit8 v13, v7, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v1, v13

    aput-byte v13, v2, v3

    add-int/lit8 v3, v8, 0x1

    and-int/lit8 v13, v7, 0x3f

    aget-byte v13, v1, v13

    aput-byte v13, v2, v8

    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v8, :cond_137

    add-int/lit8 v8, v3, 0x1

    aput-byte v15, v2, v3

    add-int/lit8 v3, v8, 0x1

    aput-byte v15, v2, v8

    :cond_137
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v8, :cond_149

    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_144

    add-int/lit8 v8, v3, 0x1

    aput-byte v9, v2, v3

    move v3, v8

    :cond_144
    add-int/lit8 v8, v3, 0x1

    aput-byte v12, v2, v3

    move v3, v8

    :cond_149
    goto/16 :goto_1d8

    :cond_14b
    sub-int v13, v5, v8

    add-int/lit8 v14, v6, -0x2

    if-ne v13, v14, :cond_1c0

    const/4 v13, 0x0

    if-le v8, v11, :cond_15c

    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v14, v13, 0x1

    aget-byte v8, v8, v13

    move v13, v14

    goto :goto_165

    :cond_15c
    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p1, v5

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v17

    :goto_165
    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v12

    iget v14, v0, Landroid/util/Base64$Encoder;->tailLen:I

    if-lez v14, :cond_173

    iget-object v14, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v16, v13, 0x1

    aget-byte v13, v14, v13

    goto :goto_17b

    :cond_173
    add-int/lit8 v14, v5, 0x1

    aget-byte v5, p1, v5

    move/from16 v16, v13

    move v13, v5

    move v5, v14

    :goto_17b
    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v10, v13, 0x2

    or-int v7, v8, v10

    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v8, v8, v16

    iput v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v8, v3, 0x1

    shr-int/lit8 v10, v7, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v3

    add-int/lit8 v3, v8, 0x1

    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v8

    add-int/lit8 v8, v3, 0x1

    and-int/lit8 v10, v7, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v3

    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v3, :cond_1ac

    add-int/lit8 v3, v8, 0x1

    aput-byte v15, v2, v8

    move v8, v3

    :cond_1ac
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v3, :cond_1be

    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_1b9

    add-int/lit8 v3, v8, 0x1

    aput-byte v9, v2, v8

    move v8, v3

    :cond_1b9
    add-int/lit8 v3, v8, 0x1

    aput-byte v12, v2, v8

    move v8, v3

    :cond_1be
    move v3, v8

    goto :goto_1d8

    :cond_1c0
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v8, :cond_1d8

    if-lez v3, :cond_1d8

    const/16 v8, 0x13

    if-eq v4, v8, :cond_1d8

    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_1d3

    add-int/lit8 v8, v3, 0x1

    aput-byte v9, v2, v3

    move v3, v8

    :cond_1d3
    add-int/lit8 v8, v3, 0x1

    aput-byte v12, v2, v3

    move v3, v8

    :cond_1d8
    :goto_1d8
    nop

    goto :goto_205

    :cond_1da
    add-int/lit8 v8, v6, -0x1

    if-ne v5, v8, :cond_1eb

    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v10, p1, v5

    aput-byte v10, v8, v9

    goto :goto_205

    :cond_1eb
    add-int/lit8 v8, v6, -0x2

    if-ne v5, v8, :cond_205

    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v12, p1, v5

    aput-byte v12, v8, v9

    add-int/lit8 v9, v10, 0x1

    iput v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, p1, v9

    aput-byte v9, v8, v10

    :cond_205
    :goto_205
    iput v3, v0, Landroid/util/Base64$Encoder;->op:I

    iput v4, v0, Landroid/util/Base64$Encoder;->count:I

    return v11
.end method
