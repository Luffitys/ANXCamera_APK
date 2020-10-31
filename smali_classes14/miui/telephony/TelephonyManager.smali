.class public abstract Lmiui/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/TelephonyManager$Holder;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_ENABLE:I = 0x1

.field public static final CF_ACTION_ERASURE:I = 0x4

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_ALL:I = 0x4

.field public static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final CT_VOLTE_MODE_HVOLTE:I = 0x2

.field public static final CT_VOLTE_MODE_NOT_SUPPORT:I = 0x0

.field public static final CT_VOLTE_MODE_VOLTE_ONLY:I = 0x1

.field public static final CUSTOMIZED_REGION:Ljava/lang/String;

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_DOMESTIC_ROAMING:Ljava/lang/String; = "data_domestic_roaming"

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field private static final IS_CARRIER_APEX_ENABLED:Z

.field private static final IS_CUST_SINGLE_SIM:Z

.field private static final IS_GOOGLE_CSP:Z

.field public static final MCC_CHINA:Ljava/lang/String; = "460"

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_DC_HSPAP:I = 0x14

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final OPERATOR_NUMERIC_CHINA_MOBILE:Ljava/lang/String; = "46000"

.field public static final OPERATOR_NUMERIC_CHINA_TELECOM:Ljava/lang/String; = "46003"

.field public static final OPERATOR_NUMERIC_CHINA_UNICOM:Ljava/lang/String; = "46001"

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final REGION:Ljava/lang/String;

.field public static final SET_CALL_FOWARD_FAILURE:I = -0x1

.field public static final SET_CALL_FOWARD_NOT_SUPPORT:I = -0x2

.field public static final SET_CALL_FOWARD_SUCCESS:I = 0x0

.field public static final SET_CALL_FOWARD_UT_DATA_DISABLED:I = -0x3

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TeleMgr"

