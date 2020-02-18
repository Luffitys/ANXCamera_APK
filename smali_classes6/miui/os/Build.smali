.class public Lmiui/os/Build;
.super Landroid/os/Build;
.source "Build.java"


# static fields
.field public static final HAS_CUST_PARTITION:Z

.field public static final IS_ALPHA_BUILD:Z

.field public static final IS_CDMA:Z

.field public static final IS_CM_COOPERATION:Z

.field public static final IS_CM_CUSTOMIZATION:Z

.field public static final IS_CM_CUSTOMIZATION_TEST:Z

.field public static final IS_CTA_BUILD:Z = false

.field public static final IS_CTS_BUILD:Z

.field public static final IS_CT_CUSTOMIZATION:Z

.field public static final IS_CT_CUSTOMIZATION_TEST:Z

.field public static final IS_CU_CUSTOMIZATION:Z

.field public static final IS_CU_CUSTOMIZATION_TEST:Z

.field public static final IS_DEBUGGABLE:Z

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_FUNCTION_LIMITED:Z

.field public static final IS_GLOBAL_BUILD:Z

.field public static final IS_HONGMI:Z

.field public static final IS_HONGMI2_TDSCDMA:Z

.field public static final IS_HONGMI_THREE:Z

.field public static final IS_HONGMI_THREEX:Z

.field public static final IS_HONGMI_THREEX_CM:Z

.field public static final IS_HONGMI_THREEX_CT:Z

.field public static final IS_HONGMI_THREEX_CU:Z

.field public static final IS_HONGMI_THREE_LTE:Z

.field public static final IS_HONGMI_THREE_LTE_CM:Z

.field public static final IS_HONGMI_THREE_LTE_CU:Z

.field public static final IS_HONGMI_TWO:Z

.field public static final IS_HONGMI_TWOS_LTE_MTK:Z

.field public static final IS_HONGMI_TWOX:Z

.field public static final IS_HONGMI_TWOX_BR:Z

.field public static final IS_HONGMI_TWOX_CM:Z

.field public static final IS_HONGMI_TWOX_CT:Z

.field public static final IS_HONGMI_TWOX_CU:Z

.field public static final IS_HONGMI_TWOX_IN:Z

.field public static final IS_HONGMI_TWOX_LC:Z

.field public static final IS_HONGMI_TWOX_SA:Z

.field public static final IS_HONGMI_TWO_A:Z

.field public static final IS_HONGMI_TWO_S:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_MI1S:Z

.field public static final IS_MI2A:Z

.field public static final IS_MIFIVE:Z

.field public static final IS_MIFOUR:Z

.field public static final IS_MIFOUR_CDMA:Z

.field public static final IS_MIFOUR_LTE_CM:Z

.field public static final IS_MIFOUR_LTE_CT:Z

.field public static final IS_MIFOUR_LTE_CU:Z

.field public static final IS_MIFOUR_LTE_INDIA:Z

.field public static final IS_MIFOUR_LTE_SEASA:Z

.field public static final IS_MIONE:Z

.field public static final IS_MIONE_CDMA:Z

.field public static final IS_MIPAD:Z

.field public static final IS_MITHREE:Z

.field public static final IS_MITHREE_CDMA:Z

.field public static final IS_MITHREE_TDSCDMA:Z

.field public static final IS_MITWO:Z

.field public static final IS_MITWO_CDMA:Z

.field public static final IS_MITWO_TDSCDMA:Z

.field public static final IS_MIUI:Z

.field public static final IS_N7:Z

.field public static final IS_OFFICIAL_VERSION:Z

.field public static final IS_PRIVATE_BUILD:Z

.field public static final IS_PRIVATE_WATER_MARKER:Z

.field public static final IS_PRO_DEVICE:Z

.field public static final IS_STABLE_VERSION:Z

.field public static final IS_TABLET:Z

.field public static final IS_TDS_CDMA:Z

.field public static final IS_XIAOMI:Z

.field private static final PROP_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final REGULAR_EXPRESSION_FOR_DEVELOPMENT:Ljava/lang/String; = "\\d+(.\\d+){2,}(-internal)?"

