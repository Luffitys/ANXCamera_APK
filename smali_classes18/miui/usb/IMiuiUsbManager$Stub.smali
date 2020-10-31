.class public abstract Lmiui/usb/IMiuiUsbManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiUsbManager.java"

# interfaces
.implements Lmiui/usb/IMiuiUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/usb/IMiuiUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/usb/IMiuiUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.usb.IMiuiUsbManager"

.field static final TRANSACTION_acceptMdbRestore:I = 0x1

.field static final TRANSACTION_allowUsbDebugging:I = 0x3

.field static final TRANSACTION_cancelMdbRestore:I = 0x2

.field static final TRANSACTION_denyUsbDebugging:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.usb.IMiuiUsbManager"

    invoke-virtual {p0, p0, v0}, Lmiui/usb/IMiuiUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/usb/IMiuiUsbManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.usb.IMiuiUsbManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/usb/IMiuiUsbManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/usb/IMiuiUsbManager;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/usb/IMiuiUsbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/usb/IMiuiUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/usb/IMiuiUsbManager;
    .registers 1

    sget-object v0, Lmiui/usb/IMiuiUsbManager$Stub$Proxy;->sDefaultImpl:Lmiui/usb/IMiuiUsbManager;

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
    const-string v0, "denyUsbDebugging"

    return-object v0

    :cond_11
    const-string v0, "allowUsbDebugging"

    return-object v0

    :cond_14
    const-string v0, "cancelMdbRestore"

    return-object v0

    :cond_17
    const-string v0, "acceptMdbRestore"

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/usb/IMiuiUsbManager;)Z
    .registers 3

    sget-object v0, Lmiui/usb/IMiuiUsbManager$Stub$Proxy;->sDefaultImpl:Lmiui/usb/IMiuiUsbManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/usb/IMiuiUsbManager$Stub$Proxy;->sDefaultImpl:Lmiui/usb/IMiuiUsbManager;

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

    invoke-static {p1}, Lmiui/usb/IMiuiUsbManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "miui.usb.IMiuiUsbManager"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_47

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3d

    const/4 v2, 0x3

    if-eq p1, v2, :cond_26

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

    invoke-virtual {p0}, Lmiui/usb/IMiuiUsbManager$Stub;->denyUsbDebugging()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    move v2, v1

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmiui/usb/IMiuiUsbManager$Stub;->allowUsbDebugging(ZLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/usb/IMiuiUsbManager$Stub;->cancelMdbRestore()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/usb/IMiuiUsbManager$Stub;->acceptMdbRestore()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
