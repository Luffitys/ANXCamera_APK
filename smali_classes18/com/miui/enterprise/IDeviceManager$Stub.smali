.class public abstract Lcom/miui/enterprise/IDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager.java"

# interfaces
.implements Lcom/miui/enterprise/IDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.IDeviceManager"

.field static final TRANSACTION_captureScreen:I = 0x16

.field static final TRANSACTION_deviceReboot:I = 0x3

.field static final TRANSACTION_deviceShutDown:I = 0x2

.field static final TRANSACTION_enableUsbDebug:I = 0x1c

.field static final TRANSACTION_formatSdCard:I = 0x4

.field static final TRANSACTION_getDefaultHome:I = 0x1f

.field static final TRANSACTION_getIpBlackList:I = 0x1b

.field static final TRANSACTION_getIpWhiteList:I = 0x1a

.field static final TRANSACTION_getUrlBlackList:I = 0x8

.field static final TRANSACTION_getUrlWhiteList:I = 0x7

.field static final TRANSACTION_getWifiApBssidBlackList:I = 0x13

.field static final TRANSACTION_getWifiApBssidWhiteList:I = 0x11

.field static final TRANSACTION_getWifiApSsidBlackList:I = 0x12

.field static final TRANSACTION_getWifiApSsidWhiteList:I = 0x10

.field static final TRANSACTION_getWifiConnRestriction:I = 0xb

.field static final TRANSACTION_isDeviceRoot:I = 0x1

.field static final TRANSACTION_recoveryFactory:I = 0x9

.field static final TRANSACTION_setBootAnimation:I = 0x1d

.field static final TRANSACTION_setBrowserRestriction:I = 0x15

.field static final TRANSACTION_setDefaultHome:I = 0x1e

.field static final TRANSACTION_setIpBlackList:I = 0x19

.field static final TRANSACTION_setIpRestriction:I = 0x17

.field static final TRANSACTION_setIpWhiteList:I = 0x18

.field static final TRANSACTION_setLockWallPaper:I = 0x21

.field static final TRANSACTION_setRingerMode:I = 0x14

.field static final TRANSACTION_setUrlBlackList:I = 0x6

.field static final TRANSACTION_setUrlWhiteList:I = 0x5

.field static final TRANSACTION_setWallPaper:I = 0x20

.field static final TRANSACTION_setWifiApBssidBlackList:I = 0xf

.field static final TRANSACTION_setWifiApBssidWhiteList:I = 0xd

.field static final TRANSACTION_setWifiApSsidBlackList:I = 0xe

.field static final TRANSACTION_setWifiApSsidWhiteList:I = 0xc

