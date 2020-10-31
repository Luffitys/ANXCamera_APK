.class public Landroid/telephony/ims/stub/RcsSipOptionsImplBase;
.super Landroid/telephony/ims/stub/RcsCapabilityExchange;
.source "RcsSipOptionsImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/RcsSipOptionsImplBase$SipResponseCode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsSipOptionsImplBase"

.field public static final RESPONSE_BAD_REQUEST:I = 0x5

.field public static final RESPONSE_DOES_NOT_EXIST_ANYWHERE:I = 0x4

.field public static final RESPONSE_GENERIC_FAILURE:I = -0x1

.field public static final RESPONSE_NOT_FOUND:I = 0x3

.field public static final RESPONSE_REQUEST_TIMEOUT:I = 0x2

.field public static final RESPONSE_SUCCESS:I = 0x0

.field public static final RESPONSE_TEMPORARILY_UNAVAILABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/RcsCapabilityExchange;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilityRequestResponse(ILjava/lang/String;Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/stub/RcsSipOptionsImplBase;->getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/telephony/ims/aidl/IRcsFeatureListener;->onCapabilityRequestResponseOptions(ILjava/lang/String;Landroid/telephony/ims/RcsContactUceCapability;I)V
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

.method public final onRemoteCapabilityRequest(Landroid/net/Uri;Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/stub/RcsSipOptionsImplBase;->getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IRcsFeatureListener;->onRemoteCapabilityRequest(Landroid/net/Uri;Landroid/telephony/ims/RcsContactUceCapability;I)V
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

.method public respondToCapabilityRequest(Ljava/lang/String;Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 6

    const-string v0, "RcsSipOptionsImplBase"

    const-string/jumbo v1, "respondToCapabilityRequest called with no implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    invoke-virtual {p0}, Landroid/telephony/ims/stub/RcsSipOptionsImplBase;->getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p3}, Landroid/telephony/ims/aidl/IRcsFeatureListener;->onCommandUpdate(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12
    .catch Landroid/telephony/ims/ImsException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    return-void
.end method

.method public respondToCapabilityRequestWithError(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 7

    const-string v0, "RcsSipOptionsImplBase"

    const-string/jumbo v1, "respondToCapabiltyRequestWithError called with no implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    invoke-virtual {p0}, Landroid/telephony/ims/stub/RcsSipOptionsImplBase;->getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p4}, Landroid/telephony/ims/aidl/IRcsFeatureListener;->onCommandUpdate(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12
    .catch Landroid/telephony/ims/ImsException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    return-void
.end method

.method public sendCapabilityRequest(Landroid/net/Uri;Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 6

    const-string v0, "RcsSipOptionsImplBase"

    const-string/jumbo v1, "sendCapabilityRequest called with no implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    invoke-virtual {p0}, Landroid/telephony/ims/stub/RcsSipOptionsImplBase;->getListener()Landroid/telephony/ims/aidl/IRcsFeatureListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p3}, Landroid/telephony/ims/aidl/IRcsFeatureListener;->onCommandUpdate(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12
    .catch Landroid/telephony/ims/ImsException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    return-void
.end method
