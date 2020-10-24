.class public interface abstract Lcom/xiaomi/mi_connect_service/IMiConnect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final ERROR:I = -0x1

.field public static final OK:I


# virtual methods
.method public abstract acceptConnection(IIIZ)V
.end method

.method public abstract connectService(I[B)I
.end method

.method public abstract createConnection(I[BLcom/xiaomi/mi_connect_service/IConnectionCallback;)I
.end method

.method public abstract destroy(II)V
.end method

.method public abstract destroyConnection(I[B)I
.end method

.method public abstract deviceInfoIDM()[B
.end method

.method public abstract disconnectFromEndPoint(III)V
.end method

.method public abstract event(I[B)I
.end method

.method public abstract getIdHash()[B
.end method

.method public abstract getServiceApiVersion()I
.end method

.method public abstract publish(ILjava/lang/String;Ljava/lang/String;[B)I
.end method

.method public abstract registerIDMClient(I[BLcom/xiaomi/mi_connect_service/IIDMClientCallback;)Ljava/lang/String;
.end method

.method public abstract registerProc(I[BLcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;)I
.end method

.method public abstract rejectConnection(III)V
.end method

.method public abstract request(I[B)[B
.end method

.method public abstract requestConnection(II[B)V
.end method

.method public abstract response(I[B)I
.end method

.method public abstract sendPayload(III[B)V
.end method

.method public abstract setCallback(IILcom/xiaomi/mi_connect_service/IMiConnectCallback;)V
.end method

.method public abstract setEventCallback(I[B)I
.end method

.method public abstract setIPCDataCallback(ILjava/lang/String;Lcom/xiaomi/mi_connect_service/IIPCDataCallback;)I
.end method

.method public abstract startAdvertising(I[BII[B)V
.end method

.method public abstract startAdvertisingIDM(I[B)I
.end method

.method public abstract startDiscovery(I[BIII)V
.end method

.method public abstract startDiscoveryIDM(I[B)I
.end method

.method public abstract startDiscoveryV2(I[BIII[I)V
.end method

.method public abstract stopAdvertising(I)V
.end method

.method public abstract stopDiscovery(I)V
.end method

.method public abstract subscribe(ILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/mi_connect_service/IDpsMessageListener;)I
.end method

.method public abstract unregisterIDMClient(I)I
.end method

.method public abstract unregisterProc(I)I
.end method
