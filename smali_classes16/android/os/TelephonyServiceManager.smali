.class public Landroid/os/TelephonyServiceManager;
.super Ljava/lang/Object;
.source "TelephonyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TelephonyServiceManager$ServiceNotFoundException;,
        Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarrierConfigServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "carrier_config"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getEuiccCardControllerServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "euicc_card_controller"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getEuiccControllerService()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "econtroller"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "simphonebook"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOpportunisticNetworkServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "ions"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "iphonesubinfo"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "isms"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "isub"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "telephony_ims"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTelephonyRcsMessageServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "ircsmessage"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "phone"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
