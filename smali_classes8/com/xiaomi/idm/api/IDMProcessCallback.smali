.class public abstract Lcom/xiaomi/idm/api/IDMProcessCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdvertingResult(II)V
    .locals 0

    return-void
.end method

.method public final onConnectionInitiated(IILjava/lang/String;[B[B)V
    .locals 0

    return-void
.end method

.method public final onConnectionResult(IILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final onDisconnection(II)V
    .locals 0

    return-void
.end method

.method public final onDiscoveryResult(II)V
    .locals 0

    return-void
.end method

.method public final onEndpointFound(IILjava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public final onEndpointLost(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPayloadReceived(II[B)V
    .locals 0

    return-void
.end method

.method public final onPayloadSentResult(III)V
    .locals 0

    return-void
.end method

.method public abstract onProcessConnected()V
.end method

.method public abstract onProcessConnectionError()V
.end method

.method public abstract onProcessDisconnected()V
.end method

.method public final onServiceBind()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMProcessCallback;->onProcessConnected()V

    return-void
.end method

.method public onServiceConnectStatus(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onServiceError(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMProcessCallback;->onProcessConnectionError()V

    return-void
.end method

.method public final onServiceUnbind()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMProcessCallback;->onProcessDisconnected()V

    return-void
.end method
