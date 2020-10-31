.class public Landroid/telephony/AccessNetworkUtils;
.super Ljava/lang/Object;
.source "AccessNetworkUtils.java"


# static fields
.field public static final INVALID_BAND:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDuplexModeForEutranBand(I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_5

    return v0

    :cond_5
    const/16 v1, 0x58

    if-le p0, v1, :cond_a

    return v0

    :cond_a
    const/16 v1, 0x41

    const/4 v2, 0x1

    if-lt p0, v1, :cond_10

    return v2

    :cond_10
    const/16 v1, 0x21

    if-lt p0, v1, :cond_16

    const/4 v0, 0x2

    return v0

    :cond_16
    if-lt p0, v2, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public static getOperatingBandForEarfcn(I)I
    .registers 3

    const/4 v0, -0x1

    const v1, 0x113f5

    if-le p0, v1, :cond_7

    return v0

    :cond_7
    const v1, 0x113c4

    if-lt p0, v1, :cond_f

    const/16 v0, 0x58

    return v0

    :cond_f
    const v1, 0x11392

    if-lt p0, v1, :cond_17

    const/16 v0, 0x57

    return v0

    :cond_17
    const v1, 0x112de

    if-lt p0, v1, :cond_1f

    const/16 v0, 0x55

    return v0

    :cond_1f
    const v1, 0x10f59

    if-le p0, v1, :cond_25

    return v0

    :cond_25
    const v1, 0x10dac

    if-lt p0, v1, :cond_2d

    const/16 v0, 0x4a

    return v0

    :cond_2d
    const v1, 0x10d7a

    if-lt p0, v1, :cond_35

    const/16 v0, 0x49

    return v0

    :cond_35
    const v1, 0x10d48

    if-lt p0, v1, :cond_3d

    const/16 v0, 0x48

    return v0

    :cond_3d
    const v1, 0x10bea

    if-lt p0, v1, :cond_45

    const/16 v0, 0x47

    return v0

    :cond_45
    const v1, 0x10af0

    if-lt p0, v1, :cond_4d

    const/16 v0, 0x46

    return v0

    :cond_4d
    const v1, 0x108fb

    if-le p0, v1, :cond_53

    return v0

    :cond_53
    const v1, 0x107d0

    if-lt p0, v1, :cond_5b

    const/16 v0, 0x44

    return v0

    :cond_5b
    const v1, 0x10726

    if-lt p0, v1, :cond_61

    return v0

    :cond_61
    const v1, 0x10384

    if-lt p0, v1, :cond_69

    const/16 v0, 0x42

    return v0

    :cond_69
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_70

    const/16 v0, 0x41

    return v0

    :cond_70
    const v1, 0xeb5e

    if-le p0, v1, :cond_76

    return v0

    :cond_76
    const v1, 0xeaec

    if-lt p0, v1, :cond_7e

    const/16 v0, 0x35

    return v0

    :cond_7e
    const v1, 0xe704

    if-lt p0, v1, :cond_86

    const/16 v0, 0x34

    return v0

    :cond_86
    const v1, 0xe6d2

    if-lt p0, v1, :cond_8e

    const/16 v0, 0x33

    return v0

    :cond_8e
    const v1, 0xe380

    if-lt p0, v1, :cond_96

    const/16 v0, 0x32

    return v0

    :cond_96
    const v1, 0xdda4

    if-lt p0, v1, :cond_9e

    const/16 v0, 0x31

    return v0

    :cond_9e
    const v1, 0xd7c8

    if-lt p0, v1, :cond_a6

    const/16 v0, 0x30

    return v0

    :cond_a6
    const v1, 0xd50c

    if-lt p0, v1, :cond_ae

    const/16 v0, 0x2f

    return v0

    :cond_ae
    const v1, 0xb6c6

    if-lt p0, v1, :cond_b6

    const/16 v0, 0x2e

    return v0

    :cond_b6
    const v1, 0xb5fe

    if-lt p0, v1, :cond_be

    const/16 v0, 0x2d

    return v0

    :cond_be
    const v1, 0xb216

    if-lt p0, v1, :cond_c6

    const/16 v0, 0x2c

    return v0

    :cond_c6
    const v1, 0xaa46

    if-lt p0, v1, :cond_ce

    const/16 v0, 0x2b

    return v0

    :cond_ce
    const v1, 0xa276

    if-lt p0, v1, :cond_d6

    const/16 v0, 0x2a

    return v0

    :cond_d6
    const v1, 0x9ae2

    if-lt p0, v1, :cond_de

    const/16 v0, 0x29

    return v0

    :cond_de
    const v1, 0x96fa

    if-lt p0, v1, :cond_e6

    const/16 v0, 0x28

    return v0

    :cond_e6
    const v1, 0x956a

    if-lt p0, v1, :cond_ee

    const/16 v0, 0x27

    return v0

    :cond_ee
    const v1, 0x9376

    if-lt p0, v1, :cond_f6

    const/16 v0, 0x26

    return v0

    :cond_f6
    const v1, 0x92ae

    if-lt p0, v1, :cond_fe

    const/16 v0, 0x25

    return v0

    :cond_fe
    const v1, 0x9056

    if-lt p0, v1, :cond_106

    const/16 v0, 0x24

    return v0

    :cond_106
    const v1, 0x8dfe

    if-lt p0, v1, :cond_10e

    const/16 v0, 0x23

    return v0

    :cond_10e
    const v1, 0x8d68

    if-lt p0, v1, :cond_116

    const/16 v0, 0x22

    return v0

    :cond_116
    const v1, 0x8ca0

    if-lt p0, v1, :cond_11e

    const/16 v0, 0x21

    return v0

    :cond_11e
    const/16 v1, 0x2877

    if-le p0, v1, :cond_123

    return v0

    :cond_123
    const/16 v1, 0x26c0

    if-lt p0, v1, :cond_128

    return v0

    :cond_128
    const/16 v1, 0x268e

    if-lt p0, v1, :cond_12f

    const/16 v0, 0x1f

    return v0

    :cond_12f
    const/16 v1, 0x262a

    if-lt p0, v1, :cond_136

    const/16 v0, 0x1e

    return v0

    :cond_136
    const/16 v1, 0x25bc

    if-lt p0, v1, :cond_13b

    return v0

    :cond_13b
    const/16 v1, 0x23fa

    if-lt p0, v1, :cond_142

    const/16 v0, 0x1c

    return v0

    :cond_142
    const/16 v1, 0x2350

    if-lt p0, v1, :cond_149

    const/16 v0, 0x1b

    return v0

    :cond_149
    const/16 v1, 0x21f2

    if-lt p0, v1, :cond_150

    const/16 v0, 0x1a

    return v0

    :cond_150
    const/16 v1, 0x1f68

    if-lt p0, v1, :cond_157

    const/16 v0, 0x19

    return v0

    :cond_157
    const/16 v1, 0x1e14

    if-lt p0, v1, :cond_15e

    const/16 v0, 0x18

    return v0

    :cond_15e
    const/16 v1, 0x1d4c

    if-lt p0, v1, :cond_165

    const/16 v0, 0x17

    return v0

    :cond_165
    const/16 v1, 0x19c8

    if-lt p0, v1, :cond_16c

    const/16 v0, 0x16

    return v0

    :cond_16c
    const/16 v1, 0x1932

    if-lt p0, v1, :cond_173

    const/16 v0, 0x15

    return v0

    :cond_173
    const/16 v1, 0x1806

    if-lt p0, v1, :cond_17a

    const/16 v0, 0x14

    return v0

    :cond_17a
    const/16 v1, 0x1770

    if-lt p0, v1, :cond_181

    const/16 v0, 0x13

    return v0

    :cond_181
    const/16 v1, 0x16da

    if-lt p0, v1, :cond_188

    const/16 v0, 0x12

    return v0

    :cond_188
    const/16 v1, 0x1662

    if-lt p0, v1, :cond_18f

    const/16 v0, 0x11

    return v0

    :cond_18f
    const/16 v1, 0x1503

    if-le p0, v1, :cond_194

    return v0

    :cond_194
    const/16 v1, 0x14a0

    if-lt p0, v1, :cond_19b

    const/16 v0, 0xe

    return v0

    :cond_19b
    const/16 v1, 0x143c

    if-lt p0, v1, :cond_1a2

    const/16 v0, 0xd

    return v0

    :cond_1a2
    const/16 v1, 0x1392

    if-lt p0, v1, :cond_1a9

    const/16 v0, 0xc

    return v0

    :cond_1a9
    const/16 v1, 0x128e

    if-lt p0, v1, :cond_1b0

    const/16 v0, 0xb

    return v0

    :cond_1b0
    const/16 v1, 0x1036

    if-lt p0, v1, :cond_1b7

    const/16 v0, 0xa

    return v0

    :cond_1b7
    const/16 v1, 0xed8

    if-lt p0, v1, :cond_1be

    const/16 v0, 0x9

    return v0

    :cond_1be
    const/16 v1, 0xd7a

    if-lt p0, v1, :cond_1c5

    const/16 v0, 0x8

    return v0

    :cond_1c5
    const/16 v1, 0xabe

    if-lt p0, v1, :cond_1cb

    const/4 v0, 0x7

    return v0

    :cond_1cb
    const/16 v1, 0xa5a

    if-lt p0, v1, :cond_1d1

    const/4 v0, 0x6

    return v0

    :cond_1d1
    const/16 v1, 0x960

    if-lt p0, v1, :cond_1d7

    const/4 v0, 0x5

    return v0

    :cond_1d7
    const/16 v1, 0x79e

    if-lt p0, v1, :cond_1dd

    const/4 v0, 0x4

    return v0

    :cond_1dd
    const/16 v1, 0x4b0

    if-lt p0, v1, :cond_1e3

    const/4 v0, 0x3

    return v0

    :cond_1e3
    const/16 v1, 0x258

    if-lt p0, v1, :cond_1e9

    const/4 v0, 0x2

    return v0

    :cond_1e9
    if-ltz p0, :cond_1ed

    const/4 v0, 0x1

    return v0

    :cond_1ed
    return v0
.end method
