.class public Lcom/miui/mishare/DeviceModel;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/DeviceModel$Oneplus;,
        Lcom/miui/mishare/DeviceModel$Meizu;,
        Lcom/miui/mishare/DeviceModel$BlackShark;,
        Lcom/miui/mishare/DeviceModel$Xiaomi;,
        Lcom/miui/mishare/DeviceModel$Vivo;,
        Lcom/miui/mishare/DeviceModel$Oppo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MANUFACTURE_UNDEFINED:B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceName(Landroid/content/Context;BI)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2}, Lcom/miui/mishare/DeviceModel;->getDeviceRes(BI)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceRes(BI)I
    .registers 3

    const/16 v0, 0x14

    if-lt p0, v0, :cond_c

    const/16 v0, 0x1d

    if-gt p0, v0, :cond_c

    const v0, 0x110e01ad

    return v0

    :cond_c
    const/16 v0, 0xa

    if-lt p0, v0, :cond_20

    const/16 v0, 0x13

    if-gt p0, v0, :cond_20

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1c

    const v0, 0x110e0116

    return v0

    :cond_1c
    const v0, 0x110e00fd

    return v0

    :cond_20
    const/16 v0, 0x32

    if-lt p0, v0, :cond_2c

    const/16 v0, 0x3b

    if-gt p0, v0, :cond_2c

    const v0, 0x110e00e0

    return v0

    :cond_2c
    const/16 v0, 0x29

    if-lt p0, v0, :cond_38

    const/16 v0, 0x2d

    if-gt p0, v0, :cond_38

    const v0, 0x110e00f9

    return v0

    :cond_38
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_f3

    const/16 v0, 0x27

    if-gt p0, v0, :cond_f3

    packed-switch p1, :pswitch_data_f8

    packed-switch p1, :pswitch_data_10c

    packed-switch p1, :pswitch_data_118

    packed-switch p1, :pswitch_data_122

    packed-switch p1, :pswitch_data_12c

    packed-switch p1, :pswitch_data_142

    packed-switch p1, :pswitch_data_14c

    invoke-static {}, Lcom/miui/mishare/DeviceModel;->isBlackShark()Z

    move-result v0

    if-eqz v0, :cond_5f

    const v0, 0x110e0063

    goto :goto_62

    :cond_5f
    const v0, 0x110e01cb

    :goto_62
    return v0

    :pswitch_63
    const v0, 0x110e0061

    return v0

    :pswitch_67
    const v0, 0x110e0060

    return v0

    :pswitch_6b
    const v0, 0x110e005f

    return v0

    :pswitch_6f
    const v0, 0x110e005e

    return v0

    :pswitch_73
    const v0, 0x110e0062

    return v0

    :pswitch_77
    const v0, 0x110e005d

    return v0

    :pswitch_7b
    const v0, 0x110e00e5

    return v0

    :pswitch_7f
    const v0, 0x110e00e4

    return v0

    :pswitch_83
    const v0, 0x110e00e3

    return v0

    :pswitch_87
    const v0, 0x110e0121

    return v0

    :pswitch_8b
    const v0, 0x110e0120

    return v0

    :pswitch_8f
    const v0, 0x110e0122

    return v0

    :pswitch_93
    const v0, 0x110e011f

    return v0

    :pswitch_97
    const v0, 0x110e011d

    return v0

    :pswitch_9b
    const v0, 0x110e011e

    return v0

    :pswitch_9f
    const v0, 0x110e011c

    return v0

    :pswitch_a3
    const v0, 0x110e0124

    return v0

    :pswitch_a7
    const v0, 0x110e0123

    return v0

    :pswitch_ab
    const v0, 0x110e01ca

    return v0

    :pswitch_af
    const v0, 0x110e01c5

    return v0

    :pswitch_b3
    const v0, 0x110e01cc

    return v0

    :pswitch_b7
    const v0, 0x110e01c3

    return v0

    :pswitch_bb
    const v0, 0x110e01c4

    return v0

    :pswitch_bf
    const v0, 0x110e01c2

    return v0

    :pswitch_c3
    const v0, 0x110e01c9

    return v0

    :pswitch_c7
    const v0, 0x110e01c8

    return v0

    :pswitch_cb
    const v0, 0x110e01c7

    return v0

    :pswitch_cf
    const v0, 0x110e01c6

    return v0

    :pswitch_d3
    const v0, 0x110e01ba

    return v0

    :pswitch_d7
    const v0, 0x110e01bc

    return v0

    :pswitch_db
    const v0, 0x110e01bf

    return v0

    :pswitch_df
    const v0, 0x110e01be

    return v0

    :pswitch_e3
    const v0, 0x110e01bd

    return v0

    :pswitch_e7
    const v0, 0x110e01bb

    return v0

    :pswitch_eb
    const v0, 0x110e01c1

    return v0

    :pswitch_ef
    const v0, 0x110e01c0

    return v0

    :cond_f3
    const v0, 0x110e01a7

    return v0

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_ef
        :pswitch_eb
        :pswitch_e7
        :pswitch_e3
        :pswitch_df
        :pswitch_db
        :pswitch_d7
        :pswitch_d3
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0x101
        :pswitch_cf
        :pswitch_cb
        :pswitch_c7
        :pswitch_c3
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x201
        :pswitch_bf
        :pswitch_bb
        :pswitch_b7
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0xf01
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x1001
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x2001
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
    .end packed-switch

    :pswitch_data_14c
    .packed-switch 0x3001
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
    .end packed-switch