.field private static final VDF_NUMERICS:[Ljava/lang/String;

.field public static final VICE_IMS_AUTO_REJECT_SUPPORT:Z


# instance fields
.field private BUILD_OPERATOR_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string v0, "ro.miui.singlesim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    sput-boolean v2, Lmiui/telephony/TelephonyManager;->IS_CUST_SINGLE_SIM:Z

    const-string v0, "ro.miui.google.csp"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/telephony/TelephonyManager;->IS_GOOGLE_CSP:Z

    const-string v0, "ro.miui.customized.region"

    const-string v2, ""

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v0, "ro.miui.build.region"

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManager;->REGION:Ljava/lang/String;

    const-string v0, "ro.miui.carrier.apex"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/telephony/TelephonyManager;->IS_CARRIER_APEX_ENABLED:Z

    const-string v0, "ro.miui.vicegwsd"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/telephony/TelephonyManager;->VICE_IMS_AUTO_REJECT_SUPPORT:Z

    const-string v1, "23003"

    const-string v2, "26202"

    const-string v3, "21401"

    const-string v4, "20205"

    const-string v5, "21670"

    const-string v6, "27201"

    const-string v7, "22210"

    const-string v8, "20404"

    const-string v9, "26801"

    const-string v10, "22601"

    const-string v11, "23415"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManager;->VDF_NUMERICS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/TelephonyManager;->BUILD_OPERATOR_TYPE:Ljava/lang/String;

    return-void
.end method

.method public static checkCallingOrSelfPermissionGranted(I)Z
    .registers 3

    invoke-static {p0}, Lmiui/telephony/TelephonyManager;->getAppIdUserHandle(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ltz v1, :cond_19

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lmiui/telephony/TelephonyManager;->isSameAppUserHandle(II)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v1, 0x0

    return v1

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    return v1
.end method

.method private static getAppIdUserHandle(I)I
    .registers 7

    const-class v0, Landroid/os/UserHandle;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "getAppId"

    invoke-static {v0, v4, v1, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v0

    const-class v1, Landroid/os/UserHandle;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getDefault()Lmiui/telephony/TelephonyManager;
    .registers 1

    sget-object v0, Lmiui/telephony/TelephonyManager$Holder;->INSTANCE:Lmiui/telephony/TelephonyManager;

    return-object v0
.end method

.method public static isBuildRegionForTaiWan()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->REGION:Ljava/lang/String;

    const-string v1, "tw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCarrierApexEnabled()Z
    .registers 1

    sget-boolean v0, Lmiui/telephony/TelephonyManager;->IS_CARRIER_APEX_ENABLED:Z

    return v0
.end method

.method public static isCustForClEntel()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "cl_entel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "cl_en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static isCustForEsVodafone()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "es_vodafone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForFrOrange()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "fr_orange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForFrRussia()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "ru"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForFrSfr()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "fr_sfr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForHkH3g()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "hk_h3g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForJpKd()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "jp_kd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForKrKt()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "kr_kt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForKrLgu()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "kr_lgu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForKrOps()Z
    .registers 1

    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrSkt()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrKt()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrLgu()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static isCustForKrSkt()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "kr_skt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForLmClaro()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "lm_cr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForMxAt()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "mx_at"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForMxTelcel()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "mx_telcel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustForTurkCell()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "tr_turkcell"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustSingleSimDevice()Z
    .registers 1

    sget-boolean v0, Lmiui/telephony/TelephonyManager;->IS_CUST_SINGLE_SIM:Z

    return v0
.end method

.method public static isDomesticRoamingEnable(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_domestic_roaming"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public static isForEEA()Z
    .registers 2

    sget-object v0, Lmiui/telephony/TelephonyManager;->REGION:Ljava/lang/String;

    const-string v1, "eea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isForEEAHasSubnetVDF()Z
    .registers 7

    invoke-static {}, Lmiui/telephony/TelephonyManager;->isForEEA()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v0, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lmiui/telephony/TelephonyManager;->VDF_NUMERICS:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_14
    if-ge v4, v3, :cond_23

    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v1, 0x1

    return v1

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_23
    return v1
.end method

.method public static isGoogleCsp()Z
    .registers 1

    sget-boolean v0, Lmiui/telephony/TelephonyManager;->IS_GOOGLE_CSP:Z

    return v0
.end method

.method private static isSameAppUserHandle(II)Z
    .registers 9

    const-class v0, Landroid/os/UserHandle;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "isSameApp"

    invoke-static {v0, v4, v1, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v0

    const-class v1, Landroid/os/UserHandle;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportDomesticRoaming()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isViceImsAutoRejectSupport()Z
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lmiui/telephony/TelephonyManager;->VICE_IMS_AUTO_REJECT_SUPPORT:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static setDomesticRoamingEnable(Landroid/content/Context;Z)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_domestic_roaming"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract getCallState()I
.end method

.method public abstract getCallStateForSlot(I)I
.end method

.method public abstract getCallStateForSubscription(I)I
.end method

.method public abstract getCellLocationForSlot(I)Landroid/telephony/CellLocation;
.end method

.method public getCtVolteSupportedMode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDataActivity()I
.end method

.method public abstract getDataActivityForSlot(I)I
.end method

.method public abstract getDataActivityForSubscription(I)I
.end method

.method public abstract getDataState()I
.end method

.method public abstract getDataStateForSlot(I)I
.end method

.method public abstract getDataStateForSubscription(I)I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract getDeviceIdForSubscription(I)Ljava/lang/String;
.end method

.method public getDeviceIdList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "TelephonyManager"

    const-string v1, "unexpected getDeviceIdList method call"

    invoke-static {v0, v1}, Lmiui/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDeviceSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
.end method

.method public getIccCardCount()I
    .registers 5

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_13

    invoke-virtual {p0, v2}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_10

    add-int/lit8 v1, v1, 0x1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    return v1
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getImeiForSlot(I)Ljava/lang/String;
.end method

.method public abstract getImeiForSubscription(I)Ljava/lang/String;
.end method

.method public getImeiList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getLine1NumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getLine1NumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getMeidForSlot(I)Ljava/lang/String;
.end method

.method public abstract getMeidForSubscription(I)Ljava/lang/String;
.end method

.method public getMeidList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public abstract getMiuiDeviceId()Ljava/lang/String;
.end method

.method public abstract getMiuiLevel(Landroid/telephony/SignalStrength;)I
.end method

.method public abstract getNetworkCountryIso()Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperator()Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorName()Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getNetworkTypeForSlot(I)I
.end method

.method public abstract getNetworkTypeForSubscription(I)I
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getPhoneType()I
.end method

.method public abstract getPhoneTypeForSlot(I)I
.end method

.method public abstract getPhoneTypeForSubscription(I)I
.end method

.method public abstract getSimCountryIso()Ljava/lang/String;
.end method

.method public abstract getSimCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimOperator()Ljava/lang/String;
.end method

.method public abstract getSimOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorName()Ljava/lang/String;
.end method

.method public abstract getSimOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimSerialNumber()Ljava/lang/String;
.end method

.method public abstract getSimSerialNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimSerialNumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimState()I
.end method

.method public abstract getSimStateForSlot(I)I
.end method

.method public abstract getSimStateForSubscription(I)I
.end method

.method public abstract getSmallDeviceId()Ljava/lang/String;
.end method

.method public getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract getSubscriberIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSubscriberIdForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract hasIccCard(I)Z
.end method

.method public isChinaTelecomTest(Ljava/lang/String;)Z
    .registers 4

    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "46003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "46011"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "45502"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "45507"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "00101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "20404"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3b
    const/4 v1, 0x1

    :cond_3c
    return v1

    :cond_3d
    return v1
.end method

.method public isCmccCooperationDevice()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isDisableLte(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isDualNrSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isDualSaSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isDualVolteSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFiveGCapable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isGameFiveGOptimizeSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isGwsdSupport()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isImsRegistered(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isMultiSimEnabled()Z
.end method

.method public isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isUserFiveGEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVideoTelephonyAvailable(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isVoiceCapable()Z
.end method

.method public isVolteEnabledByPlatform()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByPlatform(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByUser()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByUser(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isVtEnabledByPlatform()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVtEnabledByPlatform(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isWifiCallingAvailable(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract listen(Landroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 8

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setCallForwardingOption not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIccCardActivate(IZ)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserFiveGEnabled(Z)V
    .registers 2

    return-void
.end method
