.class public final Landroid/hardware/radio/V1_1/EutranBands;
.super Ljava/lang/Object;
.source "EutranBands.java"


# static fields
.field public static final BAND_1:I = 0x1

.field public static final BAND_10:I = 0xa

.field public static final BAND_11:I = 0xb

.field public static final BAND_12:I = 0xc

.field public static final BAND_13:I = 0xd

.field public static final BAND_14:I = 0xe

.field public static final BAND_17:I = 0x11

.field public static final BAND_18:I = 0x12

.field public static final BAND_19:I = 0x13

.field public static final BAND_2:I = 0x2

.field public static final BAND_20:I = 0x14

.field public static final BAND_21:I = 0x15

.field public static final BAND_22:I = 0x16

.field public static final BAND_23:I = 0x17

.field public static final BAND_24:I = 0x18

.field public static final BAND_25:I = 0x19

.field public static final BAND_26:I = 0x1a

.field public static final BAND_27:I = 0x1b

.field public static final BAND_28:I = 0x1c

.field public static final BAND_3:I = 0x3

.field public static final BAND_30:I = 0x1e

.field public static final BAND_31:I = 0x1f

.field public static final BAND_33:I = 0x21

.field public static final BAND_34:I = 0x22

.field public static final BAND_35:I = 0x23

.field public static final BAND_36:I = 0x24

.field public static final BAND_37:I = 0x25

.field public static final BAND_38:I = 0x26

.field public static final BAND_39:I = 0x27

.field public static final BAND_4:I = 0x4

.field public static final BAND_40:I = 0x28

.field public static final BAND_41:I = 0x29

.field public static final BAND_42:I = 0x2a

.field public static final BAND_43:I = 0x2b

.field public static final BAND_44:I = 0x2c

.field public static final BAND_45:I = 0x2d

.field public static final BAND_46:I = 0x2e

.field public static final BAND_47:I = 0x2f

.field public static final BAND_48:I = 0x30

.field public static final BAND_5:I = 0x5

.field public static final BAND_6:I = 0x6

.field public static final BAND_65:I = 0x41

.field public static final BAND_66:I = 0x42

.field public static final BAND_68:I = 0x44

.field public static final BAND_7:I = 0x7

.field public static final BAND_70:I = 0x46

.field public static final BAND_8:I = 0x8