.end method

.method public static getManufactureName(Landroid/content/Context;B)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/mishare/DeviceModel;->getManufactureRes(B)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getManufactureRes(B)I
    .registers 2

    const/16 v0, 0x14

    if-lt p0, v0, :cond_c

    const/16 v0, 0x1d

    if-gt p0, v0, :cond_c

    const v0, 0x110e01ac

    return v0

    :cond_c
    const/16 v0, 0xa

    if-lt p0, v0, :cond_20

    const/16 v0, 0x13

    if-gt p0, v0, :cond_20

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1c

    const v0, 0x110e0116

    return v0

    :cond_1c
    const v0, 0x110e00fc

    return v0

    :cond_20
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_34

    const/16 v0, 0x27

    if-gt p0, v0, :cond_34

    const/16 v0, 0x20

    if-ne p0, v0, :cond_30

    const v0, 0x110e005c

    return v0

    :cond_30
    const v0, 0x110e01b9

    return v0

    :cond_34
    const/16 v0, 0x32

    if-lt p0, v0, :cond_40

    const/16 v0, 0x3b

    if-gt p0, v0, :cond_40

    const v0, 0x110e00df

    return v0

    :cond_40
    const/16 v0, 0x29

    if-lt p0, v0, :cond_4c

    const/16 v0, 0x2d

    if-gt p0, v0, :cond_4c

    const v0, 0x110e00f8

    return v0

    :cond_4c
    const v0, 0x110e01a6

    return v0
.end method

