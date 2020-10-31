.class Landroid/util/Base64$Decoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Landroid/util/Base64$Decoder;->DECODE:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_216

    sput-object v0, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    nop

    :array_12
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_216
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 4

    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    iput-object p2, p0, Landroid/util/Base64$Decoder;->output:[B

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_c

    sget-object v0, Landroid/util/Base64$Decoder;->DECODE:[I

    goto :goto_e

    :cond_c
    sget-object v0, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    :goto_e
    iput-object v0, p0, Landroid/util/Base64$Decoder;->alphabet:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/Base64$Decoder;->state:I

    iput v0, p0, Landroid/util/Base64$Decoder;->value:I

    return-void
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3

    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 21

    move-object/from16 v0, p0

    iget v1, v0, Landroid/util/Base64$Decoder;->state:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_9

    return v2

    :cond_9
    move/from16 v1, p2

    add-int v4, p3, p2

    iget v5, v0, Landroid/util/Base64$Decoder;->state:I

    iget v6, v0, Landroid/util/Base64$Decoder;->value:I

    const/4 v7, 0x0

    iget-object v8, v0, Landroid/util/Base64$Decoder;->output:[B

    iget-object v9, v0, Landroid/util/Base64$Decoder;->alphabet:[I

    :goto_16
    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v1, v4, :cond_f6

    if-nez v5, :cond_65

    :goto_1e
    add-int/lit8 v14, v1, 0x4

    if-gt v14, v4, :cond_61

    aget-byte v14, p1, v1

    and-int/lit16 v14, v14, 0xff

    aget v14, v9, v14

    shl-int/lit8 v14, v14, 0x12

    add-int/lit8 v15, v1, 0x1

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v9, v15

    shl-int/lit8 v15, v15, 0xc

    or-int/2addr v14, v15

    add-int/lit8 v15, v1, 0x2

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v9, v15

    shl-int/2addr v15, v3

    or-int/2addr v14, v15

    add-int/lit8 v15, v1, 0x3

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v9, v15

    or-int/2addr v14, v15

    move v6, v14

    if-ltz v14, :cond_61

    add-int/lit8 v14, v7, 0x2

    int-to-byte v15, v6

    aput-byte v15, v8, v14

    add-int/lit8 v14, v7, 0x1

    shr-int/lit8 v15, v6, 0x8

    int-to-byte v15, v15

    aput-byte v15, v8, v14

    shr-int/lit8 v14, v6, 0x10

    int-to-byte v14, v14

    aput-byte v14, v8, v7

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_1e

    :cond_61
    if-lt v1, v4, :cond_65

    goto/16 :goto_f6

    :cond_65
    add-int/lit8 v14, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v9, v1

    const/4 v15, -0x1

    if-eqz v5, :cond_e8

    if-eq v5, v13, :cond_da

    const/4 v13, -0x2

    if-eq v5, v12, :cond_c0

    if-eq v5, v10, :cond_8e

    if-eq v5, v11, :cond_83

    const/4 v10, 0x5

    if-eq v5, v10, :cond_7e

    goto/16 :goto_f3

    :cond_7e
    if-eq v1, v15, :cond_f3

    iput v3, v0, Landroid/util/Base64$Decoder;->state:I

    return v2

    :cond_83
    if-ne v1, v13, :cond_89

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_f3

    :cond_89
    if-eq v1, v15, :cond_f3

    iput v3, v0, Landroid/util/Base64$Decoder;->state:I

    return v2

    :cond_8e
    if-ltz v1, :cond_a9

    shl-int/lit8 v10, v6, 0x6

    or-int v6, v10, v1

    add-int/lit8 v10, v7, 0x2

    int-to-byte v11, v6

    aput-byte v11, v8, v10

    add-int/lit8 v10, v7, 0x1

    shr-int/lit8 v11, v6, 0x8

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    shr-int/lit8 v10, v6, 0x10

    int-to-byte v10, v10

    aput-byte v10, v8, v7

    add-int/lit8 v7, v7, 0x3

    const/4 v5, 0x0

    goto :goto_f3

    :cond_a9
    if-ne v1, v13, :cond_bb

    add-int/lit8 v10, v7, 0x1

    shr-int/lit8 v11, v6, 0x2

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    shr-int/lit8 v10, v6, 0xa

    int-to-byte v10, v10

    aput-byte v10, v8, v7

    add-int/lit8 v7, v7, 0x2

    const/4 v5, 0x5

    goto :goto_f3

    :cond_bb
    if-eq v1, v15, :cond_f3

    iput v3, v0, Landroid/util/Base64$Decoder;->state:I

    return v2

    :cond_c0
    if-ltz v1, :cond_c9

    shl-int/lit8 v10, v6, 0x6

    or-int v6, v10, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_f3

    :cond_c9
    if-ne v1, v13, :cond_d5

    add-int/lit8 v10, v7, 0x1

    shr-int/lit8 v11, v6, 0x4

    int-to-byte v11, v11

    aput-byte v11, v8, v7

    const/4 v5, 0x4

    move v7, v10

    goto :goto_f3

    :cond_d5
    if-eq v1, v15, :cond_f3

    iput v3, v0, Landroid/util/Base64$Decoder;->state:I

    return v2

    :cond_da
    if-ltz v1, :cond_e3

    shl-int/lit8 v10, v6, 0x6

    or-int v6, v10, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_f3

    :cond_e3
    if-eq v1, v15, :cond_f3

    iput v3, v0, Landroid/util/Base64$Decoder;->state:I

    return v2

    :cond_e8
    if-ltz v1, :cond_ee

    move v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_f3

    :cond_ee
    if-eq v1, v15, :cond_f3

    iput v3, v0, Landroid/util/Base64$Decoder;->state:I

    return v2

    :cond_f3
    :goto_f3
    move v1, v14

    goto/16 :goto_16

    :cond_f6
    :goto_f6
    if-nez p4, :cond_ff

    iput v5, v0, Landroid/util/Base64$Decoder;->state:I

    iput v6, v0, Landroid/util/Base64$Decoder;->value:I

    iput v7, v0, Landroid/util/Base64$Decoder;->op:I

    return v13

    :cond_ff
    if-eq v5, v13, :cond_127

    if-eq v5, v12, :cond_11a

    if-eq v5, v10, :cond_10b

    if-eq v5, v11, :cond_108

    goto :goto_122

    :cond_108
    iput v3, v0, Landroid/util/Base64$Decoder;->state:I

    return v2

    :cond_10b
    add-int/lit8 v2, v7, 0x1

    shr-int/lit8 v3, v6, 0xa

    int-to-byte v3, v3

    aput-byte v3, v8, v7

    add-int/lit8 v7, v2, 0x1

    shr-int/lit8 v3, v6, 0x2

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    goto :goto_122

    :cond_11a
    add-int/lit8 v2, v7, 0x1

    shr-int/lit8 v3, v6, 0x4

    int-to-byte v3, v3

    aput-byte v3, v8, v7

    move v7, v2

    :goto_122
    iput v5, v0, Landroid/util/Base64$Decoder;->state:I

    iput v7, v0, Landroid/util/Base64$Decoder;->op:I

    return v13

    :cond_127
    iput v3, v0, Landroid/util/Base64$Decoder;->state:I

    return v2
.end method
