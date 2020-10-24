.class public interface abstract Lcom/xiaomi/mi_connect_service/IMiConnectCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onAdvertisingResult(II)V
.end method

.method public abstract onConnectionInitiated(IILjava/lang/String;[B[B)V
.end method

.method public abstract onConnectionResult(IILjava/lang/String;I)V
.end method

.method public abstract onDisconnection(II)V
.end method

.method public abstract onDiscoveryResult(II)V
.end method

.method public abstract onEndpointFound(IILjava/lang/String;[B)V
.end method

.method public abstract onEndpointLost(IILjava/lang/String;)V
.end method

.method public abstract onPayloadReceived(II[B)V
.end method

.method public abstract onPayloadSentResult(III)V
.end method
