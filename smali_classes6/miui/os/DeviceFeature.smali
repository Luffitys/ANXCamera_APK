.class public Lmiui/os/DeviceFeature;
.super Ljava/lang/Object;
.source "DeviceFeature.java"


# static fields
.field public static final BACKLIGHT_BIT:I

.field public static final PERSIST_SCREEN_EFFECT:Z

.field public static final SCREEN_EFFECT_CONFLICT:Z

.field public static final SUPPORT_3D_GESTURE:Z

.field public static final SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

.field public static final SUPPORT_CAMERA_ANIMATION:Z

.field public static final SUPPORT_DISPLAYFEATURE_CALLBACK:Z

.field public static final SUPPORT_DISPLAYFEATURE_HIDL:Z

.field public static final SUPPORT_GAME_MODE:Z

.field public static final SUPPORT_LAB_GESTURE:Z

.field public static final SUPPORT_NIGHT_LIGHT:Z

.field public static final SUPPORT_NIGHT_LIGHT_ADJ:Z

.field public static final SUPPORT_PAPERMODE_ANIMATION:Z

.field public static final SYSTEM_RESOURCES:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 13
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lmiui/os/DeviceFeature;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 18
    const/4 v0, 0x0

    const-string/jumbo v1, "support_autobrightness_optimize"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-gt v1, v3, :cond_20

    .line 20
    :cond_17
    const-string/jumbo v1, "sys.autobrightness_optimize"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_20
    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v0

    :goto_23
    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    .line 25
    nop

    .line 26
    const-string/jumbo v1, "sys.displayfeature_hidl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    .line 28
    sget-object v1, Lmiui/os/DeviceFeature;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v3, 0x11040019

    .line 29
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_CALLBACK:Z

    .line 35
    sget-object v1, Lmiui/os/DeviceFeature;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v3, 0x11040026

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT:Z

    .line 40
    const-string/jumbo v1, "support_papermode_animation"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    .line 46
    sget-object v1, Lmiui/os/DeviceFeature;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v3, 0x11040025

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    .line 50
    sget-object v1, Lmiui/os/DeviceFeature;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v3, 0x110a0010

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    .line 56
    const-string/jumbo v1, "sys.persist_screen_effect"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/os/DeviceFeature;->PERSIST_SCREEN_EFFECT:Z

    .line 61
    const-string/jumbo v1, "ro.df.effect.conflict"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_82

    .line 63
    const-string/jumbo v1, "ro.vendor.df.effect.conflict"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_80

    goto :goto_82

    :cond_80
    move v1, v0

    goto :goto_83

    :cond_82
    :goto_82
    move v1, v2

    :goto_83
    sput-boolean v1, Lmiui/os/DeviceFeature;->SCREEN_EFFECT_CONFLICT:Z

    .line 65
    const-string/jumbo v1, "support_touchfeature_gamemode"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_GAME_MODE:Z

    .line 83
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "sagit"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v1, :cond_9f

    move v1, v2

    goto :goto_a0

    :cond_9f
    move v1, v0

    :goto_a0
    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_LAB_GESTURE:Z

    .line 86
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "pyxis"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bb

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "vela"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    goto :goto_bb

    :cond_b9
    move v1, v0

    goto :goto_bc

    :cond_bb
    :goto_bb
    move v1, v2

    :goto_bc
    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_CAMERA_ANIMATION:Z

    .line 88
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "cepheus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_cd

    move v0, v2

    :cond_cd
    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_3D_GESTURE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final hasFlipSupport()Z
    .registers 2

    .line 80
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "draco"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final hasMirihiSupport()Z
    .registers 2

    .line 69
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "perseus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "andromeda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method public static final hasPopupCameraSupport()Z
    .registers 2

    .line 73
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "raphael"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "davinci"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 74
    const-string/jumbo v1, "raphaelin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "davinciin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 75
    const-string v1, "lmi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lmiin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 76
    const-string v1, "lmipro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lmiinpro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_55

    :cond_53
    const/4 v0, 0x0

    goto :goto_56

    :cond_55
    :goto_55
    const/4 v0, 0x1

    .line 73
    :goto_56
    return v0
.end method

.method public static final hasSupportAudioPromity()Z
    .registers 2

    .line 92
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.vendor.audio.us.proximity"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_13

    .line 93
    const-string/jumbo v1, "ro.audio.us.proximity"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    const/4 v0, 0x1

    .line 92
    :cond_14
    return v0
.end method