.field static final TRANSACTION_setWifiConnRestriction:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IDeviceManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.miui.enterprise.IDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/enterprise/IDeviceManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/miui/enterprise/IDeviceManager;

    return-object v1

    :cond_14
    new-instance v1, Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/enterprise/IDeviceManager;
    .registers 1

    sget-object v0, Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;->sDefaultImpl:Lcom/miui/enterprise/IDeviceManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_68

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "setLockWallPaper"

    return-object v0

    :pswitch_8
    const-string v0, "setWallPaper"

    return-object v0

    :pswitch_b
    const-string v0, "getDefaultHome"

    return-object v0

    :pswitch_e
    const-string v0, "setDefaultHome"

    return-object v0

    :pswitch_11
    const-string v0, "setBootAnimation"

    return-object v0

    :pswitch_14
    const-string v0, "enableUsbDebug"

    return-object v0

    :pswitch_17
    const-string v0, "getIpBlackList"

    return-object v0

    :pswitch_1a
    const-string v0, "getIpWhiteList"

    return-object v0

    :pswitch_1d
    const-string v0, "setIpBlackList"

    return-object v0

    :pswitch_20
    const-string v0, "setIpWhiteList"

    return-object v0

    :pswitch_23
    const-string v0, "setIpRestriction"

    return-object v0

    :pswitch_26
    const-string v0, "captureScreen"

    return-object v0

    :pswitch_29
    const-string v0, "setBrowserRestriction"

    return-object v0

    :pswitch_2c
    const-string v0, "setRingerMode"

    return-object v0

    :pswitch_2f
    const-string v0, "getWifiApBssidBlackList"

    return-object v0

    :pswitch_32
    const-string v0, "getWifiApSsidBlackList"

    return-object v0

    :pswitch_35
    const-string v0, "getWifiApBssidWhiteList"

    return-object v0

    :pswitch_38
    const-string v0, "getWifiApSsidWhiteList"

    return-object v0

    :pswitch_3b
    const-string v0, "setWifiApBssidBlackList"

    return-object v0

    :pswitch_3e
    const-string v0, "setWifiApSsidBlackList"

    return-object v0

    :pswitch_41
    const-string v0, "setWifiApBssidWhiteList"

    return-object v0

    :pswitch_44
    const-string v0, "setWifiApSsidWhiteList"

    return-object v0

    :pswitch_47
    const-string v0, "getWifiConnRestriction"

    return-object v0

    :pswitch_4a
    const-string v0, "setWifiConnRestriction"

    return-object v0

    :pswitch_4d
    const-string v0, "recoveryFactory"

    return-object v0

    :pswitch_50
    const-string v0, "getUrlBlackList"

    return-object v0

    :pswitch_53
    const-string v0, "getUrlWhiteList"

    return-object v0

    :pswitch_56
    const-string v0, "setUrlBlackList"

    return-object v0

    :pswitch_59
    const-string v0, "setUrlWhiteList"

    return-object v0

    :pswitch_5c
    const-string v0, "formatSdCard"

    return-object v0

    :pswitch_5f
    const-string v0, "deviceReboot"

    return-object v0

    :pswitch_62
    const-string v0, "deviceShutDown"

    return-object v0

    :pswitch_65
    const-string v0, "isDeviceRoot"

    return-object v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
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

.method public static setDefaultImpl(Lcom/miui/enterprise/IDeviceManager;)Z
    .registers 3

    sget-object v0, Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;->sDefaultImpl:Lcom/miui/enterprise/IDeviceManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;->sDefaultImpl:Lcom/miui/enterprise/IDeviceManager;

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

    invoke-static {p1}, Lcom/miui/enterprise/IDeviceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.miui.enterprise.IDeviceManager"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_236

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_23a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->setLockWallPaper(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWallPaper(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getDefaultHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->setDefaultHome(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->setBootAnimation(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_5b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_65

    move v1, v2

    :cond_65
    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->enableUsbDebug(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->getIpBlackList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_7e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->getIpWhiteList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_a2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_b4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpRestriction(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_c6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->captureScreen()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_d9

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_dc

    :cond_d9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_dc
    return v2

    :pswitch_dd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setBrowserRestriction(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_ef
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->setRingerMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_fd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApBssidBlackList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_10f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApSsidBlackList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApBssidWhiteList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApSsidWhiteList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_145
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApBssidBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApSsidBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_169
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApBssidWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_17b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApSsidWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_18d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiConnRestriction(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_19f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiConnRestriction(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1b1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1bb

    move v1, v2

    :cond_1bb
    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->recoveryFactory(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1c2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->getUrlBlackList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_1d4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->getUrlWhiteList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_1e6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setUrlBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1f8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setUrlWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_20a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->formatSdCard()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_214
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->deviceReboot()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_21e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->deviceShutDown()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_228
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->isDeviceRoot()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_236
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_23a
    .packed-switch 0x1
        :pswitch_228
        :pswitch_21e
        :pswitch_214
        :pswitch_20a
        :pswitch_1f8
        :pswitch_1e6
        :pswitch_1d4
        :pswitch_1c2
        :pswitch_1b1
        :pswitch_19f
        :pswitch_18d
        :pswitch_17b
        :pswitch_169
        :pswitch_157
        :pswitch_145
        :pswitch_133
        :pswitch_121
        :pswitch_10f
        :pswitch_fd
        :pswitch_ef
        :pswitch_dd
        :pswitch_c6
        :pswitch_b4
        :pswitch_a2
        :pswitch_90
        :pswitch_7e
        :pswitch_6c
        :pswitch_5b
        :pswitch_49
        :pswitch_3b
        :pswitch_2d
        :pswitch_1f
        :pswitch_11
    .end packed-switch
.end method
