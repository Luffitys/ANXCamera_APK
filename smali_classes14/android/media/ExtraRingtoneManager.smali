.class public Landroid/media/ExtraRingtoneManager;
.super Ljava/lang/Object;
.source "ExtraRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExtraRingtoneManager$SoundItem;
    }
.end annotation


# static fields
.field public static final ACTION_MIUI_RINGTONE_PICKER:Ljava/lang/String; = "miui.intent.action.RINGTONE_PICKER"

.field private static final ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

.field public static final EXTRA_RINGTONE_URI_LIST:Ljava/lang/String; = "miui.intent.extra.ringtone.EXTRA_RINGTONE_URI_LIST"

.field private static final TAG:Ljava/lang/String; = "ExtraRingtoneManager"

.field private static final TARGET_USER:Ljava/lang/String; = "root"

.field public static final TYPE_CALENDAR:I = 0x1000

.field public static final TYPE_MUSIC:I = 0x20

.field public static final TYPE_RINGTONE_SLOT_1:I = 0x40

.field public static final TYPE_RINGTONE_SLOT_2:I = 0x80

.field public static final TYPE_SMS_DELIVERED_SLOT_1:I = 0x100

.field public static final TYPE_SMS_DELIVERED_SLOT_2:I = 0x200

.field public static final TYPE_SMS_DELIVERED_SOUND:I = 0x8

.field public static final TYPE_SMS_RECEIVED_SLOT_1:I = 0x400

.field public static final TYPE_SMS_RECEIVED_SLOT_2:I = 0x800

.field public static final TYPE_SMS_RECEIVED_SOUND:I = 0x10