.field private static final REGULAR_EXPRESSION_FOR_STABLE:Ljava/lang/String; = "^V(\\d+.)+([A-Z]+\\d{0,}.?)+(\\d+.?){0,}$"

.field public static final USERDATA_IMAGE_VERSION_CODE:Ljava/lang/String;

.field public static final USER_MODE:Ljava/lang/String; = "persist.sys.user_mode"

.field public static final USER_MODE_ELDER:I = 0x1

.field public static final USER_MODE_NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 48
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mione"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "mione_plus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v2

    :goto_1a
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    .line 51
    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 1S"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 1SC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    move v0, v1

    goto :goto_34

    :cond_33
    :goto_33
    move v0, v2

    :goto_34
    sput-boolean v0, Lmiui/os/Build;->IS_MI1S:Z

    .line 54
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "aries"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "taurus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "taurus_td"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_57

    :cond_55
    move v0, v1

    goto :goto_58

    :cond_57
    :goto_57
    move v0, v2

    :goto_58
    sput-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    .line 57
    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 2A"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 2A TD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    goto :goto_71

    :cond_6f
    move v0, v1

    goto :goto_72

    :cond_71
    :goto_71
    move v0, v2

    :goto_72
    sput-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    .line 60
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "pisces"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "cancro"

    if-nez v0, :cond_95

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MI 3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    goto :goto_95

    :cond_93
    move v0, v1

    goto :goto_96

    :cond_95
    :goto_95
    move v0, v2

    :goto_96
    sput-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    .line 63
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    move v0, v2

    goto :goto_ad

    :cond_ac
    move v0, v1

    :goto_ad
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    .line 66
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "virgo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    .line 69
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_d0

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_d0

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-nez v0, :cond_d0

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-nez v0, :cond_d0

    sget-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    if-eqz v0, :cond_ce

    goto :goto_d0

    :cond_ce
    move v0, v1

    goto :goto_d1

    :cond_d0
    :goto_d0
    move v0, v2

    :goto_d1
    sput-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    .line 75
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "mocha"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MIPAD:Z

    .line 77
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "flo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_N7:Z

    .line 84
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "armani"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    .line 87
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM2014011"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_108

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM2014012"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    goto :goto_108

    :cond_106
    move v0, v1

    goto :goto_109

    :cond_108
    :goto_108
    move v0, v2

    :goto_109
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_S:Z

    .line 90
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM2014501"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    .line 93
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM2013022"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_134

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2013023"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_134

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    if-nez v0, :cond_134

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_S:Z

    if-eqz v0, :cond_132

    goto :goto_134

    :cond_132
    move v0, v1

    goto :goto_135

    :cond_134
    :goto_134
    move v0, v2

    :goto_135
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    .line 97
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "lcsh92_wet_jb9"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14e

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "lcsh92_wet_tdd"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    goto :goto_14e

    :cond_14c
    move v0, v1

    goto :goto_14f

    :cond_14e
    :goto_14e
    move v0, v2

    :goto_14f
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE:Z

    .line 100
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "dior"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE:Z

    .line 103
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE:Z

    const-string v4, "ro.boot.modem"

    if-eqz v0, :cond_16f

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "LTETD"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    move v0, v2

    goto :goto_170

    :cond_16f
    move v0, v1

    :goto_170
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE_CM:Z

    .line 106
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE:Z

    if-eqz v0, :cond_184

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "LTEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    move v0, v2

    goto :goto_185

    :cond_184
    move v0, v1

    :goto_185
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE_CU:Z

    .line 109
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014811"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CU:Z

    .line 112
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014812"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a8

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014821"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    goto :goto_1a8

    :cond_1a6
    move v0, v1

    goto :goto_1a9

    :cond_1a8
    :goto_1a8
    move v0, v2

    :goto_1a9
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CT:Z

    .line 115
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014813"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014112"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    goto :goto_1c2

    :cond_1c0
    move v0, v1

    goto :goto_1c3

    :cond_1c2
    :goto_1c2
    move v0, v2

    :goto_1c3
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CM:Z

    .line 118
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014818"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_IN:Z

    .line 121
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014817"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_SA:Z

    .line 124
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "HM2014819"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_BR:Z

    .line 127
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CU:Z

    if-nez v0, :cond_1fe

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CT:Z

    if-nez v0, :cond_1fe

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CM:Z

    if-nez v0, :cond_1fe

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_IN:Z

    if-nez v0, :cond_1fe

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_SA:Z

    if-nez v0, :cond_1fe

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_BR:Z

    if-eqz v0, :cond_1fc

    goto :goto_1fe

    :cond_1fc
    move v0, v1

    goto :goto_1ff

    :cond_1fe
    :goto_1fe
    move v0, v2

    :goto_1ff
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    .line 130
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "lte26007"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_LC:Z

    .line 133
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "gucci"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX:Z

    .line 136
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX:Z

    const-string v4, "persist.sys.modem"

    const-string v5, "cm"

    if-eqz v0, :cond_229

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_229

    move v0, v2

    goto :goto_22a

    :cond_229
    move v0, v1

    :goto_22a
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX_CM:Z

    .line 139
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX:Z

    const-string v6, "cu"

    if-eqz v0, :cond_23e

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23e

    move v0, v2

    goto :goto_23f

    :cond_23e
    move v0, v1

    :goto_23f
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX_CU:Z

    .line 142
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX:Z

    const-string v7, "ct"

    if-eqz v0, :cond_253

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_253

    move v0, v2

    goto :goto_254

    :cond_253
    move v0, v1

    :goto_254
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX_CT:Z

    .line 146
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-nez v0, :cond_275

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE:Z

    if-nez v0, :cond_275

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    if-nez v0, :cond_275

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE:Z

    if-nez v0, :cond_275

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_LC:Z

    if-nez v0, :cond_275

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    if-nez v0, :cond_275

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX:Z

    if-eqz v0, :cond_273

    goto :goto_275

    :cond_273
    move v0, v1

    goto :goto_276

    :cond_275
    :goto_275
    move v0, v2

    :goto_276
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI:Z

    .line 153
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_284

    invoke-static {}, Lmiui/os/Build;->hasMsm8660Property()Z

    move-result v0

    if-eqz v0, :cond_284

    move v0, v2

    goto :goto_285

    :cond_284
    move v0, v1

    :goto_285
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE_CDMA:Z

    .line 156
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    const-string v4, "persist.radio.modem"

    if-eqz v0, :cond_29b

    .line 157
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v8, "CDMA"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29b

    move v0, v2

    goto :goto_29c

    :cond_29b
    move v0, v1

    :goto_29c
    sput-boolean v0, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    .line 160
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_2ae

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "MI 3C"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ae

    move v0, v2

    goto :goto_2af

    :cond_2ae
    move v0, v1

    :goto_2af
    sput-boolean v0, Lmiui/os/Build;->IS_MITHREE_CDMA:Z

    .line 163
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_2c3

    .line 164
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v8, "CDMA"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c3

    move v0, v2

    goto :goto_2c4

    :cond_2c3
    move v0, v1

    :goto_2c4
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_CDMA:Z

    .line 167
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_2d8

    .line 168
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v8, "TD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d8

    move v0, v2

    goto :goto_2d9

    :cond_2d8
    move v0, v1

    :goto_2d9
    sput-boolean v0, Lmiui/os/Build;->IS_MITWO_TDSCDMA:Z

    .line 171
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_2ed

    .line 172
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v8, "TD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ed

    move v0, v2

    goto :goto_2ee

    :cond_2ed
    move v0, v1

    :goto_2ee
    sput-boolean v0, Lmiui/os/Build;->IS_MITHREE_TDSCDMA:Z

    .line 175
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_302

    .line 176
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "LTE-CMCC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_302

    move v0, v2

    goto :goto_303

    :cond_302
    move v0, v1

    :goto_303
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_CM:Z

    .line 179
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_317

    .line 180
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "LTE-CU"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_317

    move v0, v2

    goto :goto_318

    :cond_317
    move v0, v1

    :goto_318
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_CU:Z

    .line 183
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_32c

    .line 184
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "LTE-CT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32c

    move v0, v2

    goto :goto_32d

    :cond_32c
    move v0, v1

    :goto_32d
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_CT:Z

    .line 187
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_341

    .line 188
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "LTE-India"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_341

    move v0, v2

    goto :goto_342

    :cond_341
    move v0, v1

    :goto_342
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_INDIA:Z

    .line 191
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_356

    .line 192
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "LTE-SEAsa"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_356

    move v0, v2

    goto :goto_357

    :cond_356
    move v0, v1

    :goto_357
    sput-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_SEASA:Z

    .line 195
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI2_TDSCDMA:Z

    .line 198
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE_CDMA:Z

    if-nez v0, :cond_378

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    if-nez v0, :cond_378

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE_CDMA:Z

    if-nez v0, :cond_378

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR_CDMA:Z

    if-nez v0, :cond_378

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_CT:Z

    if-eqz v0, :cond_376

    goto :goto_378

    :cond_376
    move v0, v1

    goto :goto_379

    :cond_378
    :goto_378
    move v0, v2

    :goto_379
    sput-boolean v0, Lmiui/os/Build;->IS_CDMA:Z

    .line 201
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE_TDSCDMA:Z

    if-nez v0, :cond_38a

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI2_TDSCDMA:Z

    if-nez v0, :cond_38a

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_TDSCDMA:Z

    if-eqz v0, :cond_388

    goto :goto_38a

    :cond_388
    move v0, v1

    goto :goto_38b

    :cond_38a
    :goto_38a
    move v0, v2

    :goto_38b
    sput-boolean v0, Lmiui/os/Build;->IS_TDS_CDMA:Z

    .line 204
    nop

    .line 205
    const-string v0, "ro.carrier.name"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    .line 208
    nop

    .line 209
    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ro.miui.cust_variant"

    if-eqz v3, :cond_3c1

    .line 210
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    const-string v8, "cn_chinamobile"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3bf

    .line 211
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    const-string v8, "cn_cta"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c1

    :cond_3bf
    move v3, v2

    goto :goto_3c2

    :cond_3c1
    move v3, v1

    :goto_3c2
    sput-boolean v3, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    .line 214
    nop

    .line 215
    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3dd

    .line 216
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    const-string v4, "cn_cmcooperation"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3dd

    move v3, v2

    goto :goto_3de

    :cond_3dd
    move v3, v1

    :goto_3de
    sput-boolean v3, Lmiui/os/Build;->IS_CM_COOPERATION:Z

    .line 219
    nop

    .line 220
    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    .line 223
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3ff

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 225
    const-string v3, "\\d+(.\\d+){2,}(-internal)?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3ff

    move v0, v2

    goto :goto_400

    :cond_3ff
    move v0, v1

    :goto_400
    sput-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    .line 228
    sget-object v0, Lmiui/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_420

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_420

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 230
    const-string v3, "^V(\\d+.)+([A-Z]+\\d{0,}.?)+(\\d+.?){0,}$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_420

    move v0, v2

    goto :goto_421

    :cond_420
    move v0, v1

    :goto_421
    sput-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    .line 233
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_42e

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_42c

    goto :goto_42e

    :cond_42c
    move v0, v1

    goto :goto_42f

    :cond_42e
    :goto_42e
    move v0, v2

    :goto_42f
    sput-boolean v0, Lmiui/os/Build;->IS_OFFICIAL_VERSION:Z

    .line 236
    const-string v0, "ro.product.mod_device"

    const-string v3, ""

    invoke-static {v0, v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "_alpha"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    .line 242
    nop

    .line 243
    const-string v4, "ro.miui.cts"

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    const-string v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v8, "persist.sys.miui_optimization"

    invoke-static {v8, v4}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    xor-int/2addr v4, v2

    sput-boolean v4, Lmiui/os/Build;->IS_CTS_BUILD:Z

    .line 252
    sget-boolean v4, Lcom/miui/internal/cust/PrivateConfig;->IS_PRIVATE_BUILD:Z

    sput-boolean v4, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    .line 255
    sget-boolean v4, Lcom/miui/internal/cust/PrivateWaterMarkerConfig;->IS_PRIVATE_WATER_MARKER:Z

    sput-boolean v4, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    .line 258
    nop

    .line 259
    const-string v4, "ro.cust.test"

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 258
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    .line 262
    nop

    .line 263
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    .line 266
    nop

    .line 267
    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    .line 270
    nop

    .line 271
    const-string v4, "persist.sys.func_limit_switch"

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lmiui/os/Build;->IS_FUNCTION_LIMITED:Z

    .line 304
    invoke-static {v0, v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_global"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 307
    invoke-static {v0, v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "_global"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    .line 312
    invoke-static {}, Lmiui/os/Build;->isTablet()Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    .line 370
    invoke-static {}, Lmiui/os/Build;->getUserdataImageVersionCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Build;->USERDATA_IMAGE_VERSION_CODE:Ljava/lang/String;

    .line 403
    nop

    .line 404
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4c1

    move v0, v2

    goto :goto_4c2

    :cond_4c1
    move v0, v1

    :goto_4c2
    sput-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    .line 409
    nop

    .line 410
    const-string v0, "ro.miui.has_cust_partition"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    .line 415
    const-string v0, "ro.miui.cust_device"

    invoke-static {v0, v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    const-string v1, "_pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_PRO_DEVICE:Z

    .line 422
    const-string v0, "ro.miui.ui.version.code"

    invoke-static {v0, v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    .line 422
    return-void
.end method

.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkRegion(Ljava/lang/String;)Z
    .registers 2
    .param p0, "region"    # Ljava/lang/String;

    .line 300
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getCustVariant()Ljava/lang/String;
    .registers 2

    .line 362
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "ro.miui.cust_variant"

    if-nez v0, :cond_d

    .line 363
    const-string v0, "cn"

    invoke-static {v1, v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 365
    :cond_d
    const-string v0, "hk"

    invoke-static {v1, v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getMiUiVersionCode()Ljava/lang/String;
    .registers 2

    .line 426
    const-string v0, "ro.miui.ui.version.code"

    const-string v1, ""

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .registers 2

    .line 286
    const-string v0, "ro.miui.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserMode()I
    .registers 2

    .line 340
    const-string v0, "persist.sys.user_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getUserdataImageVersionCode()Ljava/lang/String;
    .registers 5

    .line 380
    const-string v0, ""

    const-string v1, "ro.miui.userdata_version"

    invoke-static {v1, v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "versionCodeProperty":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 382
    const-string v0, "Unavailable"

    return-object v0

    .line 386
    :cond_11
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_18

    .line 387
    const-string v2, "global"

    .local v2, "region":Ljava/lang/String;
    goto :goto_1a

    .line 389
    .end local v2    # "region":Ljava/lang/String;
    :cond_18
    const-string v2, "cn"

    .line 392
    .restart local v2    # "region":Ljava/lang/String;
    :goto_1a
    const-string v3, "ro.carrier.name"

    invoke-static {v3, v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "carrier":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    :cond_37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string v4, "%s(%s%s)"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasCameraFlash(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 326
    const-string v0, "support_torch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static hasMsm8660Property()Z
    .registers 2

    .line 316
    const-string v0, "ro.soc.name"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "soc":Ljava/lang/String;
    const-string v1, "msm8660"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "unkown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    return v1
.end method

.method private static isTablet()Z
    .registers 2

    .line 322
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static reboot(ZLjava/lang/String;Z)V
    .registers 4
    .param p0, "confim"    # Z
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "wait"    # Z

    .line 351
    :try_start_0
    const-string v0, "power"

    .line 352
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 353
    .local v0, "powermanager":Landroid/os/IPowerManager;
    if-eqz v0, :cond_f

    .line 354
    invoke-interface {v0, p0, p1, p2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 357
    .end local v0    # "powermanager":Landroid/os/IPowerManager;
    :cond_f
    goto :goto_11

    .line 356
    :catch_10
    move-exception v0

    .line 358
    :goto_11
    return-void
.end method

.method public static setUserMode(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.user_mode"

    invoke-static {v1, v0}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, v0}, Lmiui/os/Build;->reboot(ZLjava/lang/String;Z)V

    .line 347
    return-void
.end method
