.class Lmiui/media/RecorderUtils;
.super Ljava/lang/Object;
.source "RecorderUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertErrorCode(IZ)I
    .registers 3

    if-eqz p1, :cond_1a

    const/16 v0, 0x64

    if-eq p0, v0, :cond_17

    const/16 v0, 0x320

    if-eq p0, v0, :cond_14

    const/16 v0, 0x321

    if-eq p0, v0, :cond_11

    const/16 v0, 0x3e7

    goto :goto_38

    :cond_11
    const/16 v0, 0x3ef

    goto :goto_38

    :cond_14
    const/16 v0, 0x3f0

    goto :goto_38

    :cond_17
    const/16 v0, 0x3f2

    goto :goto_38

    :cond_1a
    packed-switch p0, :pswitch_data_3a

    const/16 v0, 0x3e7

    goto :goto_38

    :pswitch_20
    const/16 v0, 0x3f1

    goto :goto_38

    :pswitch_23
    const/16 v0, 0x3ef

    goto :goto_38

    :pswitch_26
    const/16 v0, 0x3ee

    goto :goto_38

    :pswitch_29
    const/16 v0, 0x3ed

    goto :goto_38

    :pswitch_2c
    const/16 v0, 0x3ec

    goto :goto_38

    :pswitch_2f
    const/16 v0, 0x3eb

    goto :goto_38

    :pswitch_32
    const/16 v0, 0x3ea

    goto :goto_38

    :pswitch_35
    const/16 v0, 0x3e9

    nop

    :goto_38
    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method public static getBytes(J)[B
    .registers 7

    const/4 v0, 0x4

    new-array v0, v0, [B

    const-wide/16 v1, 0xff

    and-long v3, p0, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/16 v3, 0x8

    shr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    const/16 v3, 0x10

    shr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    const/16 v3, 0x18

    shr-long v3, p0, v3

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static getWaveHeader(II)[B
    .registers 17

    move/from16 v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x10

    move v4, p0

    if-ne v4, v3, :cond_b

    move v5, v2

    goto :goto_c

    :cond_b
    move v5, v1

    :goto_c
    const/16 v6, 0x2c

    new-array v6, v6, [B

    const/16 v7, 0x52

    const/4 v8, 0x0

    aput-byte v7, v6, v8

    const/16 v7, 0x49

    aput-byte v7, v6, v2

    const/16 v7, 0x46

    aput-byte v7, v6, v1

    const/4 v1, 0x3

    aput-byte v7, v6, v1

    const/4 v1, 0x4

    aput-byte v8, v6, v1

    const/4 v1, 0x5

    aput-byte v8, v6, v1

    const/4 v1, 0x6

    aput-byte v8, v6, v1

    const/4 v1, 0x7

    aput-byte v8, v6, v1

    const/16 v1, 0x57

    const/16 v7, 0x8

    aput-byte v1, v6, v7

    const/16 v1, 0x9

    const/16 v9, 0x41

    aput-byte v9, v6, v1

    const/16 v1, 0xa

    const/16 v9, 0x56

    aput-byte v9, v6, v1

    const/16 v1, 0xb

    const/16 v9, 0x45

    aput-byte v9, v6, v1

    const/16 v1, 0xc

    const/16 v9, 0x66

    aput-byte v9, v6, v1

    const/16 v1, 0xd

    const/16 v9, 0x6d

    aput-byte v9, v6, v1

    const/16 v1, 0xe

    const/16 v9, 0x74

    aput-byte v9, v6, v1

    const/16 v1, 0xf

    const/16 v10, 0x20

    aput-byte v10, v6, v1

    aput-byte v3, v6, v3

    const/16 v1, 0x11

    aput-byte v8, v6, v1

    const/16 v1, 0x12

    aput-byte v8, v6, v1

    const/16 v1, 0x13

    aput-byte v8, v6, v1

    const/16 v1, 0x14

    aput-byte v2, v6, v1

    const/16 v1, 0x15

    aput-byte v8, v6, v1

    const/16 v1, 0x16

    int-to-byte v2, v5

    aput-byte v2, v6, v1

    const/16 v1, 0x17

    aput-byte v8, v6, v1

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    const/16 v2, 0x18

    aput-byte v1, v6, v2

    const/16 v1, 0x19

    shr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v6, v1

    const/16 v1, 0x1a

    shr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v6, v1

    const/16 v1, 0x1b

    shr-int/lit8 v11, v0, 0x18

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v6, v1

    mul-int v1, v0, v5

    mul-int/2addr v1, v3

    div-int/2addr v1, v7

    int-to-long v11, v1

    const/16 v1, 0x1c

    const-wide/16 v13, 0xff

    and-long v8, v11, v13

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v1

    const/16 v1, 0x1d

    shr-long v8, v11, v7

    and-long/2addr v8, v13

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v1

    const/16 v1, 0x1e

    shr-long v8, v11, v3

    and-long/2addr v8, v13

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v1

    const/16 v1, 0x1f

    shr-long v8, v11, v2

    and-long/2addr v8, v13

    long-to-int v2, v8

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    mul-int/lit8 v1, v5, 0x10

    div-int/2addr v1, v7

    int-to-byte v1, v1

    aput-byte v1, v6, v10

    const/16 v1, 0x21

    const/4 v2, 0x0

    aput-byte v2, v6, v1

    const/16 v1, 0x22

    aput-byte v3, v6, v1

    const/16 v1, 0x23

    aput-byte v2, v6, v1

    const/16 v1, 0x24

    const/16 v2, 0x64

    aput-byte v2, v6, v1

    const/16 v1, 0x25

    const/16 v2, 0x61

    aput-byte v2, v6, v1

    const/16 v1, 0x26

    const/16 v3, 0x74

    aput-byte v3, v6, v1

    const/16 v1, 0x27

    aput-byte v2, v6, v1

    const/16 v1, 0x28

    const/4 v2, 0x0

    aput-byte v2, v6, v1

    const/16 v1, 0x29

    aput-byte v2, v6, v1

    const/16 v1, 0x2a

    aput-byte v2, v6, v1

    const/16 v1, 0x2b

    aput-byte v2, v6, v1

    return-object v6
.end method

.method public static short2byte([SI)[B
    .registers 6

    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p1, :cond_21

    mul-int/lit8 v2, v1, 0x2

    aget-short v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v3, p0, v1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x0

    aput-short v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    return-object v0
.end method

.method public static updateBytes(Ljava/nio/MappedByteBuffer;I[B)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_e

    add-int v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method
