.class public Landroid/content/res/MiuiConfiguration;
.super Ljava/lang/Object;
.source "MiuiConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/content/res/MiuiConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static BASE_RESTART_FLAG:J = 0x0L

.field public static final CONTACTS_PKG_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final KEY_VAR_FONT_SCALE:Ljava/lang/String; = "key_var_font_scale"

.field public static final LAUNCHER_PKG_NAME:Ljava/lang/String; = "com.miui.home"

.field public static final MMS_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_INTEREST_CHANGE_FLAG:J = 0x10007899L

.field private static final TAG:Ljava/lang/String; = "MiuiConfiguration"

.field public static final THEME_FLAG_ALARM:J = 0x400L

.field public static final THEME_FLAG_ALARMSTYLE:J = 0x100000L

.field public static final THEME_FLAG_AUDIO_EFFECT:J = 0x8000L

.field public static final THEME_FLAG_BOOT_ANIMATION:J = 0x20L

.field public static final THEME_FLAG_BOOT_AUDIO:J = 0x40L

.field public static final THEME_FLAG_CLOCK:J = 0x10000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_FLAG_CLOCK_1x2:J = 0x800000L

.field public static final THEME_FLAG_CLOCK_2x2:J = 0x1000000L

.field public static final THEME_FLAG_CLOCK_2x4:J = 0x2000000L

.field public static final THEME_FLAG_CONTACT:J = 0x800L

.field public static final THEME_FLAG_FONT:J = 0x10L

.field public static final THEME_FLAG_FRAMEWORK:J = 0x1L

.field public static final THEME_FLAG_FREE_HOME:J = 0x400000L

.field public static final THEME_FLAG_FREE_HOME_DEPRECATED:J = 0x200000L

.field public static final THEME_FLAG_ICON:J = 0x8L

.field public static final THEME_FLAG_LAST:J = 0x8000000L

.field public static final THEME_FLAG_LAUNCHER:J = 0x4000L

.field public static final THEME_FLAG_LOCKSCREEN:J = 0x4L

.field public static final THEME_FLAG_LOCKSTYLE:J = 0x1000L

.field public static final THEME_FLAG_MIWALLPAPER:J = 0x80000L

.field public static final THEME_FLAG_MMS:J = 0x80L

.field public static final THEME_FLAG_NOTIFICATION:J = 0x200L

.field public static final THEME_FLAG_PHOTO_FRAME:J = 0x20000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_FLAG_PHOTO_FRAME_2x2:J = 0x4000000L

.field public static final THEME_FLAG_PHOTO_FRAME_2x4:J = 0x8000000L

.field public static final THEME_FLAG_PHOTO_FRAME_4x4:J = 0x40000L

.field public static final THEME_FLAG_RINGTONE:J = 0x100L

.field public static final THEME_FLAG_STATUSBAR:J = 0x2000L

.field public static final THEME_FLAG_THIRD_APP:J = 0x10000000L

.field public static final THEME_FLAG_VAR_FONT:J = 0x20000000L

.field public static final THEME_FLAG_WALLPAPER:J = 0x2L

.field public static final THEME_FONT_FLAGS:J = 0x10L

.field public static final UI_MODE_TYPE_SCALE_EXTRAL_SMALL:I = 0xa

.field public static final UI_MODE_TYPE_SCALE_GODZILLA:I = 0xb

.field public static final UI_MODE_TYPE_SCALE_HUGE:I = 0xf

.field public static final UI_MODE_TYPE_SCALE_LARGE:I = 0xe

.field public static final UI_MODE_TYPE_SCALE_MEDIUM:I = 0xd

.field public static final UI_MODE_TYPE_SCALE_SMALL:I = 0xc

.field private static sForceScreenLayoutSize:I

.field private static sHadReadForceScreenLayoutSize:Z


# instance fields
.field public extraData:Landroid/os/Bundle;

.field private lastFontThemeChanged:I

.field public themeChanged:I

.field public themeChangedFlags:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x19

    sput-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    const/4 v0, -0x1

    sput v0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    return-void
.end method

.method private static getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;
    .registers 4

    :try_start_0
    const-class v0, Landroid/content/res/Configuration;

    const-string v1, "extraConfig"

    const-class v2, Landroid/content/res/MiuiConfiguration;

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/MiuiConfiguration;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    const-string v1, "MiuiConfiguration"

    const-string v2, "getExtraConfig from Configuration failed"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFontScale(I)F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_56

    return v0

    :pswitch_6
    const v0, 0x3faa3d71    # 1.33f

    const-string v1, "hugeui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :pswitch_14
    const v0, 0x3f95c28f    # 1.17f

    const-string v1, "largeui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :pswitch_22
    const-string v1, "mediumui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :pswitch_2d
    const v0, 0x3f6b851f    # 0.92f

    const-string v1, "smallui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :pswitch_3b
    const/high16 v0, 0x3fc00000    # 1.5f

    const-string v1, "godzillaui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :pswitch_48
    const v0, 0x3f4f5c29    # 0.81f

    const-string v1, "extral_smallui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :pswitch_data_56
    .packed-switch 0xa
        :pswitch_48
        :pswitch_3b
        :pswitch_2d
        :pswitch_22
        :pswitch_14
        :pswitch_6
    .end packed-switch
