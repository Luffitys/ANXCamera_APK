.class public Lmiui/util/SimRingtoneUtils;
.super Ljava/lang/Object;
.source "SimRingtoneUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canSlotSettingRingtoneType(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/16 v1, 0x8

    if-eq p0, v1, :cond_d

    const/16 v1, 0x10

    if-ne p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0
.end method

.method public static getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lmiui/util/SimRingtoneUtils;->getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSmsDeliveredUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3

    const/16 v0, 0x8

    invoke-static {p0, v0, p1}, Lmiui/util/SimRingtoneUtils;->getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSmsReceivedUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3

    const/16 v0, 0x10

    invoke-static {p0, v0, p1}, Lmiui/util/SimRingtoneUtils;->getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSoundUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_49

    const/4 v0, 0x2

    if-eq p1, v0, :cond_46

    const/4 v0, 0x4

    if-eq p1, v0, :cond_43

    const/16 v0, 0x8

    if-eq p1, v0, :cond_40

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x40

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x80

    if-eq p1, v0, :cond_37

    const/16 v0, 0x100

    if-eq p1, v0, :cond_34

    const/16 v0, 0x200

    if-eq p1, v0, :cond_31

    const/16 v0, 0x400

    if-eq p1, v0, :cond_2e

    const/16 v0, 0x800

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x0

    return-object v0

    :cond_2b
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    return-object v0

    :cond_2e
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    return-object v0

    :cond_31
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    return-object v0

    :cond_34
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    return-object v0

    :cond_37
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    return-object v0

    :cond_3a
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    return-object v0

    :cond_3d
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    :cond_40
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    :cond_43
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    return-object v0

    :cond_46
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    :cond_49
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private static getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;
    .registers 4

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq p2, v0, :cond_e

    invoke-static {p0, p1}, Lmiui/util/SimRingtoneUtils;->isDefaultSoundUniform(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1, p2}, Lmiui/util/SimRingtoneUtils;->getExtraRingtoneTypeBySlot(II)I

    move-result p1

    :cond_e
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundActualUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraRingtoneTypeBySlot(II)I
    .registers 3

    if-ltz p1, :cond_31

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_31

    :cond_d
    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    if-nez p1, :cond_15

    const/16 v0, 0x40

    goto :goto_17

    :cond_15
    const/16 v0, 0x80

    :goto_17
    return v0

    :cond_18
    const/16 v0, 0x8

    if-ne p0, v0, :cond_24

    if-nez p1, :cond_21

    const/16 v0, 0x100

    goto :goto_23

    :cond_21
    const/16 v0, 0x200

    :goto_23
    return v0

    :cond_24
    const/16 v0, 0x10

    if-ne p0, v0, :cond_30

    if-nez p1, :cond_2d

    const/16 v0, 0x400

    goto :goto_2f

    :cond_2d
    const/16 v0, 0x800

    :goto_2f
    return v0

    :cond_30
    return p0

    :cond_31
    :goto_31
    return p0
.end method

.method private static getSoundUniformSettingName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "ringtone_sound_use_uniform"

    return-object v0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_d

    const-string v0, "sms_delivered_sound_use_uniform"

    return-object v0

    :cond_d
    const/16 v0, 0x10

    if-ne p0, v0, :cond_14

    const-string v0, "sms_received_sound_use_uniform"

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isDefaultSoundUniform(Landroid/content/Context;I)Z
    .registers 5

    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->canSlotSettingRingtoneType(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->getSoundUniformSettingName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1

    :cond_18
    return v1
.end method

.method public static setDefaultSoundUniform(Landroid/content/Context;IZ)V
    .registers 5

    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->canSlotSettingRingtoneType(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->getSoundUniformSettingName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_11
    return-void
.end method
