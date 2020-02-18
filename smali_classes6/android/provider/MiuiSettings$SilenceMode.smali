.class public final Landroid/provider/MiuiSettings$SilenceMode;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SilenceMode"
.end annotation


# static fields
.field protected static final DEBUG_MODE:Z

.field public static final LASTEST_MODE:Ljava/lang/String; = "default_mode"

.field public static final MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

.field public static final MISTAT_SILENCE_DND:Ljava/lang/String; = "silence_DND"

.field public static final MIUI_ALARMS:I = 0x3

.field public static final MIUI_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final MIUI_NO_INTERRUPTIONS:I = 0x2

.field public static final MUTE_MUSIC:Ljava/lang/String; = "mute_music"

.field public static final MUTE_MUSIC_AT_SILENT:Ljava/lang/String; = "mute_music_at_silent"

.field public static final MUTE_VOICEASSIST_AT_SILENT:Ljava/lang/String; = "mute_voiceassit_at_silent"

.field public static final NORMAL:I = 0x0

.field public static final REMAIN_TIME:Ljava/lang/String; = "remain_time"

.field public static final SHOW_NOTIFICATION:Ljava/lang/String; = "show_notification"

.field public static final SILENCE_MODE:Ljava/lang/String; = "zen_mode"

.field private static final TAG:Ljava/lang/String; = "SilenceMode"

.field public static final VIP_ENABLE:Ljava/lang/String; = "vip_enable"

.field public static final VOLUME_MUSIC_BEFORE_MUTE:Ljava/lang/String; = "volume_music_before_mute"

.field public static final ZEN_MODE_MIUI_SILENT:I = 0x4

.field public static final isSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 3597
    const-string v0, "SilenceMode.MOD"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->DEBUG_MODE:Z

    .line 3654
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    sput-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    .line 3663
    const-string/jumbo v0, "normal"

    const-string v1, "DND"

    const-string/jumbo v2, "null"

    const-string/jumbo v3, "silence"

    const-string/jumbo v4, "new"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableVIPMode(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 3756
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Landroid/app/ExtraNotificationManager;->enableVIPMode(Landroid/content/Context;ZI)V

    .line 3758
    return-void
.end method

.method public static enableVIPMode(Landroid/content/Context;ZI)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .line 3764
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->enableVIPMode(Landroid/content/Context;ZI)V

    .line 3765
    return-void
.end method

.method public static getLastestQuietMode(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3703
    const/4 v0, 0x4

    return v0
.end method

.method public static getRemainTime(Landroid/content/Context;)J
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 3683
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getZenMode(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3724
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static isDNDEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 3807
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static isSilenceModeEnable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3734
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_9

    .line 3735
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 3737
    :cond_9
    const/4 v0, -0x3

    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->isSilenceModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isSilenceModeEnable(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 3745
    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->isSilenceModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isVIPModeEnable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3714
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->isVIPModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static muteMusicStream(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 3798
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 3800
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x3

    .line 3799
    const-string/jumbo v3, "mute_music"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v1, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 3798
    :goto_17
    return v1
.end method

.method public static reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "time"    # J

    .line 3814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3815
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3816
    const-string/jumbo v2, "mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3817
    const-string/jumbo v2, "params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3818
    const-string/jumbo v2, "time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3820
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->DEBUG_MODE:Z

    if-eqz v1, :cond_56

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportRingerModeInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SilenceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    :cond_56
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    const/16 v2, 0x4d

    .line 3823
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3822
    invoke-virtual {v1, v2, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportSimpleEvent(ILjava/lang/String;)V

    .line 3824
    return-void
.end method

.method public static setRemainTime(Landroid/content/Context;J)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .line 3694
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "remain_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3695
    return-void
.end method

.method public static setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "id"    # Landroid/net/Uri;

    .line 3775
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 3776
    return-void
.end method

.method public static setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "id"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 3782
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 3783
    return-void
.end method

.method public static showNotification(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 3789
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 3791
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x3

    .line 3790
    const-string/jumbo v3, "show_notification"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v1, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 3789
    :goto_17
    return v1
.end method
