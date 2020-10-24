.class public Lmiuix/animation/font/VarFontUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field private static final DEFAULT_WGHT:I = 0x32

.field private static final FORMAT_WGHT:Ljava/lang/String; = "\'wght\' "

.field private static final IS_USING_VAR_FONT:Z

.field private static final KEY_FONT_WEIGHT:Ljava/lang/String; = "key_miui_font_weight_scale"

.field public static final MIN_WGHT:I

.field private static final MITYPE_WGHT:[I

.field private static final MIUI_WGHT:[I

.field private static final RULES:[[[I

.field private static final THEME_FONT_DIR:Ljava/lang/String; = "/data/system/theme/fonts/"


# direct methods
.method static constructor <clinit>()V
    .locals 14

    invoke-static {}, Lmiuix/animation/font/VarFontUtils;->isUsingThemeFont()Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_0

    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getTotalRam()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-static {}, Lmiuix/animation/font/VarFontUtils;->isFontAnimDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lmiuix/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    sput-object v4, Lmiuix/animation/font/VarFontUtils;->MIUI_WGHT:[I

    new-array v4, v0, [I

    fill-array-data v4, :array_1

    sput-object v4, Lmiuix/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    sput v0, Lmiuix/animation/font/VarFontUtils;->MIN_WGHT:I

    const/4 v4, 0x3

    new-array v5, v4, [[[I

    sput-object v5, Lmiuix/animation/font/VarFontUtils;->RULES:[[[I

    new-array v6, v0, [[I

    const/4 v7, 0x2

    new-array v8, v7, [I

    fill-array-data v8, :array_2

    aput-object v8, v6, v3

    new-array v8, v7, [I

    fill-array-data v8, :array_3

    aput-object v8, v6, v2

    new-array v8, v7, [I

    fill-array-data v8, :array_4

    aput-object v8, v6, v7

    new-array v8, v7, [I

    fill-array-data v8, :array_5

    aput-object v8, v6, v4

    new-array v8, v7, [I

    fill-array-data v8, :array_6

    const/4 v9, 0x4

    aput-object v8, v6, v9

    new-array v8, v7, [I

    fill-array-data v8, :array_7

    const/4 v10, 0x5

    aput-object v8, v6, v10

    new-array v8, v7, [I

    fill-array-data v8, :array_8

    aput-object v8, v6, v1

    new-array v8, v7, [I

    fill-array-data v8, :array_9

    const/4 v11, 0x7

    aput-object v8, v6, v11

    new-array v8, v7, [I

    fill-array-data v8, :array_a

    const/16 v12, 0x8

    aput-object v8, v6, v12

    new-array v8, v7, [I

    fill-array-data v8, :array_b

    const/16 v13, 0x9

    aput-object v8, v6, v13

    aput-object v6, v5, v3

    new-array v6, v0, [[I

    new-array v8, v7, [I

    fill-array-data v8, :array_c

    aput-object v8, v6, v3

    new-array v8, v7, [I

    fill-array-data v8, :array_d

    aput-object v8, v6, v2

    new-array v8, v7, [I

    fill-array-data v8, :array_e

    aput-object v8, v6, v7

    new-array v8, v7, [I

    fill-array-data v8, :array_f

    aput-object v8, v6, v4

    new-array v8, v7, [I

    fill-array-data v8, :array_10

    aput-object v8, v6, v9

    new-array v8, v7, [I

    fill-array-data v8, :array_11

    aput-object v8, v6, v10

    new-array v8, v7, [I

    fill-array-data v8, :array_12

    aput-object v8, v6, v1

    new-array v8, v7, [I

    fill-array-data v8, :array_13

    aput-object v8, v6, v11

    new-array v8, v7, [I

    fill-array-data v8, :array_14

    aput-object v8, v6, v12

    new-array v8, v7, [I

    fill-array-data v8, :array_15

    aput-object v8, v6, v13

    aput-object v6, v5, v2

    new-array v0, v0, [[I

    new-array v6, v7, [I

    fill-array-data v6, :array_16

    aput-object v6, v0, v3

    new-array v3, v7, [I

    fill-array-data v3, :array_17

    aput-object v3, v0, v2

    new-array v2, v7, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v7

    new-array v2, v7, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v4

    new-array v2, v7, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v9

    new-array v2, v7, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v10

    new-array v2, v7, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    new-array v1, v7, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v11

    new-array v1, v7, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v12

    new-array v1, v7, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v13

    aput-object v0, v5, v7

    goto :goto_1

    :cond_1
    sput v3, Lmiuix/animation/font/VarFontUtils;->MIN_WGHT:I

    new-array v0, v3, [I

    sput-object v0, Lmiuix/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    sput-object v0, Lmiuix/animation/font/VarFontUtils;->MIUI_WGHT:[I

    new-array v0, v3, [[[I

    sput-object v0, Lmiuix/animation/font/VarFontUtils;->RULES:[[[I

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x96
        0xc8
        0xfa
        0x131
        0x154
        0x190
        0x1e0
        0x21c
        0x276
        0x2bc
    .end array-data

    :array_1
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x6
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x9
    .end array-data

    :array_b
    .array-data 4
        0x7
        0x9
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_12
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_13
    .array-data 4
        0x4
        0x9
    .end array-data

    :array_14
    .array-data 4
        0x5
        0x9
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x9
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_17
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_18
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_1b
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_1c
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x8
    .end array-data

    :array_1e
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_1f
    .array-data 4
        0x8
        0x9
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getScaleWght(IFII)I
    .locals 3

    sget-boolean v0, Lmiuix/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    if-nez v0, :cond_0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lmiuix/animation/font/VarFontUtils;->getWghtRange(IF)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0, p2}, Lmiuix/animation/font/VarFontUtils;->getWghtByType(II)I

    move-result v0

    invoke-static {p0, p2}, Lmiuix/animation/font/VarFontUtils;->getWghtByType(II)I

    move-result p0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {p1, p2}, Lmiuix/animation/font/VarFontUtils;->getWghtByType(II)I

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 v1, 0x42480000    # 50.0f

    const/16 v2, 0x32

    if-ge p3, v2, :cond_1

    int-to-float p1, p3

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    int-to-float p3, v0

    mul-float/2addr p2, p3

    int-to-float p0, p0

    mul-float/2addr p1, p0

    add-float/2addr p2, p1

    :goto_0
    float-to-int p0, p2

    goto :goto_1

    :cond_1
    if-le p3, v2, :cond_2

    sub-int/2addr p3, v2

    int-to-float p3, p3

    div-float/2addr p3, v1

    sub-float/2addr p2, p3

    int-to-float p0, p0

    mul-float/2addr p2, p0

    int-to-float p0, p1

    mul-float/2addr p3, p0

    add-float/2addr p2, p3

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method static getSysFontScale(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_miui_font_weight_scale"

    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getWghtArray(I)[I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lmiuix/animation/font/VarFontUtils;->MIUI_WGHT:[I

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lmiuix/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    :goto_1
    return-object p0
.end method

.method private static getWghtByType(II)I
    .locals 0

    invoke-static {p1}, Lmiuix/animation/font/VarFontUtils;->getWghtArray(I)[I

    move-result-object p1

    aget p0, p1, p0

    return p0
.end method

.method private static getWghtRange(IF)[I
    .locals 1

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x41400000    # 12.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lmiuix/animation/font/VarFontUtils;->RULES:[[[I

    aget-object p1, v0, p1

    aget-object p0, p1, p0

    return-object p0
.end method

.method private static isFontAnimDisabled()Z
    .locals 3

    :try_start_0
    const-string v0, "ro.miui.ui.font.animation"

    invoke-static {v0}, Lmiuix/animation/utils/CommonUtils;->readProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "miuix_anim"

    const-string v2, "isFontAnimationEnabled failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static isUsingThemeFont()Z
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "miuix_anim"

    const-string v3, "isUsingThemeFont, failed to check theme font directory"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method static setVariationFont(Landroid/widget/TextView;I)V
    .locals 2

    sget-boolean v0, Lmiuix/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'wght\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
