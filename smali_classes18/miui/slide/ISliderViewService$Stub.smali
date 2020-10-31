.class public abstract Lmiui/slide/ISliderViewService$Stub;
.super Landroid/os/Binder;
.source "ISliderViewService.java"

# interfaces
.implements Lmiui/slide/ISliderViewService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/ISliderViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/slide/ISliderViewService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.slide.ISliderViewService"

.field static final TRANSACTION_getDumpContent:I = 0x4

.field static final TRANSACTION_playSound:I = 0x3

.field static final TRANSACTION_removeSliderView:I = 0x2

.field static final TRANSACTION_showSliderView:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.slide.ISliderViewService"

    invoke-virtual {p0, p0, v0}, Lmiui/slide/ISliderViewService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/slide/ISliderViewService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.slide.ISliderViewService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/slide/ISliderViewService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/slide/ISliderViewService;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/slide/ISliderViewService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/slide/ISliderViewService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/slide/ISliderViewService;
    .registers 1

    sget-object v0, Lmiui/slide/ISliderViewService$Stub$Proxy;->sDefaultImpl:Lmiui/slide/ISliderViewService;

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
    const-string v0, "getDumpContent"

    return-object v0

    :cond_11
    const-string v0, "playSound"

    return-object v0

    :cond_14
    const-string v0, "removeSliderView"

    return-object v0

    :cond_17
    const-string v0, "showSliderView"

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/slide/ISliderViewService;)Z
    .registers 3

    sget-object v0, Lmiui/slide/ISliderViewService$Stub$Proxy;->sDefaultImpl:Lmiui/slide/ISliderViewService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/slide/ISliderViewService$Stub$Proxy;->sDefaultImpl:Lmiui/slide/ISliderViewService;

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

    invoke-static {p1}, Lmiui/slide/ISliderViewService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "miui.slide.ISliderViewService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_44

    const/4 v2, 0x2

    if-eq p1, v2, :cond_39

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2e

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

    invoke-virtual {p0, v2}, Lmiui/slide/ISliderViewService$Stub;->getDumpContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/slide/ISliderViewService$Stub;->playSound(I)V

    return v1

    :cond_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/slide/ISliderViewService$Stub;->removeSliderView(I)V

    return v1

    :cond_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/slide/ISliderViewService$Stub;->showSliderView(I)V

    return v1
.end method
