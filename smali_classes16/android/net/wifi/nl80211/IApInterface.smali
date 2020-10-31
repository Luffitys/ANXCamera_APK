.class public interface abstract Landroid/net/wifi/nl80211/IApInterface;
.super Ljava/lang/Object;
.source "IApInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IApInterface$Stub;,
        Landroid/net/wifi/nl80211/IApInterface$Default;
    }
.end annotation


# static fields
.field public static final ENCRYPTION_TYPE_NONE:I = 0x0

.field public static final ENCRYPTION_TYPE_WPA:I = 0x1

.field public static final ENCRYPTION_TYPE_WPA2:I = 0x2


# virtual methods
.method public abstract getInterfaceName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Landroid/net/wifi/nl80211/IApInterfaceEventCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
