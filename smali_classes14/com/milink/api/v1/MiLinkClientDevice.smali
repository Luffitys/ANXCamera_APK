.class public Lcom/milink/api/v1/MiLinkClientDevice;
.super Ljava/lang/Object;
.source "MiLinkClientDevice.java"


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mLastConnectTime:Ljava/lang/String;

.field private mP2pMac:Ljava/lang/String;

.field private mWifiMac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getLastConnectTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mLastConnectTime:Ljava/lang/String;

    return-object v0
.end method

.method public getP2pMac()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mP2pMac:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiMac()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mWifiMac:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public setLastConnectTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mLastConnectTime:Ljava/lang/String;

    return-void
.end method

.method public setP2pMac(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mP2pMac:Ljava/lang/String;

    return-void
.end method

.method public setWifiMac(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mWifiMac:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiLinkClientDevice{mDeviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mP2pMac=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mP2pMac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mWifiMac=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mLastConnectTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/milink/api/v1/MiLinkClientDevice;->mLastConnectTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
