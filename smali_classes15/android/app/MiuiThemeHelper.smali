.class public Landroid/app/MiuiThemeHelper;
.super Ljava/lang/Object;
.source "MiuiThemeHelper.java"


# static fields
.field private static final ICON_THEME:Ljava/lang/String; = "/data/system/theme/icons"

.field private static final KEY_MIUI_MOD_ICON_ENABLE:Ljava/lang/String; = "key_miui_mod_icon_enable"

.field public static final MIUI_RES_PATH:Ljava/lang/String; = "/system/framework/framework-miui-res.apk"

.field private static final MIUI_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"

.field private static volatile sMiuiOptimizationEnable:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .registers 2

    const-string v0, "/system/framework/framework-miui-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    return-void
.end method

.method public static canKeepActivityAlive(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 10

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_18

    iget-object v0, p2, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v1, p3, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget v2, v1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v3, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    iget-wide v4, v1, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-static {p0, v4, v5}, Landroid/content/res/MiuiConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v2

    xor-int/2addr v2, v3

    return v2

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget v1, v1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v1, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-le v0, v3, :cond_12

    const-string/jumbo v0, "persist.sys.miui_optimization"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_12

    return-object v2

    :cond_12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object v2

    :cond_19
    const/4 v0, 0x0

    :try_start_1a
    move-object v3, p0

    check-cast v3, Landroid/app/ApplicationPackageManager;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_1d} :catch_53

    move-object v0, v3

    nop

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const/4 v5, 0x0

    if-gt v3, v4, :cond_2b

    if-nez p2, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v5

    :goto_2a
    goto :goto_39

    :cond_2b
    if-eqz p2, :cond_39

    if-eqz p4, :cond_38

    iget-object v3, p4, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v1, v5

    :cond_39
    :goto_39
    if-nez v1, :cond_3c

    move-object v2, p2

    :cond_3c
    invoke-static {p1, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    if-nez v9, :cond_52

    move-object v3, p0

    check-cast v3, Landroid/app/ApplicationPackageManager;

    invoke-virtual {v3}, Landroid/app/ApplicationPackageManager;->getContext()Landroid/app/ContextImpl;

    move-result-object v3

    move-object v4, p1

    move-object v5, v2

    move v6, p3

    move-object v7, p4

    move v8, v1

    invoke-static/range {v3 .. v8}, Lmiui/content/res/IconCustomizer;->getIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_52
    return-object v9

    :catch_53
    move-exception v1

    if-eqz p3, :cond_5a

    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_5a
    return-object v2
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .registers 8

    const-string/jumbo v0, "ro.miui.cts"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/MiuiThemeHelper;->sMiuiOptimizationEnable:Z

    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_4e

    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-wide v0, v0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_36

    invoke-static {p1}, Lmiui/content/res/ThemeFontChangeHelper;->quitProcessIfNeed(Landroid/content/res/Configuration;)V

    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    invoke-static {}, Landroid/view/ExtraGLES20Canvas;->freeCaches()V

    :cond_36
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_40

    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    :cond_40
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_58

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-static {v2}, Lmiui/util/TypefaceUtils;->onMiuiFontChanged(Landroid/content/res/MiuiConfiguration;)V

    goto :goto_58

    :cond_4e
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_58

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-static {v0}, Lmiui/util/TypefaceUtils;->onUiModeChange(I)V

    goto :goto_59

    :cond_58
    :goto_58
    nop

    :goto_59
    return-void
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .registers 3

    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    :cond_8
    return-void
.end method

.method public static isInternationalBuildWithDefaultTheme()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isMiuiOptimizationEnabled()Z
    .registers 1

    sget-boolean v0, Landroid/app/MiuiThemeHelper;->sMiuiOptimizationEnable:Z

    return v0
.end method

.method public static isModIconEnabled()Z
    .registers 5

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_miui_mod_icon_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1

    :cond_1c
    return v1
.end method

.method public static isScreenshotMode()Z
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 17

    move-object/from16 v1, p0

    const/4 v0, -0x4

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, -0x1

    const/16 v8, 0x30

    const/4 v9, -0x3

    if-ge v5, v6, :cond_3f

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v10, -0x4

    const/16 v11, 0x39

    if-ne v0, v10, :cond_1f

    if-lt v6, v8, :cond_1f

    if-gt v6, v11, :cond_1f

    move v0, v5

    :cond_1f
    if-ne v2, v9, :cond_26

    const/16 v10, 0x2e

    if-ne v6, v10, :cond_26

    move v2, v5

    :cond_26
    if-eq v2, v9, :cond_2d

    if-lt v6, v8, :cond_2d

    if-gt v6, v11, :cond_2d

    move v3, v5

    :cond_2d
    if-ne v4, v7, :cond_3c

    const/16 v10, 0x61

    if-lt v6, v10, :cond_3c

    const/16 v10, 0x7a

    if-gt v6, v10, :cond_3c

    move v4, v5

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_43

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_3f
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    :goto_43
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eq v5, v7, :cond_127

    if-ge v3, v4, :cond_127

    if-ge v4, v5, :cond_127

    const/4 v0, 0x0

    :try_start_4e
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_56} :catch_124

    move v6, v0

    nop

    if-eq v3, v9, :cond_89

    const/4 v0, -0x2

    if-eq v4, v0, :cond_89

    const/4 v0, 0x4

    add-int/lit8 v7, v3, 0x1

    sub-int v9, v4, v3

    const/4 v14, 0x4

    :try_start_63
    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    :goto_72
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-ge v15, v14, :cond_7c

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_7c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_84} :catch_86

    move v10, v8

    goto :goto_89

    :catch_86
    move-exception v0

    const/4 v7, 0x0

    return-object v7

    :cond_89
    :goto_89
    const/16 v0, 0x100

    if-ge v10, v0, :cond_91

    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr v6, v0

    goto :goto_b2

    :cond_91
    const v0, 0x8000

    if-ge v10, v0, :cond_9b

    const/high16 v0, 0x47000000    # 32768.0f

    mul-float/2addr v6, v0

    const/4 v12, 0x1

    goto :goto_b2

    :cond_9b
    const/high16 v0, 0x800000

    if-ge v10, v0, :cond_a4

    const/high16 v0, 0x4b000000    # 8388608.0f

    mul-float/2addr v6, v0

    const/4 v12, 0x2

    goto :goto_b2

    :cond_a4
    int-to-long v7, v10

    const-wide v13, 0x80000000L

    cmp-long v0, v7, v13

    if-gez v0, :cond_b2

    const/high16 v0, 0x4f000000

    mul-float/2addr v6, v0

    const/4 v12, 0x3

    :cond_b2
    :goto_b2
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "px"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    const/4 v7, 0x0

    goto :goto_ff

    :cond_c1
    const-string v7, "dp"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_fe

    const-string v7, "dip"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d2

    goto :goto_fe

    :cond_d2
    const-string/jumbo v7, "sp"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dd

    const/4 v7, 0x2

    goto :goto_ff

    :cond_dd
    const-string/jumbo v7, "pt"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e8

    const/4 v7, 0x3

    goto :goto_ff

    :cond_e8
    const-string v7, "in"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f2

    const/4 v7, 0x4

    goto :goto_ff

    :cond_f2
    const-string v7, "mm"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fc

    const/4 v7, 0x5

    goto :goto_ff

    :cond_fc
    const/4 v7, 0x0

    return-object v7

    :cond_fe
    :goto_fe
    const/4 v7, 0x1

    :goto_ff
    float-to-int v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit16 v9, v9, -0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shl-int/lit8 v11, v12, 0x4

    or-int/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    or-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    return-object v0

    :catch_124
    move-exception v0

    const/4 v7, 0x0

    return-object v7

    :cond_127
    const/4 v7, 0x0

    return-object v7
.end method
