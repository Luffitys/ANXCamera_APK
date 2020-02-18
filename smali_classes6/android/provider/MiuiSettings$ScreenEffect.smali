.class public final Landroid/provider/MiuiSettings$ScreenEffect;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenEffect"
.end annotation


# static fields
.field public static final DARK_MODE_ENABLE:Ljava/lang/String; = "dark_mode_enable"

.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field public static final DEFAULT_PAPER_MODE_LEVEL:I

.field public static final DEFAULT_SCREEN_OPTIMIZE_MODE:I

.field public static final DEFAULT_SCREEN_SATURATION:I

.field public static final FLAG_SUPPORT_ADAPT_MODE:I = 0x1

.field public static final FLAG_SUPPORT_ENHANCE_MODE:I = 0x2

.field public static final FLAG_SUPPORT_MONOCHROME_MODE:I = 0x8

.field public static final FLAG_SUPPORT_STANDARD_MODE:I = 0x4

.field public static final GAME_HDR_LEVEL:Ljava/lang/String; = "game_hdr_level"

.field public static final GAME_MODE:Ljava/lang/String; = "screen_game_mode"

.field public static final GAME_MODE_DISABLE_EYECARE:I = 0x1

.field public static final GAME_MODE_ENABLE_HDR:I = 0x2

.field public static final MONOCHROME_MODE_DEFAULT:I = 0x2

.field public static final MONOCHROME_MODE_GLOBAL:I = 0x1

.field public static final MONOCHROME_MODE_LOCAL:I = 0x2

.field public static final NIGHT_LIGHT_LEVEL:Ljava/lang/String; = "night_light_level"

.field public static final PAPER_MODE_AUTO_TWILIGHT:I = 0x1

.field public static final PAPER_MODE_CUSTOMIZE_TIME:I = 0x2

.field public static final PAPER_MODE_DEFAULT:I = 0x1

.field public static final PAPER_MODE_GLOBAL:I = 0x1

.field public static final PAPER_MODE_LOCAL:I = 0x2

.field public static final PAPER_MODE_MAX_LEVEL:I

.field public static final PAPER_MODE_SCHEDULER_TYPE:Ljava/lang/String; = "paper_mode_scheduler_type"

.field public static final PAPER_MODE_TIME_CANCEL:I = 0x0

.field public static final PROPERTY_SCREEN_PAPER_MODE_LEVEL:Ljava/lang/String; = "persist.sys.eyecare_cache"

.field public static final SCREEN_COLOR_COOL:I = 0x3

.field public static final SCREEN_COLOR_LEVEL:Ljava/lang/String; = "screen_color_level"

.field public static final SCREEN_COLOR_NATURE:I = 0x2

.field public static final SCREEN_COLOR_SELECTED:Ljava/lang/String; = "screen_color_selected"

.field public static final SCREEN_COLOR_SPACE_MODE:Ljava/lang/String; = "color_space_mode"

.field public static final SCREEN_COLOR_WARM:I = 0x1

.field public static final SCREEN_EFFECT_SUPPORTED:I

.field public static final SCREEN_MONOCHROME_MODE:Ljava/lang/String; = "screen_monochrome_mode"

.field public static final SCREEN_MONOCHROME_MODE_ENABLED:Ljava/lang/String; = "screen_monochrome_mode_enabled"

.field public static final SCREEN_MONOCHROME_MODE_ENABLED_DEFAULT:Z = false

.field public static final SCREEN_MONOCHROME_MODE_WHITE_LIST:Ljava/lang/String; = "screen_monochrome_mode_white_list"

.field public static final SCREEN_OPTIMIZE_ADAPT:I = 0x1

.field public static final SCREEN_OPTIMIZE_ENHANCE:I = 0x2

.field public static final SCREEN_OPTIMIZE_EXPERT:I = 0x4

.field public static final SCREEN_OPTIMIZE_MODE:Ljava/lang/String; = "screen_optimize_mode"

.field public static final SCREEN_OPTIMIZE_STANDARD:I = 0x3

.field public static final SCREEN_PAPER_MODE:Ljava/lang/String; = "screen_paper_mode"

.field public static final SCREEN_PAPER_MODE_ENABLED:Ljava/lang/String; = "screen_paper_mode_enabled"

.field public static final SCREEN_PAPER_MODE_ENABLED_DEFAULT:Z = false

.field public static final SCREEN_PAPER_MODE_LEVEL:Ljava/lang/String; = "screen_paper_mode_level"

.field public static final SCREEN_PAPER_MODE_TIME_ENABLED:Ljava/lang/String; = "screen_paper_mode_time_enabled"

.field public static final SCREEN_PAPER_MODE_TIME_ENABLED_DEFAULT:Z = false

.field public static final SCREEN_PAPER_MODE_TIME_END:Ljava/lang/String; = "screen_paper_mode_time_end"

.field public static final SCREEN_PAPER_MODE_TIME_START:Ljava/lang/String; = "screen_paper_mode_time_start"

.field public static final SCREEN_PAPER_MODE_TWILIGHT_END:Ljava/lang/String; = "screen_paper_mode_twilight_end"

.field public static final SCREEN_PAPER_MODE_TWILIGHT_END_DEAULT:I = 0x438

.field public static final SCREEN_PAPER_MODE_TWILIGHT_START:Ljava/lang/String; = "screen_paper_mode_twilight_start"

.field public static final SCREEN_PAPER_MODE_TWILIGHT_START_DEAULT:I = 0x168

.field public static final SCREEN_PAPER_MODE_WHITE_LIST:Ljava/lang/String; = "screen_paper_mode_white_list"

