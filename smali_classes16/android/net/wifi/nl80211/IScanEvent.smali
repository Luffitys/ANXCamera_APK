.class public interface abstract Landroid/net/wifi/nl80211/IScanEvent;
.super Ljava/lang/Object;
.source "IScanEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IScanEvent$Stub;,
        Landroid/net/wifi/nl80211/IScanEvent$Default;
    }
.end annotation


# virtual methods
.method public abstract OnScanFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnScanResultReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