.method private static isBlackShark()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "blackshark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static myDeviceCode()I
    .registers 11

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v1, :sswitch_data_1ca

    :cond_12
    goto/16 :goto_16a

    :sswitch_14
    const-string v1, "davinciin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1b

    goto/16 :goto_16b

    :sswitch_20
    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a

    goto/16 :goto_16b

    :sswitch_2c
    const-string v1, "andromeda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xb

    goto/16 :goto_16b

    :sswitch_38
    const-string v1, "raphaelin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1d

    goto/16 :goto_16b

    :sswitch_44
    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1c

    goto/16 :goto_16b

    :sswitch_50
    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto/16 :goto_16b

    :sswitch_5b
    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v6

    goto/16 :goto_16b

    :sswitch_66
    const-string v1, "nitrogen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x10

    goto/16 :goto_16b

    :sswitch_72
    const-string v1, "beryllium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xf

    goto/16 :goto_16b

    :sswitch_7e
    const-string v1, "sagit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v3

    goto/16 :goto_16b

    :sswitch_89
    const-string v1, "pyxis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xc

    goto/16 :goto_16b

    :sswitch_95
    const-string v1, "jason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x11

    goto/16 :goto_16b

    :sswitch_a1
    const-string v1, "vela"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xd

    goto/16 :goto_16b

    :sswitch_ad
    const-string v1, "ursa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v4

    goto/16 :goto_16b

    :sswitch_b8
    const-string v1, "pine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x18

    goto/16 :goto_16b

    :sswitch_c4
    const-string v1, "grus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v9

    goto/16 :goto_16b

    :sswitch_cf
    const-string v1, "polaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x9

    goto/16 :goto_16b

    :sswitch_db
    const-string v1, "platina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v5

    goto/16 :goto_16b

    :sswitch_e6
    const-string v1, "perseus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xa

    goto/16 :goto_16b

    :sswitch_f2
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x19

    goto/16 :goto_16b

    :sswitch_fe
    const-string v1, "violet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    goto/16 :goto_16b

    :sswitch_10a
    const-string v1, "sirius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v7

    goto :goto_16b

    :sswitch_114
    const-string v1, "sakura"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x16

    goto :goto_16b

    :sswitch_11f
    const-string v1, "laurus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xe

    goto :goto_16b

    :sswitch_12a
    const-string v1, "sakura_india"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x17

    goto :goto_16b

    :sswitch_135
    const-string v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v8

    goto :goto_16b

    :sswitch_13f
    const-string v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_16b

    :sswitch_149
    const-string v1, "cereus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x14

    goto :goto_16b

    :sswitch_154
    const-string v1, "cactus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x15

    goto :goto_16b

    :sswitch_15f
    const-string v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x12

    goto :goto_16b

    :goto_16a
    const/4 v0, -0x1

    :goto_16b
    const/16 v1, 0x1009

    const/16 v10, 0x1008

    packed-switch v0, :pswitch_data_244

    const v0, 0xffff

    return v0

    :pswitch_176
    return v1

    :pswitch_177
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_17c

    goto :goto_17e

    :cond_17c
    const/16 v1, 0x2002

    :goto_17e
    return v1

    :pswitch_17f
    return v10

    :pswitch_180
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_185

    goto :goto_187

    :cond_185
    const/16 v10, 0x2001

    :goto_187
    return v10

    :pswitch_188
    const/16 v0, 0x1007

    return v0

    :pswitch_18b
    const/16 v0, 0x1006

    return v0

    :pswitch_18e
    const/16 v0, 0x1005

    return v0

    :pswitch_191
    const/16 v0, 0x1004

    return v0

    :pswitch_194
    const/16 v0, 0x1003

    return v0

    :pswitch_197
    const/16 v0, 0x1002

    return v0

    :pswitch_19a
    const/16 v0, 0x1001

    return v0

    :pswitch_19d
    const/16 v0, 0xf03

    return v0

    :pswitch_1a0
    const/16 v0, 0xf02

    return v0

    :pswitch_1a3
    const/16 v0, 0xf01

    return v0

    :pswitch_1a6
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1ad

    const/16 v0, 0x202

    goto :goto_1af

    :cond_1ad
    const/16 v0, 0x2003

    :goto_1af
    return v0

    :pswitch_1b0
    const/16 v0, 0x203

    return v0

    :pswitch_1b3
    const/16 v0, 0x201

    return v0

    :pswitch_1b6
    const/16 v0, 0x104

    return v0

    :pswitch_1b9
    const/16 v0, 0x103

    return v0

    :pswitch_1bc
    const/16 v0, 0x102

    return v0

    :pswitch_1bf
    const/16 v0, 0x101

    return v0

    :pswitch_1c2
    return v2

    :pswitch_1c3
    return v3

    :pswitch_1c4
    return v4

    :pswitch_1c5
    return v5

    :pswitch_1c6
    return v6

    :pswitch_1c7
    return v7

    :pswitch_1c8
    return v8

    :pswitch_1c9
    return v9

    :sswitch_data_1ca
    .sparse-switch
        -0x52a5fa39 -> :sswitch_15f
        -0x518a8fd3 -> :sswitch_154
        -0x514b988d -> :sswitch_149
        -0x51253953 -> :sswitch_13f
        -0x4f5f234e -> :sswitch_135
        -0x4cf7fca1 -> :sswitch_12a
        -0x4226cb10 -> :sswitch_11f
        -0x36395f99 -> :sswitch_114
        -0x35c5a195 -> :sswitch_10a
        -0x30a86b81 -> :sswitch_fe
        -0x2efd0837 -> :sswitch_f2
        -0x287054f3 -> :sswitch_e6
        -0x1d6d75b3 -> :sswitch_db
        -0x17bc6b18 -> :sswitch_cf
        0x308cc9 -> :sswitch_c4
        0x348170 -> :sswitch_b8
        0x36e9ab -> :sswitch_ad
        0x372c64 -> :sswitch_a1
        0x60390fb -> :sswitch_95
        0x66318f9 -> :sswitch_89
        0x68236c4 -> :sswitch_7e
        0x212e93b7 -> :sswitch_72
        0x219c397a -> :sswitch_66
        0x23c13c23 -> :sswitch_5b
        0x27bd79a9 -> :sswitch_50
        0x3a677f01 -> :sswitch_44
        0x3e83cfe6 -> :sswitch_38
        0x43763869 -> :sswitch_2c
        0x56257364 -> :sswitch_20
        0x62963789 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_244
    .packed-switch 0x0
        :pswitch_1c9
        :pswitch_1c8
        :pswitch_1c7
        :pswitch_1c6
        :pswitch_1c5
        :pswitch_1c4
        :pswitch_1c3
        :pswitch_1c2
        :pswitch_1bf
        :pswitch_1bc
        :pswitch_1b9
        :pswitch_1b6
        :pswitch_1b3
        :pswitch_1b0
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_180
        :pswitch_17f
        :pswitch_177
        :pswitch_176
    .end packed-switch
