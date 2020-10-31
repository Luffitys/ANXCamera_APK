.class public abstract Landroid/view/IScrollCaptureController$Stub;
.super Landroid/os/Binder;
.source "IScrollCaptureController.java"

# interfaces
.implements Landroid/view/IScrollCaptureController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IScrollCaptureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IScrollCaptureController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IScrollCaptureController"

.field static final TRANSACTION_onCaptureBufferSent:I = 0x4

.field static final TRANSACTION_onCaptureStarted:I = 0x3

.field static final TRANSACTION_onClientConnected:I = 0x1

.field static final TRANSACTION_onClientUnavailable:I = 0x2

.field static final TRANSACTION_onConnectionClosed:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IScrollCaptureController"

    invoke-virtual {p0, p0, v0}, Landroid/view/IScrollCaptureController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureController;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.IScrollCaptureController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IScrollCaptureController;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/IScrollCaptureController;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/IScrollCaptureController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IScrollCaptureController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/view/IScrollCaptureController;
    .registers 1

    sget-object v0, Landroid/view/IScrollCaptureController$Stub$Proxy;->sDefaultImpl:Landroid/view/IScrollCaptureController;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 v0, 0x0

    return-object v0

    :cond_11
    const-string/jumbo v0, "onConnectionClosed"

    return-object v0

    :cond_15
    const-string/jumbo v0, "onCaptureBufferSent"

    return-object v0

    :cond_19
    const-string/jumbo v0, "onCaptureStarted"

    return-object v0

    :cond_1d
    const-string/jumbo v0, "onClientUnavailable"

    return-object v0

    :cond_21
    const-string/jumbo v0, "onClientConnected"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/view/IScrollCaptureController;)Z
    .registers 3

    sget-object v0, Landroid/view/IScrollCaptureController$Stub$Proxy;->sDefaultImpl:Landroid/view/IScrollCaptureController;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/view/IScrollCaptureController$Stub$Proxy;->sDefaultImpl:Landroid/view/IScrollCaptureController;

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

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/view/IScrollCaptureController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.view.IScrollCaptureController"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_48

    const/4 v2, 0x3

    if-eq p1, v2, :cond_41

    const/4 v2, 0x4

    if-eq p1, v2, :cond_26

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1f

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IScrollCaptureController$Stub;->onConnectionClosed()V

    return v1

    :cond_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_3d

    :cond_3c
    const/4 v4, 0x0

    :goto_3d
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IScrollCaptureController$Stub;->onCaptureBufferSent(JLandroid/graphics/Rect;)V

    return v1

    :cond_41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IScrollCaptureController$Stub;->onCaptureStarted()V

    return v1

    :cond_48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IScrollCaptureController$Stub;->onClientUnavailable()V

    return v1

    :cond_4f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IScrollCaptureClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureClient;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_69

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    goto :goto_6a

    :cond_69
    const/4 v3, 0x0

    :goto_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_79

    sget-object v4, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    goto :goto_7a

    :cond_79
    const/4 v4, 0x0

    :goto_7a
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IScrollCaptureController$Stub;->onClientConnected(Landroid/view/IScrollCaptureClient;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return v1
.end method
