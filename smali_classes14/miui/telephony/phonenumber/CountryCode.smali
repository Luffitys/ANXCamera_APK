.class public Lmiui/telephony/phonenumber/CountryCode;
.super Ljava/lang/Object;
.source "CountryCode.java"


# static fields
.field private static final CONTACT_COUNTRYCODE:Ljava/lang/String; = "persist.radio.countrycode"

.field private static final DEFAULT_IDD_CODE:Ljava/lang/String; = "00"

.field private static final EMPTY:Ljava/lang/String; = ""

.field public static final GSM_GENERAL_IDD_CODE:Ljava/lang/String; = "+"

.field private static ICC_COUNTRY_CODE:Ljava/lang/String;

.field private static ICC_OPERATOR:Ljava/lang/String;

.field private static NETWORK_COUNTRY_CODE:Ljava/lang/String;

.field private static NETWORK_IDD_CODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static NETWORK_OPERATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    const-string v0, "00"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIccCountryCode()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateIcc()V

    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static getIddCode()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateNetwork()V

    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getIddCodes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateNetwork()V

    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    return-object v0
.end method

.method public static getNetworkCountryCode()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateNetwork()V

    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserDefinedCountryCode()Ljava/lang/String;
    .registers 2

    const-string v0, "persist.radio.countrycode"

    const-string v1, ""

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChinaEnvironment()Z
    .registers 2

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/telephony/phonenumber/CountryCodeConverter;->isChinaEnvironment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static updateIcc()V
    .registers 4

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_32

    sget-object v2, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    sput-object v1, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    :cond_32
    return-void
.end method

.method private static updateNetwork()V
    .registers 4

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4e

    sget-object v2, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    sput-object v1, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    invoke-static {v2}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getIddCodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    if-eqz v3, :cond_42

    sget-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4e

    :cond_42
    const-string v3, "00"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    :cond_4e
    return-void
.end method
