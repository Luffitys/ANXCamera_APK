.class public interface abstract Lmiui/miprint/sdk/IMiP2pPrinterManager;
.super Ljava/lang/Object;
.source "IMiP2pPrinterManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;,
        Lmiui/miprint/sdk/IMiP2pPrinterManager$Default;
    }
.end annotation


# virtual methods
.method public abstract connectP2pPrinter(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getP2pPrinters()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerP2pPrinterListener(Lmiui/miprint/sdk/IMiP2pPrinterListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterP2pPrinterListener(Lmiui/miprint/sdk/IMiP2pPrinterListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
