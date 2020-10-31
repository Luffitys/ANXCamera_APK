.class public Lcom/android/internal/telephony/DctConstants;
.super Ljava/lang/Object;
.source "DctConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DctConstants$Activity;,
        Lcom/android/internal/telephony/DctConstants$State;
    }
.end annotation


# static fields
.field public static final APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final BANDWIDTH_SOURCE_CARRIER_CONFIG_KEY:Ljava/lang/String; = "carrier_config"

.field public static final BANDWIDTH_SOURCE_MODEM_KEY:Ljava/lang/String; = "modem"

.field public static final BASE:I = 0x42000

.field public static final CMD_CLEAR_PROVISIONING_SPINNER:I = 0x4202a

.field public static final CMD_ENABLE_MOBILE_PROVISIONING:I = 0x42025

.field public static final CMD_IS_PROVISIONING_APN:I = 0x42026

.field public static final CMD_NET_STAT_POLL:I = 0x42028

.field public static final CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:I = 0x42024

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final EVENT_APN_CHANGED:I = 0x42013

.field public static final EVENT_CARRIER_CONFIG_CHANGED:I = 0x42036

.field public static final EVENT_CLEAN_UP_ALL_CONNECTIONS:I = 0x4201d

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x42018

.field public static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x42010

.field public static final EVENT_DATA_CONNECTION_DETACHED:I = 0x42009

.field public static final EVENT_DATA_ENABLED_CHANGED:I = 0x4202e

.field public static final EVENT_DATA_ENABLED_OVERRIDE_RULES_CHANGED:I = 0x42033

.field public static final EVENT_DATA_RAT_CHANGED:I = 0x42029

.field public static final EVENT_DATA_RECONNECT:I = 0x4202f

.field public static final EVENT_DATA_SERVICE_BINDING_CHANGED:I = 0x42031

.field public static final EVENT_DATA_SETUP_COMPLETE:I = 0x42000

.field public static final EVENT_DATA_SETUP_COMPLETE_ERROR:I = 0x42023

.field public static final EVENT_DATA_STALL_ALARM:I = 0x42011

.field public static final EVENT_DEVICE_PROVISIONED_CHANGE:I = 0x42032

.field public static final EVENT_DISABLE_APN:I = 0x4200e

.field public static final EVENT_DISCONNECT_DONE:I = 0x4200f

.field public static final EVENT_DO_RECOVERY:I = 0x42012

.field public static final EVENT_ENABLE_APN:I = 0x4200d

.field public static final EVENT_NETWORK_STATUS_CHANGED:I = 0x4202c

.field public static final EVENT_NR_TIMER_WATCHDOG:I = 0x42035

.field public static final EVENT_PCO_DATA_RECEIVED:I = 0x4202d

.field public static final EVENT_PROVISIONING_APN_ALARM:I = 0x42027

.field public static final EVENT_PS_RESTRICT_DISABLED:I = 0x42017

.field public static final EVENT_PS_RESTRICT_ENABLED:I = 0x42016

.field public static final EVENT_RADIO_AVAILABLE:I = 0x42001

.field public static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x42006

.field public static final EVENT_RESTART_RADIO:I = 0x4201a

.field public static final EVENT_ROAMING_OFF:I = 0x4200c

.field public static final EVENT_ROAMING_ON:I = 0x4200b

.field public static final EVENT_ROAMING_SETTING_CHANGE:I = 0x42030

.field public static final EVENT_SIM_STATE_UPDATED:I = 0x42037

.field public static final EVENT_TELEPHONY_DISPLAY_INFO_CHANGED:I = 0x42034

.field public static final EVENT_TRY_SETUP_DATA:I = 0x42003

.field public static final EVENT_VOICE_CALL_ENDED:I = 0x42008

.field public static final EVENT_VOICE_CALL_STARTED:I = 0x42007

.field public static final INVALID:I = -0x1

.field public static final PROVISIONING_URL_KEY:Ljava/lang/String; = "provisioningUrl"

.field public static final RAT_NAME_LTE:Ljava/lang/String; = "LTE"

.field public static final RAT_NAME_NR_NSA:Ljava/lang/String; = "NR_NSA"

.field public static final RAT_NAME_NR_NSA_MMWAVE:Ljava/lang/String; = "NR_NSA_MMWAVE"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
