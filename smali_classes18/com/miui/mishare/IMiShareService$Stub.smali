.class public abstract Lcom/miui/mishare/IMiShareService$Stub;
.super Landroid/os/Binder;
.source "IMiShareService.java"

# interfaces
.implements Lcom/miui/mishare/IMiShareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/IMiShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.mishare.IMiShareService"

.field static final TRANSACTION_cancel:I = 0xa

.field static final TRANSACTION_closeScreenThrow:I = 0x13

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_discover:I = 0x6

.field static final TRANSACTION_discoverWithIntent:I = 0x7

.field static final TRANSACTION_enable:I = 0x4

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_getThumbnail:I = 0xf

.field static final TRANSACTION_openScreenThrow:I = 0x12

.field static final TRANSACTION_receive:I = 0xd

.field static final TRANSACTION_refuse:I = 0xe

.field static final TRANSACTION_registerScreenThrowListener:I = 0x10

.field static final TRANSACTION_registerStateListener:I = 0x2

.field static final TRANSACTION_registerTaskStateListener:I = 0xb

.field static final TRANSACTION_send:I = 0x9

.field static final TRANSACTION_stopDiscover:I = 0x8

.field static final TRANSACTION_unregisterScreenThrowListener:I = 0x11

.field static final TRANSACTION_unregisterStateListener:I = 0x3

.field static final TRANSACTION_unregisterTaskStateListener:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.mishare.IMiShareService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/mishare/IMiShareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.miui.mishare.IMiShareService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/miui/mishare/IMiShareService;

    return-object v1

    :cond_14
    new-instance v1, Lcom/miui/mishare/IMiShareService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/mishare/IMiShareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/mishare/IMiShareService;
    .registers 1

    sget-object v0, Lcom/miui/mishare/IMiShareService$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_3e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "closeScreenThrow"

    return-object v0

    :pswitch_8
    const-string v0, "openScreenThrow"

    return-object v0

    :pswitch_b
    const-string v0, "unregisterScreenThrowListener"

    return-object v0

    :pswitch_e
    const-string v0, "registerScreenThrowListener"

    return-object v0

    :pswitch_11
    const-string v0, "getThumbnail"

    return-object v0

    :pswitch_14
    const-string v0, "refuse"

    return-object v0

    :pswitch_17
    const-string v0, "receive"

    return-object v0

    :pswitch_1a
    const-string v0, "unregisterTaskStateListener"

    return-object v0

    :pswitch_1d
    const-string v0, "registerTaskStateListener"

    return-object v0

    :pswitch_20
    const-string v0, "cancel"

    return-object v0

    :pswitch_23
    const-string v0, "send"

    return-object v0

    :pswitch_26
    const-string v0, "stopDiscover"

    return-object v0

    :pswitch_29
    const-string v0, "discoverWithIntent"

    return-object v0

    :pswitch_2c
    const-string v0, "discover"

    return-object v0

    :pswitch_2f
    const-string v0, "disable"

    return-object v0

    :pswitch_32
    const-string v0, "enable"

    return-object v0

    :pswitch_35
    const-string v0, "unregisterStateListener"

    return-object v0

    :pswitch_38
    const-string v0, "registerStateListener"

    return-object v0

    :pswitch_3b
    const-string v0, "getState"

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/miui/mishare/IMiShareService;)Z
    .registers 3

    sget-object v0, Lcom/miui/mishare/IMiShareService$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/miui/mishare/IMiShareService$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareService;

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

    invoke-static {p1}, Lcom/miui/mishare/IMiShareService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.miui.mishare.IMiShareService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_144

    packed-switch p1, :pswitch_data_148

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->closeScreenThrow()V

    return v2

    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->openScreenThrow()V

    return v2

    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->unregisterScreenThrowListener()V

    return v2

    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IScreenThrowListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IScreenThrowListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->registerScreenThrowListener(Lcom/miui/mishare/IScreenThrowListener;)V

    return v2

    :pswitch_34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/MiShareTask;

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    :goto_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/mishare/IThumbnailCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IThumbnailCallback;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/mishare/IMiShareService$Stub;->getThumbnail(Lcom/miui/mishare/MiShareTask;Lcom/miui/mishare/IThumbnailCallback;)V

    return v2

    :pswitch_53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_65

    sget-object v1, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/MiShareTask;

    goto :goto_66

    :cond_65
    const/4 v1, 0x0

    :goto_66
    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->refuse(Lcom/miui/mishare/MiShareTask;)V

    return v2

    :pswitch_6a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7c

    sget-object v1, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/MiShareTask;

    goto :goto_7d

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->receive(Lcom/miui/mishare/MiShareTask;)V

    return v2

    :pswitch_81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareTaskStateListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->unregisterTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    return v2

    :pswitch_90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareTaskStateListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->registerTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    return v2

    :pswitch_9f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b1

    sget-object v1, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/MiShareTask;

    goto :goto_b2

    :cond_b1
    const/4 v1, 0x0

    :goto_b2
    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->cancel(Lcom/miui/mishare/MiShareTask;)V

    return v2

    :pswitch_b6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c8

    sget-object v1, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/MiShareTask;

    goto :goto_c9

    :cond_c8
    const/4 v1, 0x0

    :goto_c9
    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->send(Lcom/miui/mishare/MiShareTask;)V

    return v2

    :pswitch_cd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareDiscoverCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->stopDiscover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V

    return v2

    :pswitch_dc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareDiscoverCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f6

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    goto :goto_f7

    :cond_f6
    const/4 v3, 0x0

    :goto_f7
    invoke-virtual {p0, v1, v3}, Lcom/miui/mishare/IMiShareService$Stub;->discoverWithIntent(Lcom/miui/mishare/IMiShareDiscoverCallback;Landroid/content/Intent;)V

    return v2

    :pswitch_fb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareDiscoverCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->discover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V

    return v2

    :pswitch_10a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->disable()V

    return v2

    :pswitch_111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->enable()V

    return v2

    :pswitch_118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareStateListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->unregisterStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    return v2

    :pswitch_127
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareStateListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->registerStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    return v2

    :pswitch_136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->getState()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_136
        :pswitch_127
        :pswitch_118
        :pswitch_111
        :pswitch_10a
        :pswitch_fb
        :pswitch_dc
        :pswitch_cd
        :pswitch_b6
        :pswitch_9f
        :pswitch_90
        :pswitch_81
        :pswitch_6a
        :pswitch_53
        :pswitch_34
        :pswitch_25
        :pswitch_1e
        :pswitch_17
        :pswitch_10
    .end packed-switch
.end method
