.class public abstract Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;
.super Landroid/os/Binder;
.source "IMiP2pPrinterListener.java"

# interfaces
.implements Lmiui/miprint/sdk/IMiP2pPrinterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/miprint/sdk/IMiP2pPrinterListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.miprint.sdk.IMiP2pPrinterListener"

.field static final TRANSACTION_onP2pPrinterChange:I = 0x1

.field static final TRANSACTION_onPrinterConnectionComplete:I = 0x2

.field static final TRANSACTION_onPrinterConnectionDelay:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.miprint.sdk.IMiP2pPrinterListener"

    invoke-virtual {p0, p0, v0}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/miprint/sdk/IMiP2pPrinterListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.miprint.sdk.IMiP2pPrinterListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/miprint/sdk/IMiP2pPrinterListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/miprint/sdk/IMiP2pPrinterListener;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/miprint/sdk/IMiP2pPrinterListener;
    .registers 1

    sget-object v0, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub$Proxy;->sDefaultImpl:Lmiui/miprint/sdk/IMiP2pPrinterListener;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const-string v0, "onPrinterConnectionDelay"

    return-object v0

    :cond_e
    const-string v0, "onPrinterConnectionComplete"

    return-object v0

    :cond_11
    const-string v0, "onP2pPrinterChange"

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/miprint/sdk/IMiP2pPrinterListener;)Z
    .registers 3

    sget-object v0, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub$Proxy;->sDefaultImpl:Lmiui/miprint/sdk/IMiP2pPrinterListener;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub$Proxy;->sDefaultImpl:Lmiui/miprint/sdk/IMiP2pPrinterListener;

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

    invoke-static {p1}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.miprint.sdk.IMiP2pPrinterListener"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_55

    const/4 v2, 0x2

    if-eq p1, v2, :cond_37

    const/4 v2, 0x3

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->onPrinterConnectionDelay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_49

    sget-object v2, Lmiui/miprint/sdk/P2pPrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/miprint/sdk/P2pPrinterInfo;

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->onPrinterConnectionComplete(Lmiui/miprint/sdk/P2pPrinterInfo;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_67

    sget-object v2, Lmiui/miprint/sdk/P2pPrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/miprint/sdk/P2pPrinterInfo;

    goto :goto_68

    :cond_67
    const/4 v2, 0x0

    :goto_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->onP2pPrinterChange(Lmiui/miprint/sdk/P2pPrinterInfo;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
