.class public Lmiui/hardware/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
    }
.end annotation


# static fields
.field private static final CONFIG_SERVICENAME_RESOURCEID:I

.field public static final DEFALUT_GAMUT_MODE:I = 0x0

.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field private static final DISPLAY_FEATURE_SERVICE:Ljava/lang/String; = "DisplayFeatureControl"

.field public static final DISPLAY_INFO_GRAY:I = 0x0

.field private static final DOZE_BRIGHTNESS_STATE:I = 0x19

.field public static final EXT_COLOR_PROC_STATE:I = 0xf

.field private static final HIDL_SERVICENAME_DEFAULT:Ljava/lang/String; = "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

.field public static final PROPERTY_ASSERTIVE_DISPLAY:Ljava/lang/String; = "persist.sys.ltm_enable"

.field public static final PROPERTY_GAMUT_MODE:Ljava/lang/String; = "persist.sys.gamut_mode"

.field public static final PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field public static final PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field public static final SCREEN_ADAPT:I = 0x0

.field public static final SCREEN_ENHANCE:I = 0x1

.field public static final SCREEN_EXPERT:I = 0x1a

.field public static final SCREEN_EYECARE:I = 0x3

.field public static final SCREEN_GAME_HDR:I = 0x13

.field public static final SCREEN_HIGHLIGHT:I = 0xb

.field public static final SCREEN_MONOCHROME:I = 0x4

.field public static final SCREEN_NIGHTLIGHT:I = 0x9

.field public static final SCREEN_STANDARD:I = 0x2

.field public static final SCREEN_SUNLIGHT:I = 0x8

.field public static final SCREEN_UNLIMITED_COLOR:I = 0x17

.field public static final SET_COLOR_MODE:I = 0x7530

.field public static final SET_DC_PARSE_STATE:I = 0x9c40

.field private static final SUPPORT_SET_FEATURE:Z

.field private static TAG:Ljava/lang/String; = null

.field public static final UPDATE_DFPS_MODE:I = 0x2733

.field public static final UPDATE_PCC_LEVEL:I = 0x4e20

.field public static final UPDATE_WCG_STATE:I = 0x2710

.field private static volatile sInstance:Lmiui/hardware/display/DisplayFeatureManager;


# instance fields
.field private mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

.field private mLock:Ljava/lang/Object;

.field private mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 24
    const-string v0, "DisplayFeatureManager"

    sput-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    .line 57
    nop

    .line 58
    const-string/jumbo v0, "support_screen_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmiui/hardware/display/DisplayFeatureManager;->SUPPORT_SET_FEATURE:Z

    .line 62
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_displayFeatureHidlServiceName"

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initServiceDeathRecipient()V

    .line 84
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_10
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v1
.end method

.method static synthetic access$000(Lmiui/hardware/display/DisplayFeatureManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lmiui/hardware/display/DisplayFeatureManager;

    .line 23
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/hardware/display/DisplayFeatureManager;Lmiui/hardware/display/DisplayFeatureServiceProxy;)Lmiui/hardware/display/DisplayFeatureServiceProxy;
    .registers 2
    .param p0, "x0"    # Lmiui/hardware/display/DisplayFeatureManager;
    .param p1, "x1"    # Lmiui/hardware/display/DisplayFeatureServiceProxy;

    .line 23
    iput-object p1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    return-object p1
.end method

.method public static getInstance()Lmiui/hardware/display/DisplayFeatureManager;
    .registers 2

    .line 72
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    if-nez v0, :cond_17

    .line 73
    const-class v0, Lmiui/hardware/display/DisplayFeatureManager;

    monitor-enter v0

    .line 74
    :try_start_7
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    if-nez v1, :cond_12

    .line 75
    new-instance v1, Lmiui/hardware/display/DisplayFeatureManager;

    invoke-direct {v1}, Lmiui/hardware/display/DisplayFeatureManager;-><init>()V

    sput-object v1, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    .line 77
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 79
    :cond_17
    :goto_17
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    return-object v0
.end method

