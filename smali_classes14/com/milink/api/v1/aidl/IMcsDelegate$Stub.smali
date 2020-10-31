.class public abstract Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;
.super Landroid/os/Binder;
.source "IMcsDelegate.java"

# interfaces
.implements Lcom/milink/api/v1/aidl/IMcsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/api/v1/aidl/IMcsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/api/v1/aidl/IMcsDelegate$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.milink.api.v1.aidl.IMcsDelegate"

.field static final TRANSACTION_onConnected:I = 0x1

.field static final TRANSACTION_onConnectedFailed:I = 0x2

.field static final TRANSACTION_onDisconnected:I = 0x3

.field static final TRANSACTION_onLoading:I = 0x4

.field static final TRANSACTION_onNextAudio:I = 0x9

.field static final TRANSACTION_onPaused:I = 0x7

.field static final TRANSACTION_onPlaying:I = 0x5

.field static final TRANSACTION_onPrevAudio:I = 0xa

.field static final TRANSACTION_onStopped:I = 0x6

.field static final TRANSACTION_onVolume:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.milink.api.v1.aidl.IMcsDelegate"

    invoke-virtual {p0, p0, v0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDelegate;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.milink.api.v1.aidl.IMcsDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/milink/api/v1/aidl/IMcsDelegate;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/milink/api/v1/aidl/IMcsDelegate;

    return-object v1

    :cond_14
    new-instance v1, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/milink/api/v1/aidl/IMcsDelegate;
    .registers 1

    sget-object v0, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcsDelegate;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/milink/api/v1/aidl/IMcsDelegate;)Z
    .registers 3

    sget-object v0, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcsDelegate;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcsDelegate;

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

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.milink.api.v1.aidl.IMcsDelegate"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_87

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_8c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    move v1, v2

    :cond_1b
    invoke-virtual {p0, v1}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->onPrevAudio(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    move v1, v2

    :cond_2c
    invoke-virtual {p0, v1}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->onNextAudio(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->onVolume(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->onPaused()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->onStopped()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->onPlaying()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->onLoading()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->onDisconnected()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_73
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->onConnectedFailed()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->onConnected()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_73
        :pswitch_69
        :pswitch_5f
        :pswitch_55
        :pswitch_4b
        :pswitch_41
        :pswitch_33
        :pswitch_22
        :pswitch_11
    .end packed-switch
.end method
