.class public abstract Lmiui/os/IMiuiInit$Stub;
.super Landroid/os/Binder;
.source "IMiuiInit.java"

# interfaces
.implements Lmiui/os/IMiuiInit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/IMiuiInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/IMiuiInit$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.os.IMiuiInit"

.field static final TRANSACTION_copyPreinstallPAITrackingFile:I = 0xb

.field static final TRANSACTION_doFactoryReset:I = 0x4

.field static final TRANSACTION_getAspectRatio:I = 0xf

.field static final TRANSACTION_getCustVariants:I = 0x2

.field static final TRANSACTION_getCutoutMode:I = 0x15

.field static final TRANSACTION_getDefaultAspectType:I = 0x10

.field static final TRANSACTION_getMiuiChannelPath:I = 0x7

.field static final TRANSACTION_getMiuiPreinstallAppPath:I = 0xc

.field static final TRANSACTION_getNotchConfig:I = 0x11

.field static final TRANSACTION_getPreinstalledAppVersion:I = 0x12

.field static final TRANSACTION_initCustEnvironment:I = 0x1

.field static final TRANSACTION_installPreinstallApp:I = 0x3

.field static final TRANSACTION_isPreinstalledPAIPackage:I = 0x6

.field static final TRANSACTION_isPreinstalledPackage:I = 0x5

.field static final TRANSACTION_isRestrictAspect:I = 0xe

.field static final TRANSACTION_removeFromPreinstallList:I = 0x8

.field static final TRANSACTION_removeFromPreinstallPAIList:I = 0x9

.field static final TRANSACTION_setCutoutMode:I = 0x14

.field static final TRANSACTION_setNotchSpecialMode:I = 0x13

.field static final TRANSACTION_setRestrictAspect:I = 0xd

.field static final TRANSACTION_writePreinstallPAIPackage:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.os.IMiuiInit"

    invoke-virtual {p0, p0, v0}, Lmiui/os/IMiuiInit$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInit;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.os.IMiuiInit"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/os/IMiuiInit;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/os/IMiuiInit;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/os/IMiuiInit$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/os/IMiuiInit$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/os/IMiuiInit;
    .registers 1

    sget-object v0, Lmiui/os/IMiuiInit$Stub$Proxy;->sDefaultImpl:Lmiui/os/IMiuiInit;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_44

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "getCutoutMode"

    return-object v0

    :pswitch_8
    const-string v0, "setCutoutMode"

    return-object v0

    :pswitch_b
    const-string v0, "setNotchSpecialMode"

    return-object v0

    :pswitch_e
    const-string v0, "getPreinstalledAppVersion"

    return-object v0

    :pswitch_11
    const-string v0, "getNotchConfig"

    return-object v0

    :pswitch_14
    const-string v0, "getDefaultAspectType"

    return-object v0

    :pswitch_17
    const-string v0, "getAspectRatio"

    return-object v0

    :pswitch_1a
    const-string v0, "isRestrictAspect"

    return-object v0

    :pswitch_1d
    const-string v0, "setRestrictAspect"

    return-object v0

    :pswitch_20
    const-string v0, "getMiuiPreinstallAppPath"

    return-object v0

    :pswitch_23
    const-string v0, "copyPreinstallPAITrackingFile"

    return-object v0

    :pswitch_26
    const-string v0, "writePreinstallPAIPackage"

    return-object v0

    :pswitch_29
    const-string v0, "removeFromPreinstallPAIList"

    return-object v0

    :pswitch_2c
    const-string v0, "removeFromPreinstallList"

    return-object v0

    :pswitch_2f
    const-string v0, "getMiuiChannelPath"

    return-object v0

    :pswitch_32
    const-string v0, "isPreinstalledPAIPackage"

    return-object v0

    :pswitch_35
    const-string v0, "isPreinstalledPackage"

    return-object v0

    :pswitch_38
    const-string v0, "doFactoryReset"

    return-object v0

    :pswitch_3b
    const-string v0, "installPreinstallApp"

    return-object v0

    :pswitch_3e
    const-string v0, "getCustVariants"

    return-object v0

    :pswitch_41
    const-string v0, "initCustEnvironment"

    return-object v0

    :pswitch_data_44
    .packed-switch 0x1
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

.method public static setDefaultImpl(Lmiui/os/IMiuiInit;)Z
    .registers 3

    sget-object v0, Lmiui/os/IMiuiInit$Stub$Proxy;->sDefaultImpl:Lmiui/os/IMiuiInit;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/os/IMiuiInit$Stub$Proxy;->sDefaultImpl:Lmiui/os/IMiuiInit;

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

    invoke-static {p1}, Lmiui/os/IMiuiInit$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "miui.os.IMiuiInit"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_181

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_186

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->getCutoutMode(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lmiui/os/IMiuiInit$Stub;->setCutoutMode(Ljava/lang/String;I)V

    return v2

    :pswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    move v1, v2

    :cond_40
    invoke-virtual {p0, v3, v1}, Lmiui/os/IMiuiInit$Stub;->setNotchSpecialMode(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->getPreinstalledAppVersion(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->getNotchConfig(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_6b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->getAspectRatio(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    return v2

    :pswitch_8f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_af

    move v1, v2

    :cond_af
    invoke-virtual {p0, v3, v1}, Lmiui/os/IMiuiInit$Stub;->setRestrictAspect(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_b6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_c8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lmiui/os/IMiuiInit$Stub;->copyPreinstallPAITrackingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_de
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->writePreinstallPAIPackage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_ec
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->removeFromPreinstallPAIList(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_fa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->removeFromPreinstallList(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_11a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->isPreinstalledPAIPackage(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_12c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_13e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_148

    move v1, v2

    :cond_148
    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->doFactoryReset(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_14f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/os/IMiuiInit$Stub;->installPreinstallApp()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/os/IMiuiInit$Stub;->getCustVariants()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v2

    :pswitch_167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/os/IMiuiInitObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInitObserver;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/os/IMiuiInit$Stub;->initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_181
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_167
        :pswitch_159
        :pswitch_14f
        :pswitch_13e
        :pswitch_12c
        :pswitch_11a
        :pswitch_108
        :pswitch_fa
        :pswitch_ec
        :pswitch_de
        :pswitch_c8
        :pswitch_b6
        :pswitch_a1
        :pswitch_8f
        :pswitch_7d
        :pswitch_6b
        :pswitch_59
        :pswitch_47
        :pswitch_32
        :pswitch_23
        :pswitch_11
    .end packed-switch
.end method