.method private initProxyLocked()V
    .registers 6

    .line 130
    :try_start_0
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_4d

    .line 132
    sget v0, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    if-nez v0, :cond_c

    .line 133
    const-string/jumbo v0, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

    goto :goto_16

    :cond_c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "hidlServiceName":Ljava/lang/String;
    :goto_16
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initProxyLoced CONFIG_SERVICENAME_RESOURCEID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hidlServiceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v1

    .line 137
    .local v1, "hb":Landroid/os/IHwBinder;
    if-eqz v1, :cond_4c

    .line 138
    iget-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x2711

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 139
    new-instance v2, Lmiui/hardware/display/DisplayFeatureServiceProxy;

    invoke-direct {v2, v1}, Lmiui/hardware/display/DisplayFeatureServiceProxy;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    .line 142
    .end local v0    # "hidlServiceName":Ljava/lang/String;
    .end local v1    # "hb":Landroid/os/IHwBinder;
    :cond_4c
    goto :goto_62

    .line 143
    :cond_4d
    const-string v0, "DisplayFeatureControl"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 144
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_62

    .line 145
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 146
    new-instance v1, Lmiui/hardware/display/DisplayFeatureServiceProxy;

    invoke-direct {v1, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_62} :catch_63
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_62} :catch_63

    .line 151
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_62
    :goto_62
    goto :goto_6b

    .line 149
    :catch_63
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "initProxyLocked failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6b
    return-void
.end method

.method private initServiceDeathRecipient()V
    .registers 2

    .line 155
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_c

    .line 156
    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$1;

    invoke-direct {v0, p0}, Lmiui/hardware/display/DisplayFeatureManager$1;-><init>(Lmiui/hardware/display/DisplayFeatureManager;)V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

    goto :goto_13

    .line 166
    :cond_c
    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$2;

    invoke-direct {v0, p0}, Lmiui/hardware/display/DisplayFeatureManager$2;-><init>(Lmiui/hardware/display/DisplayFeatureManager;)V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 176
    :goto_13
    return-void
.end method


# virtual methods
.method public getColorPrefer()I
    .registers 3

    .line 181
    const-string/jumbo v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenGamut()I
    .registers 3

    .line 192
    const-string/jumbo v0, "persist.sys.gamut_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAdEnable()Z
    .registers 3

    .line 186
    const-string/jumbo v0, "persist.sys.ltm_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerCallback(Ljava/lang/Object;)V
    .registers 5
    .param p1, "callback"    # Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-nez v1, :cond_a

    .line 120
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V

    .line 122
    :cond_a
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_14

    .line 123
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->registerCallback(ILjava/lang/Object;)V

    .line 125
    :cond_14
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setDozeBrightness(I)V
    .registers 5
    .param p1, "brightness"    # I

    .line 213
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_TO_NORMAL:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    .line 215
    .local v0, "modeId":Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
    const/4 v1, 0x1

    if-le p1, v1, :cond_8

    .line 216
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_BRIGHTNESS_HBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    goto :goto_c

    .line 217
    :cond_8
    if-ne p1, v1, :cond_c

    .line 218
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_BRIGHTNESS_LBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    .line 220
    :cond_c
    :goto_c
    const/16 v1, 0x19

    invoke-virtual {v0}, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->ordinal()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 221
    return-void
.end method

.method public setScreenEffect(II)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .line 90
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenEffect mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-nez v1, :cond_29

    .line 93
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V

    .line 95
    :cond_29
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_35

    .line 96
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {v1, v2, p1, p2, v3}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setFeature(IIII)V

    .line 98
    :cond_35
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public setScreenEffect(III)V
    .registers 8
    .param p1, "mode"    # I
    .param p2, "value"    # I
    .param p3, "cookie"    # I

    .line 105
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenEffect mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-nez v1, :cond_31

    .line 108
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V

    .line 110
    :cond_31
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_3b

    .line 111
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2, p3}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setFeature(IIII)V

    .line 113
    :cond_3b
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method