.end method

.method public static myManufactureCode()B
    .registers 5

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1f

    const/16 v3, 0x20

    const/16 v4, 0x1e

    sparse-switch v1, :sswitch_data_1bc

    :cond_f
    goto/16 :goto_1ad

    :sswitch_11
    const-string v1, "davinciin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1b

    goto/16 :goto_1ae

    :sswitch_1d
    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1a

    goto/16 :goto_1ae

    :sswitch_29
    const-string v1, "andromeda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xb

    goto/16 :goto_1ae

    :sswitch_35
    const-string v1, "raphaelin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1d

    goto/16 :goto_1ae

    :sswitch_41
    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1c

    goto/16 :goto_1ae

    :sswitch_4d
    const-string v1, "darklighter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x21

    goto/16 :goto_1ae

    :sswitch_59
    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto/16 :goto_1ae

    :sswitch_64
    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x4

    goto/16 :goto_1ae

    :sswitch_6f
    const-string v1, "nitrogen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    goto/16 :goto_1ae

    :sswitch_7b
    const-string v1, "beryllium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xf

    goto/16 :goto_1ae

    :sswitch_87
    const-string v1, "shark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v4

    goto/16 :goto_1ae

    :sswitch_92
    const-string v1, "sagit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x7

    goto/16 :goto_1ae

    :sswitch_9d
    const-string v1, "pyxis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xc

    goto/16 :goto_1ae

    :sswitch_a9
    const-string v1, "klein"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x22

    goto/16 :goto_1ae

    :sswitch_b5
    const-string v1, "jason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    goto/16 :goto_1ae

    :sswitch_c1
    const-string v1, "vela"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_1ae

    :sswitch_cd
    const-string v1, "ursa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x6

    goto/16 :goto_1ae

    :sswitch_d8
    const-string v1, "pine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x18

    goto/16 :goto_1ae

    :sswitch_e4
    const-string v1, "grus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto/16 :goto_1ae

    :sswitch_ef
    const-string v1, "polaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    goto/16 :goto_1ae

    :sswitch_fb
    const-string v1, "platina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    goto/16 :goto_1ae

    :sswitch_106
    const-string v1, "perseus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xa

    goto/16 :goto_1ae

    :sswitch_112
    const-string v1, "skywalker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto/16 :goto_1ae

    :sswitch_11d
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x19

    goto/16 :goto_1ae

    :sswitch_129
    const-string v1, "violet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x13

    goto/16 :goto_1ae

    :sswitch_135
    const-string v1, "sirius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    goto/16 :goto_1ae

    :sswitch_140
    const-string v1, "sakura"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x16

    goto/16 :goto_1ae

    :sswitch_14c
    const-string v1, "mobius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x23

    goto :goto_1ae

    :sswitch_157
    const-string v1, "laurus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto :goto_1ae

    :sswitch_162
    const-string v1, "sakura_india"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x17

    goto :goto_1ae

    :sswitch_16d
    const-string v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto :goto_1ae

    :sswitch_177
    const-string v1, "bullhead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_1ae

    :sswitch_181
    const-string v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    goto :goto_1ae

    :sswitch_18c
    const-string v1, "cereus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x14

    goto :goto_1ae

    :sswitch_197
    const-string v1, "cactus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x15

    goto :goto_1ae

    :sswitch_1a2
    const-string v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x12

    goto :goto_1ae

    :goto_1ad
    const/4 v0, -0x1

    :goto_1ae
    packed-switch v0, :pswitch_data_24e

    invoke-static {}, Lcom/miui/mishare/DeviceModel;->isBlackShark()Z

    move-result v0

    if-eqz v0, :cond_1bb

    return v3

    :pswitch_1b8
    return v3

    :pswitch_1b9
    return v2

    :pswitch_1ba
    return v4

    :cond_1bb
    return v4

    :sswitch_data_1bc
    .sparse-switch
        -0x52a5fa39 -> :sswitch_1a2
        -0x518a8fd3 -> :sswitch_197
        -0x514b988d -> :sswitch_18c
        -0x51253953 -> :sswitch_181
        -0x5025a28d -> :sswitch_177
        -0x4f5f234e -> :sswitch_16d
        -0x4cf7fca1 -> :sswitch_162
        -0x4226cb10 -> :sswitch_157
        -0x3fb56e39 -> :sswitch_14c
        -0x36395f99 -> :sswitch_140
        -0x35c5a195 -> :sswitch_135
        -0x30a86b81 -> :sswitch_129
        -0x2efd0837 -> :sswitch_11d
        -0x28b80f69 -> :sswitch_112
        -0x287054f3 -> :sswitch_106
        -0x1d6d75b3 -> :sswitch_fb
        -0x17bc6b18 -> :sswitch_ef
        0x308cc9 -> :sswitch_e4
        0x348170 -> :sswitch_d8
        0x36e9ab -> :sswitch_cd
        0x372c64 -> :sswitch_c1
        0x60390fb -> :sswitch_b5
        0x6167349 -> :sswitch_a9
        0x66318f9 -> :sswitch_9d
        0x68236c4 -> :sswitch_92
        0x6854fe5 -> :sswitch_87
        0x212e93b7 -> :sswitch_7b
        0x219c397a -> :sswitch_6f
        0x23c13c23 -> :sswitch_64
        0x27bd79a9 -> :sswitch_59
        0x34eb340d -> :sswitch_4d
        0x3a677f01 -> :sswitch_41
        0x3e83cfe6 -> :sswitch_35
        0x43763869 -> :sswitch_29
        0x56257364 -> :sswitch_1d
        0x62963789 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_1b8
        :pswitch_1b8
        :pswitch_1b8
        :pswitch_1b8
        :pswitch_1b8
        :pswitch_1b8
    .end packed-switch
.end method
