.class public interface abstract Landroid/net/lowpan/ILowpanInterface;
.super Ljava/lang/Object;
.source "ILowpanInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterface$Stub;,
        Landroid/net/lowpan/ILowpanInterface$Default;
    }
.end annotation


# static fields
.field public static final ERROR_ALREADY:I = 0x9

.field public static final ERROR_BUSY:I = 0x8

.field public static final ERROR_CANCELED:I = 0xa

.field public static final ERROR_DISABLED:I = 0x3

.field public static final ERROR_FEATURE_NOT_SUPPORTED:I = 0xb

.field public static final ERROR_FORM_FAILED_AT_SCAN:I = 0xf

.field public static final ERROR_INVALID_ARGUMENT:I = 0x2

.field public static final ERROR_IO_FAILURE:I = 0x6

.field public static final ERROR_JOIN_FAILED_AT_AUTH:I = 0xe

.field public static final ERROR_JOIN_FAILED_AT_SCAN:I = 0xd

.field public static final ERROR_JOIN_FAILED_UNKNOWN:I = 0xc

.field public static final ERROR_NCP_PROBLEM:I = 0x7

.field public static final ERROR_TIMEOUT:I = 0x5

.field public static final ERROR_UNSPECIFIED:I = 0x1

.field public static final ERROR_WRONG_STATE:I = 0x4

.field public static final KEY_CHANNEL_MASK:Ljava/lang/String; = "android.net.lowpan.property.CHANNEL_MASK"

.field public static final KEY_MAX_TX_POWER:Ljava/lang/String; = "android.net.lowpan.property.MAX_TX_POWER"

.field public static final NETWORK_TYPE_THREAD_V1:Ljava/lang/String; = "org.threadgroup.thread.v1"

.field public static final NETWORK_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final PERM_ACCESS_LOWPAN_STATE:Ljava/lang/String; = "android.permission.ACCESS_LOWPAN_STATE"

.field public static final PERM_CHANGE_LOWPAN_STATE:Ljava/lang/String; = "android.permission.CHANGE_LOWPAN_STATE"

.field public static final PERM_READ_LOWPAN_CREDENTIAL:Ljava/lang/String; = "android.permission.READ_LOWPAN_CREDENTIAL"

.field public static final ROLE_COORDINATOR:Ljava/lang/String; = "coordinator"

.field public static final ROLE_DETACHED:Ljava/lang/String; = "detached"

.field public static final ROLE_END_DEVICE:Ljava/lang/String; = "end-device"

.field public static final ROLE_LEADER:Ljava/lang/String; = "leader"

.field public static final ROLE_ROUTER:Ljava/lang/String; = "router"

.field public static final ROLE_SLEEPY_END_DEVICE:Ljava/lang/String; = "sleepy-end-device"

.field public static final ROLE_SLEEPY_ROUTER:Ljava/lang/String; = "sleepy-router"

.field public static final STATE_ATTACHED:Ljava/lang/String; = "attached"

.field public static final STATE_ATTACHING:Ljava/lang/String; = "attaching"

.field public static final STATE_COMMISSIONING:Ljava/lang/String; = "commissioning"

.field public static final STATE_FAULT:Ljava/lang/String; = "fault"

.field public static final STATE_OFFLINE:Ljava/lang/String; = "offline"


# virtual methods
.method public abstract addExternalRoute(Landroid/net/IpPrefix;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract attach(Landroid/net/lowpan/LowpanProvision;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract beginLowPower()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract closeCommissioningSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract form(Landroid/net/lowpan/LowpanProvision;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDriverVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getExtendedAddress()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLinkAddresses()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLinkNetworks()[Landroid/net/IpPrefix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLowpanCredential()Landroid/net/lowpan/LowpanCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMacAddress()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNcpVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPartitionId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRole()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getState()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSupportedNetworkTypes()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isCommissioned()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isConnected()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isUp()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract join(Landroid/net/lowpan/LowpanProvision;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract leave()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHostWake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pollForData()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeExternalRoute(Landroid/net/IpPrefix;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendToCommissioner([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startEnergyScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanEnergyScanCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startNetScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanNetScanCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopEnergyScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopNetScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