.end method

.method public static getScaleMode()I
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_28

    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_29

    const/16 v3, 0xf

    and-int/lit8 v0, v2, 0xf

    const/16 v2, 0xa

    if-eq v0, v2, :cond_28

    const/16 v2, 0xc

    if-eq v0, v2, :cond_28

    const/16 v2, 0xd

    if-eq v0, v2, :cond_28

    const/16 v2, 0xe

    if-eq v0, v2, :cond_28

    if-eq v0, v3, :cond_28

    const/16 v2, 0xb

    if-eq v0, v2, :cond_28

    const/4 v0, 0x1

    :cond_28
    goto :goto_2a

    :catch_29
    move-exception v1

    :goto_2a
    return v0
.end method

.method public static needNewResources(I)Z
    .registers 2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static needRestart3rdApp(J)Z
    .registers 6

    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static needRestartActivity(Ljava/lang/String;J)Z
    .registers 4

    if-eqz p0, :cond_29

    const-string v0, "com.miui.home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartLauncher(J)Z

    move-result v0

    return v0

    :cond_f
    const-string v0, "com.android.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartMms(J)Z

    move-result v0

    return v0

    :cond_1c
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartContacts(J)Z

    move-result v0

    return v0

    :cond_29
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestart3rdApp(J)Z

    move-result v0

    return v0
.end method

.method public static needRestartContacts(J)Z
    .registers 6

    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static needRestartLauncher(J)Z
    .registers 6

    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static needRestartMms(J)Z
    .registers 6

    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static needRestartStatusBar(J)Z
    .registers 6

    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static resetScreenLayoutSize(I)I
    .registers 5

    sget-boolean v0, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    const/4 v1, -0x1

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    const-string v2, "ro.miui.screen_layout_size"

    const-string v3, ""

    invoke-static {v2, v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "small"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_38

    :cond_19
    const-string v0, "normal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x2

    goto :goto_38

    :cond_23
    const-string v0, "large"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x3

    goto :goto_38

    :cond_2d
    const-string v0, "xlarge"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x4

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    sput v0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    :cond_3a
    sget v0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    if-ne v0, v1, :cond_3f

    move v0, p0

    :cond_3f
    return v0
.end method

.method public static sendThemeConfigurationChangeMsg(J)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/MiuiConfiguration;->sendThemeConfigurationChangeMsg(JLandroid/os/Bundle;)V

    return-void
.end method

.method public static sendThemeConfigurationChangeMsg(JLandroid/os/Bundle;)V
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_45

    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/MiuiConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/content/res/MiuiConfiguration;->updateTheme(J)V

    if-eqz p2, :cond_1c

    iget-object v2, v1, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1c} :catch_41

    :cond_1c
    :try_start_1c
    const-class v2, Landroid/app/IActivityManager;

    const-string v3, "updateConfiguration"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/Configuration;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_37} :catch_41

    goto :goto_40

    :catch_38
    move-exception v2

    :try_start_39
    const-string v3, "MiuiConfiguration"

    const-string v4, "updateConfiguration failed"

    invoke-static {v3, v4, v2}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_41

    :goto_40
    goto :goto_45

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_45
    :goto_45
    return-void
.end method

.method private setExtraData(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public checkFontChange(I)Z
    .registers 3

    if-ltz p1, :cond_8

    iget v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    if-ge p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public compareTo(Landroid/content/res/MiuiConfiguration;)I
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v2, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_9

    return v1

    :cond_9
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/content/res/MiuiConfiguration;

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiConfiguration;->compareTo(Landroid/content/res/MiuiConfiguration;)I

    move-result p1

    return p1
.end method

.method public diff(Landroid/content/res/MiuiConfiguration;)I
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v2, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_a

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    return-void
.end method

.method public setTo(Landroid/content/res/MiuiConfiguration;)V
    .registers 4

    iget v0, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget-wide v0, p1, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    iput-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    iget v0, p1, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    iget-object v0, p1, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/content/res/MiuiConfiguration;->setExtraData(Landroid/os/Bundle;)V

    return-void
.end method

.method public setToDefaults()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    iget-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " themeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " themeChangedFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " extraData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/MiuiConfiguration;)I
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v2, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_19

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v2, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget-wide v1, p1, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    iput-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    iget v1, p1, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    iput v1, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    iget-object v1, p1, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/content/res/MiuiConfiguration;->setExtraData(Landroid/os/Bundle;)V

    :cond_19
    return v0
.end method

.method public updateTheme(J)V
    .registers 8

    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput-wide p1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    const-wide/16 v1, 0x10

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_13

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    :cond_13
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
