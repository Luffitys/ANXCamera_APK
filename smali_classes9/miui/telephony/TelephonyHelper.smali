.class public Lmiui/telephony/TelephonyHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/telephony/TelephonyHelper$1;

    invoke-direct {v0}, Lmiui/telephony/TelephonyHelper$1;-><init>()V

    sput-object v0, Lmiui/telephony/TelephonyHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/TelephonyHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/telephony/TelephonyHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/telephony/TelephonyHelper;
    .locals 1

    sget-object v0, Lmiui/telephony/TelephonyHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/TelephonyHelper;

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isWifiOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->mDeviceId:Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lmiui/telephony/TelephonyHelper;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method