.field public static final SCREEN_SATURATION_STANDARD:I = 0xa

.field public static final SCREEN_SATURATION_VIVID:I = 0xb

.field public static final SCREEN_UNLIMITED_COLOR:I = 0x17

.field public static final SUPPORT_UNLIMITED_COLOR_MODE:Z

.field public static final isScreenPaperModeSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 7043
    const/4 v0, 0x0

    const-string/jumbo v1, "screen_effect_supported"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    .line 7045
    const-string/jumbo v1, "ro.vendor.all_modes.colorpick_adjust"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 7046
    const-string/jumbo v1, "ro.all_modes.colorpick_adjust"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    move v1, v0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    sput-boolean v1, Landroid/provider/MiuiSettings$ScreenEffect;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    .line 7084
    invoke-static {}, Landroid/provider/MiuiSettings$ScreenEffect;->getDefaultScreenOptimizeMode()I

    move-result v1

    sput v1, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    .line 7086
    nop

    .line 7087
    const-string/jumbo v1, "support_screen_paper_mode"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/provider/MiuiSettings$ScreenEffect;->isScreenPaperModeSupported:Z

    .line 7098
    invoke-static {}, Landroid/provider/MiuiSettings$ScreenEffect;->getDefaultSaturation()I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_SATURATION:I

    .line 7122
    const/high16 v0, 0x41000000    # 8.0f

    .line 7123
    const-string/jumbo v1, "paper_mode_max_level"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 7122
    const-string/jumbo v1, "sys.paper_mode_max_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->PAPER_MODE_MAX_LEVEL:I

    .line 7125
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->PAPER_MODE_MAX_LEVEL:I

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x5

    const-string/jumbo v1, "sys.paper_mode_default_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultSaturation()I
    .registers 3

    .line 7101
    const/16 v0, 0xa

    .line 7102
    .local v0, "defaultSaturation":I
    const-string/jumbo v1, "is_hongmi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 7103
    const/16 v0, 0xb

    .line 7105
    :cond_e
    const-string v1, "display_ce"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getDefaultScreenOptimizeMode()I
    .registers 2

    .line 7090
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 7091
    const/4 v1, 0x2

    goto :goto_9

    :cond_8
    nop

    .line 7090
    :goto_9
    return v1
.end method

.method public static getScreenModePkgList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenModePkgList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 7139
    nop

    .line 7140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7139
    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7142
    .local v0, "packageList":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7143
    .local v1, "pkg2PaperMode":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 7144
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 7145
    .local v2, "packageArr":[Ljava/lang/String;
    if-eqz v2, :cond_3e

    .line 7146
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    array-length v4, v2

    if-ge v3, v4, :cond_3e

    .line 7147
    aget-object v4, v2, v3

    .line 7148
    .local v4, "pair":Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 7149
    .local v5, "equalIndex":I
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 7150
    .local v6, "pairKey":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 7151
    .local v7, "pairValue":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7146
    .end local v4    # "pair":Ljava/lang/String;
    .end local v5    # "equalIndex":I
    .end local v6    # "pairKey":Ljava/lang/String;
    .end local v7    # "pairValue":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 7155
    .end local v2    # "packageArr":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_3e
    return-object v1
.end method

.method public static isInPaperModeTimeSchedule(Landroid/content/Context;II)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startTime"    # I
    .param p2, "endTime"    # I

    .line 7199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 7200
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 7201
    .local v1, "hour":I
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 7202
    .local v2, "minute":I
    mul-int/lit8 v3, v1, 0x3c

    add-int/2addr v3, v2

    .line 7203
    .local v3, "now":I
    const/4 v4, 0x0

    .line 7205
    .local v4, "isIn":Z
    if-le p1, p2, :cond_1e

    .line 7207
    if-lt v3, p2, :cond_1c

    if-ge v3, p1, :cond_1c

    .line 7209
    const/4 v4, 0x0

    goto :goto_27

    .line 7212
    :cond_1c
    const/4 v4, 0x1

    goto :goto_27

    .line 7214
    :cond_1e
    if-ge p1, p2, :cond_27

    .line 7215
    if-lt v3, p1, :cond_26

    if-ge v3, p2, :cond_26

    .line 7217
    const/4 v4, 0x1

    goto :goto_27

    .line 7220
    :cond_26
    const/4 v4, 0x0

    .line 7225
    :cond_27
    :goto_27
    return v4
.end method

.method public static isScreenPaperMode()Z
    .registers 1

    .line 7029
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hareware/display/DisplayFeatureManager;->getEyeCare()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static setScreenModePkgList(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "screenModePkgList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7159
    .local p1, "pkg2PaperMode":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_51

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_51

    .line 7163
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7164
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7165
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 7166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7167
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7168
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7170
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7171
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 7172
    .local v4, "value":Ljava/lang/Boolean;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7174
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 7175
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7177
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_44
    goto :goto_16

    .line 7178
    :cond_45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7178
    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7180
    return-void

    .line 7160
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_51
    :goto_51
    return-void
.end method

.method public static setScreenPaperMode(Z)V
    .registers 3
    .param p0, "isScreenPaperMode"    # Z

    .line 7034
    if-eqz p0, :cond_13

    .line 7035
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    const-string/jumbo v1, "persist.sys.eyecare_cache"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7037
    .local v0, "level":I
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/hareware/display/DisplayFeatureManager;->setEyeCare(I)V

    .line 7038
    .end local v0    # "level":I
    goto :goto_1b

    .line 7039
    :cond_13
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/hareware/display/DisplayFeatureManager;->setEyeCare(I)V

    .line 7041
    :goto_1b
    return-void
.end method
