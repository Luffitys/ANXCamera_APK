.class public abstract Lmiui/slide/ISlideManagerService$Stub;
.super Landroid/os/Binder;
.source "ISlideManagerService.java"

# interfaces
.implements Lmiui/slide/ISlideManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/ISlideManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/slide/ISlideManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.slide.ISlideManagerService"

.field static final TRANSACTION_getAppSlideConfig:I = 0x1

.field static final TRANSACTION_getCameraStatus:I = 0x2

.field static final TRANSACTION_registerSlideChangeListener:I = 0x3

.field static final TRANSACTION_unregisterSlideChangeListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.slide.ISlideManagerService"

    invoke-virtual {p0, p0, v0}, Lmiui/slide/ISlideManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/slide/ISlideManagerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.slide.ISlideManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/slide/ISlideManagerService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/slide/ISlideManagerService;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/slide/ISlideManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/slide/ISlideManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/slide/ISlideManagerService;
    .registers 1

    sget-object v0, Lmiui/slide/ISlideManagerService$Stub$Proxy;->sDefaultImpl:Lmiui/slide/ISlideManagerService;

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
    const-string v0, "unregisterSlideChangeListener"

    return-object v0

    :cond_11
    const-string v0, "registerSlideChangeListener"

    return-object v0

    :cond_14
    const-string v0, "getCameraStatus"

    return-object v0

    :cond_17
    const-string v0, "getAppSlideConfig"

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/slide/ISlideManagerService;)Z
    .registers 3

    sget-object v0, Lmiui/slide/ISlideManagerService$Stub$Proxy;->sDefaultImpl:Lmiui/slide/ISlideManagerService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/slide/ISlideManagerService$Stub$Proxy;->sDefaultImpl:Lmiui/slide/ISlideManagerService;

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

    invoke-static {p1}, Lmiui/slide/ISlideManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.slide.ISlideManagerService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_52

    const/4 v2, 0x2

    if-eq p1, v2, :cond_44

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/slide/ISlideChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/slide/ISlideChangeListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/slide/ISlideManagerService$Stub;->unregisterSlideChangeListener(Lmiui/slide/ISlideChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/slide/ISlideChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/slide/ISlideChangeListener;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmiui/slide/ISlideManagerService$Stub;->registerSlideChangeListener(Ljava/lang/String;Lmiui/slide/ISlideChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/slide/ISlideManagerService$Stub;->getCameraStatus()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmiui/slide/ISlideManagerService$Stub;->getAppSlideConfig(Ljava/lang/String;I)Lmiui/slide/AppSlideConfig;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_6d

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v1}, Lmiui/slide/AppSlideConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_71

    :cond_6d
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_71
    return v1
.end method
