.class public abstract Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;
.super Landroid/os/Binder;
.source "IMiP2pPrinterManager.java"

# interfaces
.implements Lmiui/miprint/sdk/IMiP2pPrinterManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/miprint/sdk/IMiP2pPrinterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.miprint.sdk.IMiP2pPrinterManager"

.field static final TRANSACTION_connectP2pPrinter:I = 0x4

.field static final TRANSACTION_getP2pPrinters:I = 0x3

.field static final TRANSACTION_registerP2pPrinterListener:I = 0x1

.field static final TRANSACTION_unregisterP2pPrinterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.miprint.sdk.IMiP2pPrinterManager"

    invoke-virtual {p0, p0, v0}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/miprint/sdk/IMiP2pPrinterManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.miprint.sdk.IMiP2pPrinterManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/miprint/sdk/IMiP2pPrinterManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/miprint/sdk/IMiP2pPrinterManager;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/miprint/sdk/IMiP2pPrinterManager;
    .registers 1

    sget-object v0, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub$Proxy;->sDefaultImpl:Lmiui/miprint/sdk/IMiP2pPrinterManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const-string v0, "connectP2pPrinter"

    return-object v0

    :cond_11
    const-string v0, "getP2pPrinters"

    return-object v0

    :cond_14
    const-string v0, "unregisterP2pPrinterListener"

    return-object v0

    :cond_17
    const-string v0, "registerP2pPrinterListener"

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/miprint/sdk/IMiP2pPrinterManager;)Z
    .registers 3

    sget-object v0, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub$Proxy;->sDefaultImpl:Lmiui/miprint/sdk/IMiP2pPrinterManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub$Proxy;->sDefaultImpl:Lmiui/miprint/sdk/IMiP2pPrinterManager;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.miprint.sdk.IMiP2pPrinterManager"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_52

    const/4 v2, 0x2

    if-eq p1, v2, :cond_40

    const/4 v2, 0x3

    if-eq p1, v2, :cond_36

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1c

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_18

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    invoke-virtual {p0, v2}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;->connectP2pPrinter(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;->getP2pPrinters()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/miprint/sdk/IMiP2pPrinterListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;->unregisterP2pPrinterListener(Lmiui/miprint/sdk/IMiP2pPrinterListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/miprint/sdk/IMiP2pPrinterListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;->registerP2pPrinterListener(Lmiui/miprint/sdk/IMiP2pPrinterListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
