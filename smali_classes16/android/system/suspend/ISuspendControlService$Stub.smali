.class public abstract Landroid/system/suspend/ISuspendControlService$Stub;
.super Landroid/os/Binder;
.source "ISuspendControlService.java"

# interfaces
.implements Landroid/system/suspend/ISuspendControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/suspend/ISuspendControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/suspend/ISuspendControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_enableAutosuspend:I = 0x1

.field static final TRANSACTION_forceSuspend:I = 0x3

.field static final TRANSACTION_getWakeLockStats:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android$system$suspend$ISuspendControlService"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/system/suspend/ISuspendControlService$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Landroid/system/suspend/ISuspendControlService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/suspend/ISuspendControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/system/suspend/ISuspendControlService$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/system/suspend/ISuspendControlService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/system/suspend/ISuspendControlService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/system/suspend/ISuspendControlService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/system/suspend/ISuspendControlService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/system/suspend/ISuspendControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/suspend/ISuspendControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/system/suspend/ISuspendControlService;
    .registers 1

    sget-object v0, Landroid/system/suspend/ISuspendControlService$Stub$Proxy;->sDefaultImpl:Landroid/system/suspend/ISuspendControlService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/system/suspend/ISuspendControlService;)Z
    .registers 3

    sget-object v0, Landroid/system/suspend/ISuspendControlService$Stub$Proxy;->sDefaultImpl:Landroid/system/suspend/ISuspendControlService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/system/suspend/ISuspendControlService$Stub$Proxy;->sDefaultImpl:Landroid/system/suspend/ISuspendControlService;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/system/suspend/ISuspendControlService$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_38

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2a

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

    invoke-virtual {p0}, Landroid/system/suspend/ISuspendControlService$Stub;->getWakeLockStats()[Landroid/system/suspend/WakeLockInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v1

    :cond_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/system/suspend/ISuspendControlService$Stub;->forceSuspend()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/system/suspend/ISuspendCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/suspend/ISuspendCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/system/suspend/ISuspendControlService$Stub;->registerCallback(Landroid/system/suspend/ISuspendCallback;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_4e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/system/suspend/ISuspendControlService$Stub;->enableAutosuspend()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
