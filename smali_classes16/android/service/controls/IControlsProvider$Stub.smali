.class public abstract Landroid/service/controls/IControlsProvider$Stub;
.super Landroid/os/Binder;
.source "IControlsProvider.java"

# interfaces
.implements Landroid/service/controls/IControlsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/IControlsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/IControlsProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.controls.IControlsProvider"

.field static final TRANSACTION_action:I = 0x4

.field static final TRANSACTION_load:I = 0x1

.field static final TRANSACTION_loadSuggested:I = 0x2

.field static final TRANSACTION_subscribe:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.controls.IControlsProvider"

    invoke-virtual {p0, p0, v0}, Landroid/service/controls/IControlsProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsProvider;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.controls.IControlsProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/controls/IControlsProvider;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/controls/IControlsProvider;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/controls/IControlsProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/controls/IControlsProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/service/controls/IControlsProvider;
    .registers 1

    sget-object v0, Landroid/service/controls/IControlsProvider$Stub$Proxy;->sDefaultImpl:Landroid/service/controls/IControlsProvider;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const-string v0, "action"

    return-object v0

    :cond_11
    const-string/jumbo v0, "subscribe"

    return-object v0

    :cond_15
    const-string v0, "loadSuggested"

    return-object v0

    :cond_18
    const-string v0, "load"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/service/controls/IControlsProvider;)Z
    .registers 3

    sget-object v0, Landroid/service/controls/IControlsProvider$Stub$Proxy;->sDefaultImpl:Landroid/service/controls/IControlsProvider;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/service/controls/IControlsProvider$Stub$Proxy;->sDefaultImpl:Landroid/service/controls/IControlsProvider;

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

    invoke-static {p1}, Landroid/service/controls/IControlsProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.service.controls.IControlsProvider"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_61

    const/4 v2, 0x2

    if-eq p1, v2, :cond_52

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3f

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    sget-object v3, Landroid/service/controls/actions/ControlActionWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/controls/actions/ControlActionWrapper;

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/controls/IControlsActionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsActionCallback;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/service/controls/IControlsProvider$Stub;->action(Ljava/lang/String;Landroid/service/controls/actions/ControlActionWrapper;Landroid/service/controls/IControlsActionCallback;)V

    return v1

    :cond_3f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/controls/IControlsSubscriber$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscriber;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/service/controls/IControlsProvider$Stub;->subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V

    return v1

    :cond_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/controls/IControlsSubscriber$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscriber;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/service/controls/IControlsProvider$Stub;->loadSuggested(Landroid/service/controls/IControlsSubscriber;)V

    return v1

    :cond_61
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/controls/IControlsSubscriber$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscriber;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/service/controls/IControlsProvider$Stub;->load(Landroid/service/controls/IControlsSubscriber;)V

    return v1
.end method
