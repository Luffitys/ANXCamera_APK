.class public Lmiui/miprint/sdk/IMiP2pPrinterListener$Default;
.super Ljava/lang/Object;
.source "IMiP2pPrinterListener.java"

# interfaces
.implements Lmiui/miprint/sdk/IMiP2pPrinterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/miprint/sdk/IMiP2pPrinterListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onP2pPrinterChange(Lmiui/miprint/sdk/P2pPrinterInfo;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onPrinterConnectionComplete(Lmiui/miprint/sdk/P2pPrinterInfo;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onPrinterConnectionDelay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
