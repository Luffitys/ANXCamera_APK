.class public Landroid/provider/MiuiSettings$Telephony;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Telephony"
.end annotation


# static fields
.field public static final ADD_ZERO_PREFIX_SWITCH:Ljava/lang/String; = "button_add_zero_prefix"

.field public static final AUTOIP_PREFIX:Ljava/lang/String; = "autoip_prefix"

.field public static final AUTOIP_SWITCH:Ljava/lang/String; = "button_autoip"

.field public static final AUTO_ANSWER_DEFAULT_DELAY_TIME:I = 0x3

.field public static final AUTO_ANSWER_DELAY_TIME:Ljava/lang/String; = "auto_answer_delay_time"

.field public static final AUTO_ANSWER_SCENARIO:Ljava/lang/String; = "auto_answer_scenario"

.field public static final AUTO_ANSWER_SCENARIO_ALWAYS:I = 0x0

.field public static final AUTO_ANSWER_SCENARIO_BLUETOOTH_ONLY:I = 0x2

.field public static final AUTO_ANSWER_SCENARIO_HEADSET_BLUETOOTH:I = 0x3

.field public static final AUTO_ANSWER_SCENARIO_HEADSET_ONLY:I = 0x1

.field public static final AUTO_COUNTRY_CODE:Ljava/lang/String; = "auto_country_code"

.field public static final AUTO_IP_SUPPORT_LOCAL_NUMBERS:Ljava/lang/String; = "button_auto_ip_support_local_numbers"

.field private static final CALL_WAITING_TONE:Ljava/lang/String; = "call_waiting_tone"

.field public static final CALL_WAITING_TONE_CONTINUOUSLY:I = 0x0

.field public static final CALL_WAITING_TONE_TWICE_AND_VIBRATE:I = 0x2

.field public static final CALL_WAITING_TONE_TWICE_ONLY:I = 0x1

.field public static final CONNECT_DISCONNECT_VIBRATE:Ljava/lang/String; = "button_connect_disconnect_vibrate"

.field public static final CONTACT_COUNTRYCODE:Ljava/lang/String; = "persist.radio.countrycode"

.field public static final CURRENT_AREACODE:Ljava/lang/String; = "current_areacode"

.field public static final ENABLED_ANTISPAM_STRANGE:Ljava/lang/String; = "button_antispam_strange"

.field public static final ENABLED_AUTO_ANSWER:Ljava/lang/String; = "button_auto_answer"

.field public static final ENABLED_AUTO_RECORD:Ljava/lang/String; = "button_auto_record_call"

.field public static final ENABLED_AUTO_REDIAL:Ljava/lang/String; = "button_auto_redial"

.field public static final ENABLED_HANDON_RINGER:Ljava/lang/String; = "button_handon_ringer"

.field public static final ENABLED_INCOMING_VIDEO_SHOW:Ljava/lang/String; = "button_incoming_video_show"

.field public static final ENABLED_RECORD_NOTIFY:Ljava/lang/String; = "button_call_recording_notification"

.field public static final ENABLED_TURN_OVER_MUTE:Ljava/lang/String; = "button_turn_over_mute"

.field public static final ENABLED_UNKNOWN_NUMBER_RECORD:Ljava/lang/String; = "button_record_unknown_number"

.field public static final ENABLED_VOICE_SERVICE:Ljava/lang/String; = "button_voice_service"

.field public static final ENABLED_YELLOWPAGE_RECORD:Ljava/lang/String; = "button_record_yellowpage_number"

.field public static final ENABLE_CRESCENDO_RINGER:Ljava/lang/String; = "button_crescendo_ringer"

.field public static final ENABLE_PROXIMITY_KEY:Ljava/lang/String; = "button_enable_proximity"

.field public static final ENABLE_REJECT_VIA_SMS_KEY:Ljava/lang/String; = "button_enable_reject_via_sms"

.field public static final ENABLE_TELOCATION:Ljava/lang/String; = "enable_telocation"

.field public static final IVR_MO_AREA_CODE_SLOT_1:Ljava/lang/String; = "ivr_mo_area_code_slot_1"

.field public static final IVR_MO_AREA_CODE_SLOT_2:Ljava/lang/String; = "ivr_mo_area_code_slot_2"

.field public static final IVR_TYPE_SLOT_1:Ljava/lang/String; = "ivr_type_slot_1"

.field public static final IVR_TYPE_SLOT_2:Ljava/lang/String; = "ivr_type_slot_2"

.field public static final MISSED_CALL_NOTIFY_TIMES:Ljava/lang/String; = "button_missed_call_notify_times"

.field public static final RECORD_SCENARIO:Ljava/lang/String; = "radio_record_scenario"

.field public static final RECORD_WHITE_LIST:Ljava/lang/String; = "record_white_list"

