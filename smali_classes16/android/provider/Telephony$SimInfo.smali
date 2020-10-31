.class public final Landroid/provider/Telephony$SimInfo;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimInfo"
.end annotation


# static fields
.field public static final COLOR_DEFAULT:I = 0x0

.field public static final COLUMN_ACCESS_RULES:Ljava/lang/String; = "access_rules"

.field public static final COLUMN_ACCESS_RULES_FROM_CARRIER_CONFIGS:Ljava/lang/String; = "access_rules_from_carrier_configs"

.field public static final COLUMN_ALLOWED_NETWORK_TYPES:Ljava/lang/String; = "allowed_network_types"

.field public static final COLUMN_CARD_ID:Ljava/lang/String; = "card_id"

.field public static final COLUMN_CARRIER_ID:Ljava/lang/String; = "carrier_id"

.field public static final COLUMN_CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final COLUMN_CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final COLUMN_CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final COLUMN_CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final COLUMN_CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final COLUMN_CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final COLUMN_CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final COLUMN_CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final COLUMN_CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final COLUMN_CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final COLUMN_CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final COLUMN_CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final COLUMN_CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final COLUMN_COLOR:Ljava/lang/String; = "color"

.field public static final COLUMN_DATA_ENABLED_OVERRIDE_RULES:Ljava/lang/String; = "data_enabled_override_rules"

.field public static final COLUMN_DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final COLUMN_DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final COLUMN_EHPLMNS:Ljava/lang/String; = "ehplmns"

.field public static final COLUMN_ENHANCED_4G_MODE_ENABLED:Ljava/lang/String; = "volte_vt_enabled"

.field public static final COLUMN_GROUP_OWNER:Ljava/lang/String; = "group_owner"

.field public static final COLUMN_GROUP_UUID:Ljava/lang/String; = "group_uuid"

.field public static final COLUMN_HPLMNS:Ljava/lang/String; = "hplmns"

.field public static final COLUMN_ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final COLUMN_IMSI:Ljava/lang/String; = "imsi"

.field public static final COLUMN_IMS_RCS_UCE_ENABLED:Ljava/lang/String; = "ims_rcs_uce_enabled"

.field public static final COLUMN_ISO_COUNTRY_CODE:Ljava/lang/String; = "iso_country_code"

.field public static final COLUMN_IS_EMBEDDED:Ljava/lang/String; = "is_embedded"

.field public static final COLUMN_IS_METERED:Ljava/lang/String; = "is_metered"

.field public static final COLUMN_IS_OPPORTUNISTIC:Ljava/lang/String; = "is_opportunistic"

.field public static final COLUMN_IS_REMOVABLE:Ljava/lang/String; = "is_removable"

.field public static final COLUMN_MCC:Ljava/lang/String; = "mcc"

.field public static final COLUMN_MCC_STRING:Ljava/lang/String; = "mcc_string"

.field public static final COLUMN_MNC:Ljava/lang/String; = "mnc"

.field public static final COLUMN_MNC_STRING:Ljava/lang/String; = "mnc_string"

.field public static final COLUMN_NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final COLUMN_NUMBER:Ljava/lang/String; = "number"

.field public static final COLUMN_PROFILE_CLASS:Ljava/lang/String; = "profile_class"

.field public static final COLUMN_SIM_PROVISIONING_STATUS:Ljava/lang/String; = "sim_provisioning_status"

.field public static final COLUMN_SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final COLUMN_SUBSCRIPTION_TYPE:Ljava/lang/String; = "subscription_type"

.field public static final COLUMN_UICC_APPLICATIONS_ENABLED:Ljava/lang/String; = "uicc_applications_enabled"

.field public static final COLUMN_UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_VT_IMS_ENABLED:Ljava/lang/String; = "vt_ims_enabled"

.field public static final COLUMN_WFC_IMS_ENABLED:Ljava/lang/String; = "wfc_ims_enabled"

.field public static final COLUMN_WFC_IMS_MODE:Ljava/lang/String; = "wfc_ims_mode"

.field public static final COLUMN_WFC_IMS_ROAMING_ENABLED:Ljava/lang/String; = "wfc_ims_roaming_enabled"

.field public static final COLUMN_WFC_IMS_ROAMING_MODE:Ljava/lang/String; = "wfc_ims_roaming_mode"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field public static final DISPLAY_NUMBER_DEFAULT:I = 0x1

.field public static final NAME_SOURCE_CARRIER:I = 0x3

.field public static final NAME_SOURCE_CARRIER_ID:I = 0x0

.field public static final NAME_SOURCE_SIM_PNN:I = 0x4

.field public static final NAME_SOURCE_SIM_SPN:I = 0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final PROFILE_CLASS_OPERATIONAL:I = 0x2

.field public static final PROFILE_CLASS_PROVISIONING:I = 0x1

.field public static final PROFILE_CLASS_TESTING:I = 0x0

.field public static final PROFILE_CLASS_UNSET:I = -0x1

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SIM_PROVISIONED:I = 0x0

.field public static final SUBSCRIPTION_TYPE_LOCAL_SIM:I = 0x0

.field public static final SUBSCRIPTION_TYPE_REMOTE_SIM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