.field private static sRingtoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/ExtraRingtoneManager$SoundItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ringtones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_ringtone:I

    const/4 v2, 0x1

    const-string v3, "ringtone.mp3"

    const-string v4, "ringtone"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_notification_sound:I

    const/4 v2, 0x2

    const-string v3, "notification.mp3"

    const-string v4, "notification_sound"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_alarm_alert:I

    const/4 v2, 0x4

    const-string v3, "alarm.mp3"

    const-string v4, "alarm_alert"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_CALENDAR_ALERT_URI:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_notification_sound:I

    const/16 v2, 0x1000

    const-string v3, "calendar.mp3"

    const-string v4, "calendar_alert"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_sms_delivered_sound:I

    const/16 v2, 0x8

    const-string v3, "sms_delivered_sound.mp3"

    const-string v4, "sms_delivered_sound"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_sms_received_sound:I

    const/16 v2, 0x10

    const-string v3, "sms_received_sound.mp3"

    const-string v4, "sms_received_sound"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_ringtone_slot_1:I

    const/16 v2, 0x40

    const-string v3, "ringtone_slot_1.mp3"

    const-string v4, "ringtone_sound_slot_1"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_ringtone_slot_2:I

    const/16 v2, 0x80

    const-string v3, "ringtone_slot_2.mp3"

    const-string v4, "ringtone_sound_slot_2"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_sms_received_sound_slot_1:I

    const/16 v2, 0x400

    const-string v3, "sms_received_slot_1.mp3"

    const-string v4, "sms_received_sound_slot_1"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_sms_received_sound_slot_2:I

    const/16 v2, 0x800

    const-string v3, "sms_received_slot_2.mp3"

    const-string v4, "sms_received_sound_slot_2"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_sms_delivered_sound_slot_1:I

    const/16 v2, 0x100

    const-string v3, "sms_delivered_slot_1.mp3"

    const-string v4, "sms_delivered_sound_slot_1"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    sget v1, Lmiui/system/R$string;->def_sms_delivered_sound_slot_2:I

    const/16 v2, 0x200

    const-string v3, "sms_delivered_slot_2.mp3"

    const-string v4, "sms_delivered_sound_slot_2"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSoundItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 13

    sget-object v0, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v7, Landroid/media/ExtraRingtoneManager$SoundItem;

    move-object v1, v7

    move v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/media/ExtraRingtoneManager$SoundItem;-><init>(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V

    sget-object v2, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static copySound(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    invoke-static {p2}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_48

    :cond_1a
    sget-object v1, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->mkdirs(Ljava/lang/String;)Z

    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    :cond_31
    :try_start_31
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_43

    move-object p1, v2

    nop

    invoke-static {p1, v0}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v0}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    goto :goto_4b

    :catch_43
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_48
    :goto_48
    invoke-static {v0}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    :goto_4b
    return-void
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 9

    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->isValidType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActualDefaultRingtoneUri type is invalid, type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExtraRingtoneManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1e
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_25

    return-object v0

    :cond_25
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    invoke-static {v0}, Landroid/media/ExtraRingtoneManager;->isSystemSettingsUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-static {v0}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundType(Landroid/net/Uri;)I

    move-result v3

    invoke-static {v3}, Landroid/media/ExtraRingtoneManager;->isValidType(I)Z

    move-result v5

    if-nez v5, :cond_43

    return-object v1

    :cond_43
    invoke-static {p0, v3}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_4a

    return-object v1

    :cond_4a
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-static {v5}, Landroid/media/ExtraRingtoneManager;->isSystemSettingsUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_5c

    const/4 v2, 0x1

    goto :goto_5f

    :cond_5c
    return-object v5

    :cond_5d
    move-object v0, v5

    move p1, v3

    :goto_5f
    goto :goto_61

    :cond_60
    return-object v0

    :cond_61
    :goto_61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_8b

    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-le v5, v6, :cond_84

    const-string v5, "/data/system/theme_magic"

    const-string v6, "/data/system"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getBuildInRingtonePathRes(I)I

    move-result v4

    invoke-static {p0, v4}, Landroid/media/ExtraRingtoneManager;->getBuildInRingtonePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ce

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_cd

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_cd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_cd
    goto :goto_9a

    :cond_ce
    return-object v1
.end method

.method private static getBuildInRingtonePath(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    if-lez p1, :cond_12

    :try_start_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExtraRingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_12
    nop

    :goto_13
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getBuildInRingtonePathRes(I)I
    .registers 4

    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_19

    iget v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->buildInPathRes:I

    return v0

    :cond_19
    goto :goto_6

    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method private static getDefaultRingtoneUri(I)Landroid/net/Uri;
    .registers 4

    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_19

    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mDefaultRingtoneUri:Landroid/net/Uri;

    return-object v0

    :cond_19
    goto :goto_6

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultRingtoneUri type is invalid, type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtraRingtoneManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultSoundActualUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 4

    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_13

    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSoundInternalUri(I)Landroid/net/Uri;
    .registers 4

    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_19

    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mActualDefaultRingtoneUri:Landroid/net/Uri;

    return-object v0

    :cond_19
    goto :goto_6

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultSoundName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 5

    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_16
    return-object v1
.end method

.method public static getDefaultSoundType(Landroid/net/Uri;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x2

    return v0

    :cond_18
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x4

    return v0

    :cond_22
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_CALENDAR_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/16 v0, 0x1000

    return v0

    :cond_2d
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/16 v0, 0x40

    return v0

    :cond_38
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    const/16 v0, 0x80

    return v0

    :cond_43
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/16 v0, 0x10

    return v0

    :cond_4e
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    const/16 v0, 0x400

    return v0

    :cond_59
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v0, 0x800

    return v0

    :cond_64
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const/16 v0, 0x8

    return v0

    :cond_6f
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    const/16 v0, 0x100

    return v0

    :cond_7a
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    const/16 v0, 0x200

    return v0

    :cond_85
    return v0
.end method

.method public static getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3

    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_1a

    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mSettingType:Ljava/lang/String;

    return-object v0

    :cond_1a
    goto :goto_6

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 5

    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object p0, v0

    :cond_1a
    return-object p0
.end method

.method public static isExtraCases(Landroid/net/Uri;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isSystemSettingsUri(Landroid/net/Uri;)Z
    .registers 3

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method private static isValidType(I)Z
    .registers 4

    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    goto :goto_6

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static resolveRingtonePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->resolveSoundPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveSoundPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "_data"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_2b
    .catchall {:try_start_2 .. :try_end_22} :catchall_29

    move-object v0, v3

    :cond_23
    if-eqz v1, :cond_32

    :goto_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_32

    :catchall_29
    move-exception v2

    goto :goto_33

    :catch_2b
    move-exception v2

    :try_start_2c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    if-eqz v1, :cond_32

    goto :goto_25

    :cond_32
    :goto_32
    return-object v0

    :goto_33
    if-eqz v1, :cond_38

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v2
.end method

.method public static saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 7

    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p2}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundType(Landroid/net/Uri;)I

    move-result v1

    if-ne p1, v1, :cond_e

    return-void

    :cond_e
    const-string v1, ""

    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "media"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {p0, p2}, Landroid/media/ExtraRingtoneManager;->resolveSoundPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_3e

    :cond_2e
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-static {p0, v1, p1}, Landroid/media/ExtraRingtoneManager;->copySound(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_4c

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
