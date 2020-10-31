.class public interface abstract Lmiui/miprint/sdk/IMiP2pPrinterListener;
.super Ljava/lang/Object;
.source "IMiP2pPrinterListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;,
        Lmiui/miprint/sdk/IMiP2pPrinterListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onP2pPrinterChange(Lmiui/miprint/sdk/P2pPrinterInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPrinterConnectionComplete(Lmiui/miprint/sdk/P2pPrinterInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPrinterConnectionDelay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
