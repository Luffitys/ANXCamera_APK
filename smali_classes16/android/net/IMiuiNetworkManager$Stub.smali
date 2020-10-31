.class public abstract Landroid/net/IMiuiNetworkManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiNetworkManager.java"

# interfaces
.implements Landroid/net/IMiuiNetworkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IMiuiNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IMiuiNetworkManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IMiuiNetworkManager"

.field static final TRANSACTION_getMiuiSlmVoipUdpAddress:I = 0x5

.field static final TRANSACTION_getMiuiSlmVoipUdpPort:I = 0x6

.field static final TRANSACTION_setMiuiSlmBpfUid:I = 0x4

.field static final TRANSACTION_setMobileTrafficLimit:I = 0x3

.field static final TRANSACTION_setNetworkTrafficPolicy:I = 0x1

.field static final TRANSACTION_setRpsStatus:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.IMiuiNetworkManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IMiuiNetworkManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IMiuiNetworkManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.net.IMiuiNetworkManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IMiuiNetworkManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/net/IMiuiNetworkManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/net/IMiuiNetworkManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IMiuiNetworkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/IMiuiNetworkManager;
    .registers 1

    sget-object v0, Landroid/net/IMiuiNetworkManager$Stub$Proxy;->sDefaultImpl:Landroid/net/IMiuiNetworkManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "getMiuiSlmVoipUdpPort"

    return-object v0

    :pswitch_8
    const-string v0, "getMiuiSlmVoipUdpAddress"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "setMiuiSlmBpfUid"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "setMobileTrafficLimit"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "setRpsStatus"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "setNetworkTrafficPolicy"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Landroid/net/IMiuiNetworkManager;)Z
    .registers 3

    sget-object v0, Landroid/net/IMiuiNetworkManager$Stub$Proxy;->sDefaultImpl:Landroid/net/IMiuiNetworkManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/net/IMiuiNetworkManager$Stub$Proxy;->sDefaultImpl:Landroid/net/IMiuiNetworkManager;

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

    invoke-static {p1}, Landroid/net/IMiuiNetworkManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.net.IMiuiNetworkManager"

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

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/IMiuiNetworkManager$Stub;->getMiuiSlmVoipUdpPort(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/IMiuiNetworkManager$Stub;->getMiuiSlmVoipUdpAddress(I)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    :pswitch_35
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/IMiuiNetworkManager$Stub;->setMiuiSlmBpfUid(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_51

    move v1, v2

    :cond_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4}, Landroid/net/IMiuiNetworkManager$Stub;->setMobileTrafficLimit(ZJ)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_60
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6a

    move v1, v2

    :cond_6a
    invoke-virtual {p0, v1}, Landroid/net/IMiuiNetworkManager$Stub;->setRpsStatus(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/IMiuiNetworkManager$Stub;->setNetworkTrafficPolicy(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_75
        :pswitch_60
        :pswitch_47
        :pswitch_35
        :pswitch_23
        :pswitch_11
    .end packed-switch
.end method
