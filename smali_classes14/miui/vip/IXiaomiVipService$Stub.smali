.class public abstract Lmiui/vip/IXiaomiVipService$Stub;
.super Landroid/os/Binder;
.source "IXiaomiVipService.java"

# interfaces
.implements Lmiui/vip/IXiaomiVipService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/IXiaomiVipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/vip/IXiaomiVipService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.vip.IXiaomiVipService"

.field static final TRANSACTION_getAchievements:I = 0x4

.field static final TRANSACTION_getBanners:I = 0x5

.field static final TRANSACTION_getCurUserInfo:I = 0x1

.field static final TRANSACTION_getVipLevelByPhoneNumber:I = 0x2

.field static final TRANSACTION_isAvailable:I = 0x3

.field static final TRANSACTION_sendStatistic:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.vip.IXiaomiVipService"

    invoke-virtual {p0, p0, v0}, Lmiui/vip/IXiaomiVipService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/vip/IXiaomiVipService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.vip.IXiaomiVipService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/vip/IXiaomiVipService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/vip/IXiaomiVipService;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/vip/IXiaomiVipService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/vip/IXiaomiVipService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/vip/IXiaomiVipService;
    .registers 1

    sget-object v0, Lmiui/vip/IXiaomiVipService$Stub$Proxy;->sDefaultImpl:Lmiui/vip/IXiaomiVipService;

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/vip/IXiaomiVipService;)Z
    .registers 3

    sget-object v0, Lmiui/vip/IXiaomiVipService$Stub$Proxy;->sDefaultImpl:Lmiui/vip/IXiaomiVipService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/vip/IXiaomiVipService$Stub$Proxy;->sDefaultImpl:Lmiui/vip/IXiaomiVipService;

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
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.vip.IXiaomiVipService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_76

    packed-switch p1, :pswitch_data_7a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/vip/IXiaomiVipService$Stub;->sendStatistic(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/vip/IXiaomiVipService$Stub;->getBanners()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/vip/IXiaomiVipService$Stub;->getAchievements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_3a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/vip/IXiaomiVipService$Stub;->isAvailable()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/vip/IXiaomiVipService$Stub;->getVipLevelByPhoneNumber(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/vip/IXiaomiVipService$Stub;->getCurUserInfo()Lmiui/vip/VipUserInfo;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_71

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Lmiui/vip/VipUserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_75

    :cond_71
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_75
    return v2

    :cond_76
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_48
        :pswitch_3a
        :pswitch_2c
        :pswitch_1e
        :pswitch_10
    .end packed-switch
.end method
