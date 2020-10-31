.class public Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;
.super Landroid/telephony/ims/stub/RcsCapabilityExchange;
.source "RcsPresenceExchangeImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase$StackPublishTriggerType;,
        Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase$PresenceResponseCode;
    }
.end annotation


# static fields
.field public static final CAPABILITY_UPDATE_TRIGGER_ETAG_EXPIRED:I = 0x0

.field public static final CAPABILITY_UPDATE_TRIGGER_MOVE_TO_2G:I = 0x6

.field public static final CAPABILITY_UPDATE_TRIGGER_MOVE_TO_3G:I = 0x5

.field public static final CAPABILITY_UPDATE_TRIGGER_MOVE_TO_EHRPD:I = 0x3

.field public static final CAPABILITY_UPDATE_TRIGGER_MOVE_TO_HSPAPLUS:I = 0x4

.field public static final CAPABILITY_UPDATE_TRIGGER_MOVE_TO_IWLAN:I = 0x8

.field public static final CAPABILITY_UPDATE_TRIGGER_MOVE_TO_LTE_VOPS_DISABLED:I = 0x1

.field public static final CAPABILITY_UPDATE_TRIGGER_MOVE_TO_LTE_VOPS_ENABLED:I = 0x2

.field public static final CAPABILITY_UPDATE_TRIGGER_MOVE_TO_NR5G_VOPS_DISABLED:I = 0xa

.field public static final CAPABILITY_UPDATE_TRIGGER_MOVE_TO_NR5G_VOPS_ENABLED:I = 0xb

.field public static final CAPABILITY_UPDATE_TRIGGER_MOVE_TO_WLAN:I = 0x7

.field public static final CAPABILITY_UPDATE_TRIGGER_UNKNOWN:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "RcsPresenceExchangeIB"

.field public static final RESPONSE_FORBIDDEN:I = 0x3

.field public static final RESPONSE_NOT_AUTHORIZED_FOR_PRESENCE:I = 0x2

.field public static final RESPONSE_NOT_FOUND:I = 0x4

.field public static final RESPONSE_NOT_REGISTERED:I = 0x1

.field public static final RESPONSE_SIP_INTERVAL_TOO_SHORT:I = 0x7

.field public static final RESPONSE_SIP_REQUEST_TIMEOUT:I = 0x5

.field public static final RESPONSE_SIP_SERVICE_UNAVAILABLE:I = 0x8

.field public static final RESPONSE_SUBSCRIBE_GENERIC_FAILURE:I = -0x1

.field public static final RESPONSE_SUBSCRIBE_TOO_LARGE:I = 0x6

.field public static final RESPONSE_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/RcsCapabilityExchange;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilityRequestResponse(Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;->getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IRcsFeatureListener;->onCapabilityRequestResponsePresence(Ljava/util/List;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public final onNetworkResponse(ILjava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;->getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IRcsFeatureListener;->onNetworkResponse(ILjava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public final onNotifyUpdateCapabilites(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;->getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IRcsFeatureListener;->onNotifyUpdateCapabilities(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public final onUnpublish()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;->getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IRcsFeatureListener;->onUnpublish()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public requestCapabilities(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "RcsPresenceExchangeIB"

    const-string/jumbo v1, "requestCapabilities called with no implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    invoke-virtual {p0}, Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;->getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IRcsFeatureListener;->onCommandUpdate(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12
    .catch Landroid/telephony/ims/ImsException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    return-void
.end method

.method public updateCapabilities(Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 5

    const-string v0, "RcsPresenceExchangeIB"

    const-string/jumbo v1, "updateCapabilities called with no implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    invoke-virtual {p0}, Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;->getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IRcsFeatureListener;->onCommandUpdate(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12
    .catch Landroid/telephony/ims/ImsException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    return-void
.end method
