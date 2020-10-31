.class public abstract Landroid/window/IDisplayAreaOrganizer$Stub;
.super Landroid/os/Binder;
.source "IDisplayAreaOrganizer.java"

# interfaces
.implements Landroid/window/IDisplayAreaOrganizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IDisplayAreaOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IDisplayAreaOrganizer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.window.IDisplayAreaOrganizer"

.field static final TRANSACTION_onDisplayAreaAppeared:I = 0x1

.field static final TRANSACTION_onDisplayAreaInfoChanged:I = 0x3

.field static final TRANSACTION_onDisplayAreaVanished:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.window.IDisplayAreaOrganizer"

    invoke-virtual {p0, p0, v0}, Landroid/window/IDisplayAreaOrganizer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizer;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.window.IDisplayAreaOrganizer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/IDisplayAreaOrganizer;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/window/IDisplayAreaOrganizer;

    return-object v1

    :cond_14
    new-instance v1, Landroid/window/IDisplayAreaOrganizer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IDisplayAreaOrganizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/window/IDisplayAreaOrganizer;
    .registers 1

    sget-object v0, Landroid/window/IDisplayAreaOrganizer$Stub$Proxy;->sDefaultImpl:Landroid/window/IDisplayAreaOrganizer;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const-string/jumbo v0, "onDisplayAreaInfoChanged"

    return-object v0

    :cond_f
    const-string/jumbo v0, "onDisplayAreaVanished"

    return-object v0

    :cond_13
    const-string/jumbo v0, "onDisplayAreaAppeared"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/window/IDisplayAreaOrganizer;)Z
    .registers 3

    sget-object v0, Landroid/window/IDisplayAreaOrganizer$Stub$Proxy;->sDefaultImpl:Landroid/window/IDisplayAreaOrganizer;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/window/IDisplayAreaOrganizer$Stub$Proxy;->sDefaultImpl:Landroid/window/IDisplayAreaOrganizer;

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

    invoke-static {p1}, Landroid/window/IDisplayAreaOrganizer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.window.IDisplayAreaOrganizer"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_47

    const/4 v2, 0x2

    if-eq p1, v2, :cond_30

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

    sget-object v2, Landroid/window/DisplayAreaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/DisplayAreaInfo;

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    invoke-virtual {p0, v2}, Landroid/window/IDisplayAreaOrganizer$Stub;->onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V

    return v1

    :cond_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    sget-object v2, Landroid/window/DisplayAreaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/DisplayAreaInfo;

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0, v2}, Landroid/window/IDisplayAreaOrganizer$Stub;->onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V

    return v1

    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59

    sget-object v2, Landroid/window/DisplayAreaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/DisplayAreaInfo;

    goto :goto_5a

    :cond_59
    const/4 v2, 0x0

    :goto_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_69

    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    goto :goto_6a

    :cond_69
    const/4 v3, 0x0

    :goto_6a
    invoke-virtual {p0, v2, v3}, Landroid/window/IDisplayAreaOrganizer$Stub;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    return v1
.end method