.field public static final BAND_9:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    const-string v2, "BAND_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    const-string v2, "BAND_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_1e
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    const-string v2, "BAND_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_2a
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    const-string v2, "BAND_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_36
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_42

    const-string v2, "BAND_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_42
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4e

    const-string v2, "BAND_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_4e
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5a

    const-string v2, "BAND_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_5a
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_67

    const-string v2, "BAND_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_67
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_74

    const-string v2, "BAND_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x9

    :cond_74
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_81

    const-string v2, "BAND_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xa

    :cond_81
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_8e

    const-string v2, "BAND_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xb

    :cond_8e
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9b

    const-string v2, "BAND_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xc

    :cond_9b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_a8

    const-string v2, "BAND_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xd

    :cond_a8
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_b5

    const-string v2, "BAND_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xe

    :cond_b5
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_c2

    const-string v2, "BAND_17"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x11

    :cond_c2
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_cf

    const-string v2, "BAND_18"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x12

    :cond_cf
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_dc

    const-string v2, "BAND_19"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x13

    :cond_dc
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_e9

    const-string v2, "BAND_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x14

    :cond_e9
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_f6

    const-string v2, "BAND_21"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x15

    :cond_f6
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_103

    const-string v2, "BAND_22"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x16

    :cond_103
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_110

    const-string v2, "BAND_23"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x17

    :cond_110
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_11d

    const-string v2, "BAND_24"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x18

    :cond_11d
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_12a

    const-string v2, "BAND_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x19

    :cond_12a
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_137

    const-string v2, "BAND_26"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1a

    :cond_137
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_144

    const-string v2, "BAND_27"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1b

    :cond_144
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_151

    const-string v2, "BAND_28"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1c

    :cond_151
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_15e

    const-string v2, "BAND_30"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1e

    :cond_15e
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_16b

    const-string v2, "BAND_31"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1f

    :cond_16b
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_178

    const-string v2, "BAND_33"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x21

    :cond_178
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_185

    const-string v2, "BAND_34"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x22

    :cond_185
    and-int/lit8 v2, p0, 0x23

    const/16 v3, 0x23

    if-ne v2, v3, :cond_192

    const-string v2, "BAND_35"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x23

    :cond_192
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_19f

    const-string v2, "BAND_36"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x24

    :cond_19f
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_1ac

    const-string v2, "BAND_37"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x25

    :cond_1ac
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1b9

    const-string v2, "BAND_38"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x26

    :cond_1b9
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_1c6

    const-string v2, "BAND_39"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x27

    :cond_1c6
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1d3

    const-string v2, "BAND_40"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x28

    :cond_1d3
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1e0

    const-string v2, "BAND_41"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x29

    :cond_1e0
    and-int/lit8 v2, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1ed

    const-string v2, "BAND_42"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2a

    :cond_1ed
    and-int/lit8 v2, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1fa

    const-string v2, "BAND_43"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2b

    :cond_1fa
    and-int/lit8 v2, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_207

    const-string v2, "BAND_44"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2c

    :cond_207
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_214

    const-string v2, "BAND_45"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2d

    :cond_214
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_221

    const-string v2, "BAND_46"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2e

    :cond_221
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_22e

    const-string v2, "BAND_47"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2f

    :cond_22e
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_23b

    const-string v2, "BAND_48"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x30

    :cond_23b
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_248

    const-string v2, "BAND_65"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x41

    :cond_248
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_255

    const-string v2, "BAND_66"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x42

    :cond_255
    and-int/lit8 v2, p0, 0x44

    const/16 v3, 0x44

    if-ne v2, v3, :cond_262

    const-string v2, "BAND_68"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x44

    :cond_262
    and-int/lit8 v2, p0, 0x46

    const/16 v3, 0x46

    if-ne v2, v3, :cond_26f

    const-string v2, "BAND_70"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x46

    :cond_26f
    if-eq p0, v1, :cond_28b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28b
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "BAND_1"

    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "BAND_2"

    return-object v0

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string v0, "BAND_3"

    return-object v0

    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    const-string v0, "BAND_4"

    return-object v0

    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    const-string v0, "BAND_5"

    return-object v0

    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    const-string v0, "BAND_6"

    return-object v0

    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    const-string v0, "BAND_7"

    return-object v0

    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    const-string v0, "BAND_8"

    return-object v0

    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    const-string v0, "BAND_9"

    return-object v0

    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    const-string v0, "BAND_10"

    return-object v0

    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    const-string v0, "BAND_11"

    return-object v0

    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    const-string v0, "BAND_12"

    return-object v0

    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    const-string v0, "BAND_13"

    return-object v0

    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    const-string v0, "BAND_14"

    return-object v0

    :cond_5b
    const/16 v0, 0x11

    if-ne p0, v0, :cond_62

    const-string v0, "BAND_17"

    return-object v0

    :cond_62
    const/16 v0, 0x12

    if-ne p0, v0, :cond_69

    const-string v0, "BAND_18"

    return-object v0

    :cond_69
    const/16 v0, 0x13

    if-ne p0, v0, :cond_70

    const-string v0, "BAND_19"

    return-object v0

    :cond_70
    const/16 v0, 0x14

    if-ne p0, v0, :cond_77

    const-string v0, "BAND_20"

    return-object v0

    :cond_77
    const/16 v0, 0x15

    if-ne p0, v0, :cond_7e

    const-string v0, "BAND_21"

    return-object v0

    :cond_7e
    const/16 v0, 0x16

    if-ne p0, v0, :cond_85

    const-string v0, "BAND_22"

    return-object v0

    :cond_85
    const/16 v0, 0x17

    if-ne p0, v0, :cond_8c

    const-string v0, "BAND_23"

    return-object v0

    :cond_8c
    const/16 v0, 0x18

    if-ne p0, v0, :cond_93

    const-string v0, "BAND_24"

    return-object v0

    :cond_93
    const/16 v0, 0x19

    if-ne p0, v0, :cond_9a

    const-string v0, "BAND_25"

    return-object v0

    :cond_9a
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_a1

    const-string v0, "BAND_26"

    return-object v0

    :cond_a1
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_a8

    const-string v0, "BAND_27"

    return-object v0

    :cond_a8
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_af

    const-string v0, "BAND_28"

    return-object v0

    :cond_af
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_b6

    const-string v0, "BAND_30"

    return-object v0

    :cond_b6
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_bd

    const-string v0, "BAND_31"

    return-object v0

    :cond_bd
    const/16 v0, 0x21

    if-ne p0, v0, :cond_c4

    const-string v0, "BAND_33"

    return-object v0

    :cond_c4
    const/16 v0, 0x22

    if-ne p0, v0, :cond_cb

    const-string v0, "BAND_34"

    return-object v0

    :cond_cb
    const/16 v0, 0x23

    if-ne p0, v0, :cond_d2

    const-string v0, "BAND_35"

    return-object v0

    :cond_d2
    const/16 v0, 0x24

    if-ne p0, v0, :cond_d9

    const-string v0, "BAND_36"

    return-object v0

    :cond_d9
    const/16 v0, 0x25

    if-ne p0, v0, :cond_e0

    const-string v0, "BAND_37"

    return-object v0

    :cond_e0
    const/16 v0, 0x26

    if-ne p0, v0, :cond_e7

    const-string v0, "BAND_38"

    return-object v0

    :cond_e7
    const/16 v0, 0x27

    if-ne p0, v0, :cond_ee

    const-string v0, "BAND_39"

    return-object v0

    :cond_ee
    const/16 v0, 0x28

    if-ne p0, v0, :cond_f5

    const-string v0, "BAND_40"

    return-object v0

    :cond_f5
    const/16 v0, 0x29

    if-ne p0, v0, :cond_fc

    const-string v0, "BAND_41"

    return-object v0

    :cond_fc
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_103

    const-string v0, "BAND_42"

    return-object v0

    :cond_103
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_10a

    const-string v0, "BAND_43"

    return-object v0

    :cond_10a
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_111

    const-string v0, "BAND_44"

    return-object v0

    :cond_111
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_118

    const-string v0, "BAND_45"

    return-object v0

    :cond_118
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_11f

    const-string v0, "BAND_46"

    return-object v0

    :cond_11f
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_126

    const-string v0, "BAND_47"

    return-object v0

    :cond_126
    const/16 v0, 0x30

    if-ne p0, v0, :cond_12d

    const-string v0, "BAND_48"

    return-object v0

    :cond_12d
    const/16 v0, 0x41

    if-ne p0, v0, :cond_134

    const-string v0, "BAND_65"

    return-object v0

    :cond_134
    const/16 v0, 0x42

    if-ne p0, v0, :cond_13b

    const-string v0, "BAND_66"

    return-object v0

    :cond_13b
    const/16 v0, 0x44

    if-ne p0, v0, :cond_142

    const-string v0, "BAND_68"

    return-object v0

    :cond_142
    const/16 v0, 0x46

    if-ne p0, v0, :cond_149

    const-string v0, "BAND_70"

    return-object v0

    :cond_149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
