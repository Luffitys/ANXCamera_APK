.class public Lmiui/provider/SettingProviderHelper;
.super Ljava/lang/Object;
.source "SettingProviderHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingProviderHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRingtoneAuthority(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_18

    :cond_17
    return-object v0

    :cond_18
    :goto_18
    return-object v1
.end method

.method public static getRingtoneUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 4

    invoke-static {p0}, Lmiui/provider/SettingProviderHelper;->getRingtoneAuthority(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_11
    return-object p0
.end method

.method private static loadDefaultFunctionSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;)V
    .registers 9

    const-string v0, "SettingProviderHelper"

    const-string v1, "Loading SettingsProvider of shortcut..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "volumekey_launch_camera"

    const v1, 0x110a0044

    invoke-static {p0, p1, v0, v1}, Lmiui/provider/SettingProviderHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1102001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_34

    aget-object v3, v0, v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    const-string v6, "android.miui"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_31

    invoke-static {p0, p1, v3, v4}, Lmiui/provider/SettingProviderHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_34
    return-void
.end method

.method public static loadDefaultRingtoneSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;)V
    .registers 5

    const-string v0, "ringtone_default"

    sget v1, Lmiui/system/R$string;->def_ringtone:I

    const-string v2, "ringtone_default"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_ringtone:I

    const-string v2, "ringtone"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_alarm_alert:I

    const-string v2, "alarm_alert"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_notification_sound:I

    const-string v2, "notification_sound"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_notification_sound:I

    const-string v2, "calendar_alert"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_sms_delivered_sound:I

    const-string v2, "sms_delivered_sound"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_sms_received_sound:I

    const-string v2, "sms_received_sound"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_ringtone_slot_1:I

    const-string v2, "ringtone_sound_slot_1"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_ringtone_slot_2:I

    const-string v2, "ringtone_sound_slot_2"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_sms_delivered_sound_slot_1:I

    const-string v2, "sms_delivered_sound_slot_1"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_sms_delivered_sound_slot_2:I

    const-string v2, "sms_delivered_sound_slot_2"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_sms_received_sound_slot_1:I

    const-string v2, "sms_received_sound_slot_1"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    sget v1, Lmiui/system/R$string;->def_sms_received_sound_slot_2:I

    const-string v2, "sms_received_sound_slot_2"

    invoke-static {p0, p1, v2, v1}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {p0, p1}, Lmiui/provider/SettingProviderHelper;->loadDefaultFunctionSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;)V

    return-void
.end method

.method private static loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method private static loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_31
    return-void
.end method

.method private static loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method
