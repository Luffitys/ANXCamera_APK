.class public Lcom/google/android/mms/pdu/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final BASELENGTH:I = 0xff

.field static final FOURBYTE:I = 0x4

.field static final PAD:B = 0x3dt

.field private static base64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/16 v0, 0x5a

    :goto_13
    const/16 v1, 0x41

    if-lt v0, v1, :cond_21

    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_21
    const/16 v0, 0x7a

    :goto_23
    const/16 v1, 0x61

    if-lt v0, v1, :cond_33

    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_33
    const/16 v0, 0x39

    :goto_35
    const/16 v1, 0x30

    if-lt v0, v1, :cond_45

    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    :cond_45
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .registers 16

    invoke-static {p0}, Lcom/google/android/mms/pdu/Base64;->discardNonBase64([B)[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    new-array v0, v1, [B

    return-object v0

    :cond_b
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, p0

    :cond_18
    add-int/lit8 v12, v11, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_27

    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_18

    new-array v1, v1, [B

    return-object v1

    :cond_27
    sub-int v1, v11, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v0, :cond_97

    mul-int/lit8 v10, v2, 0x4

    add-int/lit8 v11, v10, 0x2

    aget-byte v7, p0, v11

    add-int/lit8 v11, v10, 0x3

    aget-byte v8, p0, v11

    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v12, p0, v10

    aget-byte v3, v11, v12

    add-int/lit8 v12, v10, 0x1

    aget-byte v12, p0, v12

    aget-byte v4, v11, v12

    if-eq v7, v13, :cond_6b

    if-eq v8, v13, :cond_6b

    aget-byte v5, v11, v7

    aget-byte v6, v11, v8

    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    add-int/lit8 v11, v9, 0x2

    shl-int/lit8 v12, v5, 0x6

    or-int/2addr v12, v6

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    goto :goto_92

    :cond_6b
    if-ne v7, v13, :cond_76

    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    goto :goto_92

    :cond_76
    if-ne v8, v13, :cond_92

    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v5, v11, v7

    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    :cond_92
    :goto_92
    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_97
    return-object v1
.end method

.method static discardNonBase64([B)[B
    .registers 6

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_1a

    aget-byte v3, p0, v2

    invoke-static {v3}, Lcom/google/android/mms/pdu/Base64;->isBase64(B)Z

    move-result v3

    if-eqz v3, :cond_17

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p0, v2

    aput-byte v4, v0, v1

    move v1, v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1a
    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private static isBase64(B)Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x3d

    if-ne p0, v1, :cond_6

    return v0

    :cond_6
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const/4 v0, 0x0

    return v0

    :cond_f
    return v0
.end method
