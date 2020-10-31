.class public Landroid/app/ExtraNotificationManager;
.super Ljava/lang/Object;
.source "ExtraNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V
    .registers 6

    nop

    nop

    xor-int/lit8 v0, p0, 0x1

    const/16 v1, 0x1c

    invoke-virtual {p2, v1, p1, v0, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    const/4 v0, 0x3

    nop

    xor-int/lit8 v1, p0, 0x1

    invoke-virtual {p2, v0, p1, v1, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    return-void
.end method

.method public static enableVIPMode(Landroid/content/Context;ZI)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVIPMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilenceMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v1

    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    nop

    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    return-void
.end method

.method public static getConditionId(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    :goto_e
    return-object v1
.end method

.method public static getRemainTime(Landroid/content/Context;)J
    .registers 6

    nop

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getConditionId(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    goto :goto_16

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    :goto_16
    return-wide v2
.end method

.method public static getZenMode(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    return v0
.end method

.method public static getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .registers 2

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;I)Z
    .registers 6

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x3e7

    goto :goto_10

    :cond_f
    move v0, p1

    :goto_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "quiet_mode_enable"

    invoke-static {v2, v3, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    move v1, v3

    :cond_1f
    return v1
.end method

.method public static isRepeatedCallEnable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return v0
.end method

.method public static isSilenceModeEnable(Landroid/content/Context;I)Z
    .registers 4

    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x3e7

    goto :goto_a

    :cond_9
    move v0, p1

    :goto_a
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static isVIPModeEnable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    return v0
.end method

.method public static setQuietMode(Landroid/content/Context;ZI)V
    .registers 9

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e7

    const-string/jumbo v3, "quiet_mode_enable"

    const/4 v4, 0x1

    if-eqz p1, :cond_21

    if-nez v0, :cond_12

    invoke-static {p0, v4, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_35

    :cond_21
    const/4 v5, 0x0

    if-ne v0, v4, :cond_27

    invoke-static {p0, v5, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v5, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_35
    return-void
.end method

.method public static setRepeatedCallEnable(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    return-void
.end method

.method public static setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSilenceMode mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilenceMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public static setZenMode(Landroid/content/Context;I)V
    .registers 4

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 15

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_d

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_d
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "vibrate_in_silent"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1f

    move v0, v3

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_42

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_42

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_42

    if-ne p1, v3, :cond_42

    if-eqz v0, :cond_42

    const/4 p1, 0x2

    :cond_42
    if-nez p2, :cond_64

    invoke-static {p0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "forever"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v11, Landroid/service/notification/Condition;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v3, v11

    move-object v4, v2

    invoke-direct/range {v3 .. v10}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object p2, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :cond_64
    if-eqz p0, :cond_83

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_83

    sget-object v3, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "silence_DND"

    const-string v7, "0"

    invoke-static {v6, v3, v7, v4, v5}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_83
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const-string v3, "miui_manual"

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z
    .registers 8

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v2, :cond_11

    or-int/lit8 v1, v1, 0x2

    goto :goto_13

    :cond_11
    and-int/lit8 v1, v1, -0x3

    :goto_13
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v2, :cond_1a

    or-int/lit8 v1, v1, 0x8

    goto :goto_1c

    :cond_1a
    and-int/lit8 v1, v1, -0x9

    :goto_1c
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-eqz v2, :cond_23

    or-int/lit8 v1, v1, 0x40

    goto :goto_25

    :cond_23
    and-int/lit8 v1, v1, -0x41

    :goto_25
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-eqz v2, :cond_2c

    or-int/lit16 v1, v1, 0x80

    goto :goto_2e

    :cond_2c
    and-int/lit16 v1, v1, -0x81

    :goto_2e
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eqz v2, :cond_35

    or-int/lit8 v1, v1, 0x20

    goto :goto_37

    :cond_35
    and-int/lit8 v1, v1, -0x21

    :goto_37
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v2, :cond_3e

    or-int/lit8 v1, v1, 0x4

    goto :goto_40

    :cond_3e
    and-int/lit8 v1, v1, -0x5

    :goto_40
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v2, :cond_47

    or-int/lit8 v1, v1, 0x10

    goto :goto_49

    :cond_47
    and-int/lit8 v1, v1, -0x11

    :goto_49
    new-instance v2, Landroid/app/NotificationManager$Policy;

    iget v3, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    move-object v0, v2

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    const/4 v2, 0x1

    return v2
.end method

.method public static startCountDownSilenceMode(Landroid/content/Context;II)V
    .registers 5

    if-nez p2, :cond_7

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void

    :cond_7
    nop

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v1, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public static updateRestriction(Landroid/content/Context;)V
    .registers 11

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const-string v1, "com.android.cellbroadcastreceiver"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui"

    const-string v4, "android"

    const-string v5, "com.android.server.telecom"

    filled-new-array {v3, v4, v1, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v8, :cond_2e

    const/4 v6, 0x1

    const/4 v5, 0x1

    goto :goto_3c

    :cond_2e
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v9, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v9, :cond_3a

    iget-boolean v9, v4, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v9, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v8, 0x0

    :cond_3a
    :goto_3a
    move v7, v8

    nop

    :goto_3c
    const/4 v8, 0x6

    if-eqz v7, :cond_41

    move-object v9, v1

    goto :goto_42

    :cond_41
    move-object v9, v2

    :goto_42
    invoke-static {v5, v8, v0, v9}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    const/4 v8, 0x5

    if-eqz v7, :cond_4a

    move-object v9, v1

    goto :goto_4b

    :cond_4a
    move-object v9, v2

    :goto_4b
    invoke-static {v6, v8, v0, v9}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    return-void
.end method
