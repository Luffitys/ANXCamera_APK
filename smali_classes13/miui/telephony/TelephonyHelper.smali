.class public Lmiui/telephony/TelephonyHelper;
.super Ljava/lang/Object;
.source "TelephonyHelper.java"


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/telephony/TelephonyHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/telephony/TelephonyHelper$1;

    invoke-direct {v0}, Lmiui/telephony/TelephonyHelper$1;-><init>()V

    sput-object v0, Lmiui/telephony/TelephonyHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->mContext:Landroid/content/Context;

    nop

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/TelephonyHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/telephony/TelephonyHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/telephony/TelephonyHelper;
    .registers 1

    sget-object v0, Lmiui/telephony/TelephonyHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/TelephonyHelper;

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isWifiOnly()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->mDeviceId:Ljava/lang/String;

    :cond_24
    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method