.field public static final REJECT_VIA_SMS_RESPONSE_1:Ljava/lang/String; = "reject_via_sms_response_1"

.field public static final REJECT_VIA_SMS_RESPONSE_2:Ljava/lang/String; = "reject_via_sms_response_2"

.field public static final REJECT_VIA_SMS_RESPONSE_3:Ljava/lang/String; = "reject_via_sms_response_3"

.field public static final REJECT_VIA_SMS_RESPONSE_4:Ljava/lang/String; = "reject_via_sms_response_4"

.field public static final VOLTE_FEATURE_DISABLED:Ljava/lang/String; = "volte_feature_disabled"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoAnswerCallDelayTime(Landroid/content/ContentResolver;)I
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5946
    const-string v0, "auto_answer_delay_time"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAutoAnswerCallScenario(Landroid/content/ContentResolver;)I
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5960
    const-string v0, "auto_answer_scenario"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "defaultPrefix"    # Ljava/lang/String;

    .line 5398
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "defaultPrefix"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 5422
    const-string v0, "autoip_prefix"

    .line 5423
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_13

    .line 5424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5426
    :cond_13
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCallWaitingTone(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 5319
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_waiting_tone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5321
    .local v0, "index":I
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "lithium"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 5322
    const/4 v0, 0x0

    .line 5324
    :cond_1a
    return v0
.end method

.method public static getContactCountrycode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5378
    const-string/jumbo v0, "persist.radio.countrycode"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAeraCode(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .line 5348
    const-string v0, "current_areacode"

    .line 5349
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_13

    .line 5350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5352
    :cond_13
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEnabledAutoRedial(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5565
    const-string v0, "button_auto_redial"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnabledVoiceService(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5922
    const-string v0, "button_voice_service"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .line 5730
    const-string v0, ""

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMissedCallNotifyTimes(Landroid/content/ContentResolver;)I
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5546
    const-string v0, "button_missed_call_notify_times"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRecordScenario(Landroid/content/ContentResolver;)I
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5643
    const-string/jumbo v0, "radio_record_scenario"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getRecordWhiteList(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5663
    const-string/jumbo v0, "record_white_list"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRejectViaSmsResponse(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 5895
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVibrateKey(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5527
    const-string v0, "button_connect_disconnect_vibrate"

    const-string v1, "100"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAntispamStangerEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5508
    const-string v0, "button_antispam_strange"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoAddZeroPrefix(Landroid/content/ContentResolver;I)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .line 5800
    const-string v0, "button_add_zero_prefix"

    .line 5801
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_13

    .line 5802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5804
    :cond_13
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isAutoAnswerCall(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5930
    const-string v0, "button_auto_answer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5757
    const-string v0, "auto_country_code"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoIpEnable(Landroid/content/ContentResolver;I)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .line 5774
    const-string v0, "button_autoip"

    .line 5775
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_13

    .line 5776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5778
    :cond_13
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isAutoIpSupportLocalNum(Landroid/content/ContentResolver;I)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .line 5827
    const-string v0, "button_auto_ip_support_local_numbers"

    .line 5828
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_13

    .line 5829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5831
    :cond_13
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isAutoRecordEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5623
    const-string v0, "button_auto_record_call"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCrescendoRingerEnable(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5489
    const-string v0, "button_crescendo_ringer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHandonRingerEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5470
    const-string v0, "button_handon_ringer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isIncomingVideoShowEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5584
    const-string v0, "button_incoming_video_show"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isProximitySensorEnable(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5853
    const-string v0, "button_enable_proximity"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRecordNotificationEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5603
    const-string v0, "button_call_recording_notification"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRejectViaSmsEnable(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5870
    const-string v0, "button_enable_reject_via_sms"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTelocationEnable(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5738
    const-string v0, "enable_telocation"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTurnOverMuteEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5451
    const-string v0, "button_turn_over_mute"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUnknownNumberRecordEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5683
    const-string v0, "button_record_unknown_number"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isYellowpageRecordEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5702
    const-string v0, "button_record_yellowpage_number"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAntispamStangerEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabled"    # Z

    .line 5518
    const-string v0, "button_antispam_strange"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5519
    return-void
.end method

.method public static setAutoAddZeroPrefixEnable(Landroid/content/ContentResolver;ZI)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .param p2, "slotId"    # I

    .line 5814
    const-string v0, "button_add_zero_prefix"

    .line 5815
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_13

    .line 5816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5818
    :cond_13
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5819
    return-void
.end method

.method public static setAutoAnswerCall(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 5939
    const-string v0, "button_auto_answer"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5940
    return-void
.end method

.method public static setAutoAnswerCallDelayTime(Landroid/content/ContentResolver;I)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "value"    # I

    .line 5953
    const-string v0, "auto_answer_delay_time"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5954
    return-void
.end method

.method public static setAutoAnswerCallScenario(Landroid/content/ContentResolver;I)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "value"    # I

    .line 5975
    const-string v0, "auto_answer_scenario"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5976
    return-void
.end method

.method public static setAutoCountryCodeEnable(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 5766
    const-string v0, "auto_country_code"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5767
    return-void
.end method

.method public static setAutoIpEnable(Landroid/content/ContentResolver;ZI)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .param p2, "slotId"    # I

    .line 5787
    const-string v0, "button_autoip"

    .line 5788
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_13

    .line 5789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5791
    :cond_13
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5792
    return-void
.end method

.method public static setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "IpPrefix"    # Ljava/lang/String;

    .line 5409
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 5410
    return-void
.end method

.method public static setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "IpPrefix"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 5438
    const-string v0, "autoip_prefix"

    .line 5439
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_13

    .line 5440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5442
    :cond_13
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5443
    return-void
.end method

.method public static setAutoIpSupportLocalNumEnable(Landroid/content/ContentResolver;ZI)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .param p2, "slotId"    # I

    .line 5841
    const-string v0, "button_auto_ip_support_local_numbers"

    .line 5842
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_13

    .line 5843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5845
    :cond_13
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5846
    return-void
.end method

.method public static setAutoRecordEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledAutoRecord"    # Z

    .line 5634
    const-string v0, "button_auto_record_call"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5635
    return-void
.end method

.method public static setAutoRedialEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledRedial"    # Z

    .line 5575
    const-string v0, "button_auto_redial"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5576
    return-void
.end method

.method public static setCallWaitingTone(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callWaitingToneType"    # I

    .line 5337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_waiting_tone"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5339
    return-void
.end method

.method public static setContactCountrycode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 5389
    const-string/jumbo v0, "persist.radio.countrycode"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5390
    return-void
.end method

.method public static setCrescendoRingerEnable(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabled"    # Z

    .line 5499
    const-string v0, "button_crescendo_ringer"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5500
    return-void
.end method

.method public static setCurrentAeraCode(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "aeraCode"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 5363
    const-string v0, "current_areacode"

    .line 5364
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_13

    .line 5365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5367
    :cond_13
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5368
    return-void
.end method

.method public static setHandonRingerEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabled"    # Z

    .line 5480
    const-string v0, "button_handon_ringer"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5481
    return-void
.end method

.method public static setIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 5721
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5722
    return-void
.end method

.method public static setIncomingVideoShowEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isVideoShowEnabled"    # Z

    .line 5594
    const-string v0, "button_incoming_video_show"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5595
    return-void
.end method

.method public static setMissedCallNotifyTimes(Landroid/content/ContentResolver;I)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "notifyTimes"    # I

    .line 5556
    const-string v0, "button_missed_call_notify_times"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5557
    return-void
.end method

.method public static setProximitySensorEnable(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 5862
    const-string v0, "button_enable_proximity"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5863
    return-void
.end method

.method public static setRecordNotificationEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledRecordNotify"    # Z

    .line 5614
    const-string v0, "button_call_recording_notification"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5615
    return-void
.end method

.method public static setRecordScenario(Landroid/content/ContentResolver;I)V
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "recordScenario"    # I

    .line 5653
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "radio_record_scenario"

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5654
    return-void
.end method

.method public static setRecordWhiteList(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "recordWhiteList"    # Ljava/lang/String;

    .line 5674
    const-string/jumbo v0, "record_white_list"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5675
    return-void
.end method

.method public static setRejectViaSmsEnable(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 5879
    const-string v0, "button_enable_reject_via_sms"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5880
    return-void
.end method

.method public static setRejectViaSmsRespone(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 5905
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5906
    return-void
.end method

.method public static setTelocationEnable(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 5747
    const-string v0, "enable_telocation"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5748
    return-void
.end method

.method public static setTurnOverMuteEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 5461
    const-string v0, "button_turn_over_mute"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5462
    return-void
.end method

.method public static setUnknownNumberRecordEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabledUnknownNumberRecord"    # Z

    .line 5693
    const-string v0, "button_record_unknown_number"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5694
    return-void
.end method

.method public static setVibrateKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "vibrateKey"    # Ljava/lang/String;

    .line 5537
    const-string v0, "button_connect_disconnect_vibrate"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5538
    return-void
.end method

.method public static setVoiceServiceEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledVoiceService"    # Z

    .line 5914
    const-string v0, "button_voice_service"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5915
    return-void
.end method

.method public static setYellowpageRecordEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabledYellowpageRecord"    # Z

    .line 5712
    const-string v0, "button_record_yellowpage_number"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5713
    return-void
.end method
