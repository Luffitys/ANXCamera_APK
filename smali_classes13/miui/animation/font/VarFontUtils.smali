.class public Lmiui/animation/font/VarFontUtils;
.super Ljava/lang/Object;
.source "VarFontUtils.java"


# static fields
.field private static final DEFAULT_WGHT:I = 0x32

.field private static final FORMAT_WGHT:Ljava/lang/String; = "\'wght\' "

.field private static final IS_USING_VAR_FONT:Z

.field private static final KEY_FONT_WEIGHT:Ljava/lang/String; = "key_miui_font_weight_scale"

.field public static final MIN_WGHT:I

.field private static final MIPRO_FONT:Landroid/graphics/Typeface;

.field private static final MITYPE_FAMILY:Ljava/lang/String; = "mitype"

.field private static final MITYPE_FONT:Landroid/graphics/Typeface;

.field private static final MITYPE_MONO_FAMILY:Ljava/lang/String; = "mitype-mono"

.field private static final MITYPE_MONO_FONT:Landroid/graphics/Typeface;

.field private static final MITYPE_WGHT:[I

.field private static final MIUI_FAMILY:Ljava/lang/String; = "mipro"

.field private static final MIUI_WGHT:[I

.field private static final RULES:[[[I

.field private static final THEME_FONT_DIR:Ljava/lang/String; = "/data/system/theme/fonts/"

.field private static sMethodCreateVarFont:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const-string v0, "mipro"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiui/animation/font/VarFontUtils;->MIPRO_FONT:Landroid/graphics/Typeface;

    const-string v0, "mitype"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiui/animation/font/VarFontUtils;->MITYPE_FONT:Landroid/graphics/Typeface;

    const-string v0, "mitype-mono"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiui/animation/font/VarFontUtils;->MITYPE_MONO_FONT:Landroid/graphics/Typeface;

    invoke-static {}, Lmiui/animation/font/VarFontUtils;->getMethodCreateVarFont()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/animation/font/VarFontUtils;->sMethodCreateVarFont:Ljava/lang/reflect/Method;

    invoke-static {}, Lmiui/animation/font/VarFontUtils;->isUsingThemeFont()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    sput-boolean v0, Lmiui/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    if-eqz v0, :cond_128

    const/16 v0, 0xa

    new-array v3, v0, [I

    fill-array-data v3, :array_136

    sput-object v3, Lmiui/animation/font/VarFontUtils;->MIUI_WGHT:[I

    new-array v3, v0, [I

    fill-array-data v3, :array_14e

    sput-object v3, Lmiui/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    sput v0, Lmiui/animation/font/VarFontUtils;->MIN_WGHT:I

    const/4 v3, 0x3

    new-array v4, v3, [[[I

    sput-object v4, Lmiui/animation/font/VarFontUtils;->RULES:[[[I

    new-array v5, v0, [[I

    const/4 v6, 0x2

    new-array v7, v6, [I

    fill-array-data v7, :array_166

    aput-object v7, v5, v1

    new-array v7, v6, [I

    fill-array-data v7, :array_16e

    aput-object v7, v5, v2

    new-array v7, v6, [I

    fill-array-data v7, :array_176

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_17e

    aput-object v7, v5, v3

    new-array v7, v6, [I

    fill-array-data v7, :array_186

    const/4 v8, 0x4

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_18e

    const/4 v9, 0x5

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_196

    const/4 v10, 0x6

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_19e

    const/4 v11, 0x7

    aput-object v7, v5, v11

    new-array v7, v6, [I

    fill-array-data v7, :array_1a6

    const/16 v12, 0x8

    aput-object v7, v5, v12

    new-array v7, v6, [I

    fill-array-data v7, :array_1ae

    const/16 v13, 0x9

    aput-object v7, v5, v13

    aput-object v5, v4, v1

    new-array v5, v0, [[I

    new-array v7, v6, [I

    fill-array-data v7, :array_1b6

    aput-object v7, v5, v1

    new-array v7, v6, [I

    fill-array-data v7, :array_1be

    aput-object v7, v5, v2

    new-array v7, v6, [I

    fill-array-data v7, :array_1c6

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_1ce

    aput-object v7, v5, v3

    new-array v7, v6, [I

    fill-array-data v7, :array_1d6

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_1de

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_1e6

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_1ee

    aput-object v7, v5, v11

    new-array v7, v6, [I

    fill-array-data v7, :array_1f6

    aput-object v7, v5, v12

    new-array v7, v6, [I

    fill-array-data v7, :array_1fe

    aput-object v7, v5, v13

    aput-object v5, v4, v2

    new-array v0, v0, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_206

    aput-object v5, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_20e

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_216

    aput-object v1, v0, v6

    new-array v1, v6, [I

    fill-array-data v1, :array_21e

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_226

    aput-object v1, v0, v8

    new-array v1, v6, [I

    fill-array-data v1, :array_22e

    aput-object v1, v0, v9

    new-array v1, v6, [I

    fill-array-data v1, :array_236

    aput-object v1, v0, v10

    new-array v1, v6, [I

    fill-array-data v1, :array_23e

    aput-object v1, v0, v11

    new-array v1, v6, [I

    fill-array-data v1, :array_246

    aput-object v1, v0, v12

    new-array v1, v6, [I

    fill-array-data v1, :array_24e

    aput-object v1, v0, v13

    aput-object v0, v4, v6

    goto :goto_134

    :cond_128
    sput v1, Lmiui/animation/font/VarFontUtils;->MIN_WGHT:I

    new-array v0, v1, [I

    sput-object v0, Lmiui/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    sput-object v0, Lmiui/animation/font/VarFontUtils;->MIUI_WGHT:[I

    new-array v0, v1, [[[I

    sput-object v0, Lmiui/animation/font/VarFontUtils;->RULES:[[[I

    :goto_134
    return-void

    nop

    :array_136
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

    :array_14e
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

    :array_166
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_16e
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_176
    .array-data 4
        0x1
        0x6
    .end array-data

    :array_17e
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_186
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_18e
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_196
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_19e
    .array-data 4
        0x5
        0x9
    .end array-data

    :array_1a6
    .array-data 4
        0x6
        0x9
    .end array-data

    :array_1ae
    .array-data 4
        0x7
        0x9
    .end array-data

    :array_1b6
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1be
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_1c6
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_1ce
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_1d6
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_1de
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_1e6
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_1ee
    .array-data 4
        0x4
        0x9
    .end array-data

    :array_1f6
    .array-data 4
        0x5
        0x9
    .end array-data

    :array_1fe
    .array-data 4
        0x6
        0x9
    .end array-data

    :array_206
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_20e
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_216
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_21e
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_226
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_22e
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_236
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_23e
    .array-data 4
        0x6
        0x8
    .end array-data

    :array_246
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_24e
    .array-data 4
        0x8
        0x9
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBaseFont(I)Landroid/graphics/Typeface;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    sget-object v0, Lmiui/animation/font/VarFontUtils;->MIPRO_FONT:Landroid/graphics/Typeface;

    return-object v0

    :cond_9
    sget-object v0, Lmiui/animation/font/VarFontUtils;->MITYPE_MONO_FONT:Landroid/graphics/Typeface;

    return-object v0

    :cond_c
    sget-object v0, Lmiui/animation/font/VarFontUtils;->MITYPE_FONT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static getMethodCreateVarFont()Ljava/lang/reflect/Method;
    .registers 5

    :try_start_0
    const-string v0, "android.graphics.Typeface"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createFromTypefaceWithVariation"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Typeface;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v1

    :catch_1a
    move-exception v0

    const-string v1, "miuisdk_anim"

    const-string v2, "getMethodCreateVarFont failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getScaleWght(IFI)I
    .registers 4

    invoke-static {}, Lmiui/animation/font/VarFontUtils;->getSysFontScale()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lmiui/animation/font/VarFontUtils;->getScaleWght(IFII)I

    move-result v0

    return v0
.end method

.method static getScaleWght(IFII)I
    .registers 12

    sget-boolean v0, Lmiui/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    if-nez v0, :cond_5

    return p0

    :cond_5
    invoke-static {p0, p1}, Lmiui/animation/font/VarFontUtils;->getWghtRange(IF)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1, p2}, Lmiui/animation/font/VarFontUtils;->getWghtByType(II)I

    move-result v1

    invoke-static {p0, p2}, Lmiui/animation/font/VarFontUtils;->getWghtByType(II)I

    move-result v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3, p2}, Lmiui/animation/font/VarFontUtils;->getWghtByType(II)I

    move-result v3

    move v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42480000    # 50.0f

    const/16 v7, 0x32

    if-ge p3, v7, :cond_2e

    int-to-float v7, p3

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    int-to-float v6, v1

    mul-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v4, v5

    goto :goto_3c

    :cond_2e
    if-le p3, v7, :cond_3c

    add-int/lit8 v7, p3, -0x32

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    int-to-float v6, v2

    mul-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v4, v5

    goto :goto_3d

    :cond_3c
    :goto_3c
    nop

    :goto_3d
    return v4
.end method

.method static getSysFontScale()I
    .registers 3

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_miui_font_weight_scale"

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getVarTypeface(II)Landroid/graphics/Typeface;
    .registers 11

    sget-boolean v0, Lmiui/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    if-eqz v0, :cond_36

    sget-object v0, Lmiui/animation/font/VarFontUtils;->sMethodCreateVarFont:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_36

    :try_start_8
    const-class v1, Landroid/graphics/Typeface;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lmiui/animation/font/VarFontUtils;->getBaseFont(I)Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-array v5, v3, [Landroid/graphics/fonts/FontVariationAxis;

    new-instance v6, Landroid/graphics/fonts/FontVariationAxis;

    const-string v7, "wght"

    int-to-float v8, p0

    invoke-direct {v6, v7, v8}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    aput-object v6, v5, v4

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    move-exception v0

    const-string v1, "miuisdk_anim"

    const-string v2, "getVarTypeface failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getWghtArray(I)[I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    goto :goto_a

    :cond_7
    sget-object v0, Lmiui/animation/font/VarFontUtils;->MIUI_WGHT:[I

    goto :goto_c

    :cond_a
    :goto_a
    sget-object v0, Lmiui/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    :goto_c
    return-object v0
.end method

.method private static getWghtByType(II)I
    .registers 3

    invoke-static {p1}, Lmiui/animation/font/VarFontUtils;->getWghtArray(I)[I

    move-result-object v0

    aget v0, v0, p0

    return v0
.end method

.method private static getWghtRange(IF)[I
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_15

    :cond_9
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_15

    const/high16 v1, 0x41400000    # 12.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_15

    const/4 v0, 0x2

    :cond_15
    :goto_15
    sget-object v1, Lmiui/animation/font/VarFontUtils;->RULES:[[[I

    aget-object v1, v1, v0

    aget-object v1, v1, p0

    return-object v1
.end method

.method private static isUsingThemeFont()Z
    .registers 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    array-length v3, v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_1a

    if-lez v3, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    :cond_19
    goto :goto_22

    :catch_1a
    move-exception v2

    const-string v3, "miuisdk_anim"

    const-string v4, "isUsingThemeFont, failed to check theme font directory"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return v1
.end method

.method static setVariationFont(Landroid/widget/TextView;I)V
    .registers 4

    sget-boolean v0, Lmiui/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'wght\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_18
    return-void
.end method
