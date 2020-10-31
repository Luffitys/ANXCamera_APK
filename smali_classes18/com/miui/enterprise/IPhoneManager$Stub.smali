.class public abstract Lcom/miui/enterprise/IPhoneManager$Stub;
.super Landroid/os/Binder;
.source "IPhoneManager.java"

# interfaces
.implements Lcom/miui/enterprise/IPhoneManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.IPhoneManager"

.field static final TRANSACTION_controlCellular:I = 0x3

.field static final TRANSACTION_controlPhoneCall:I = 0x2

.field static final TRANSACTION_controlSMS:I = 0x1

.field static final TRANSACTION_disableCallForward:I = 0x18

.field static final TRANSACTION_disableCallLog:I = 0x19

.field static final TRANSACTION_endCall:I = 0x17

.field static final TRANSACTION_getAreaCode:I = 0x1a

.field static final TRANSACTION_getCallBlackList:I = 0x13

.field static final TRANSACTION_getCallContactRestriction:I = 0x16

.field static final TRANSACTION_getCallWhiteList:I = 0x14

.field static final TRANSACTION_getCellularStatus:I = 0x6

.field static final TRANSACTION_getIMEI:I = 0x7

.field static final TRANSACTION_getMeid:I = 0x1b

.field static final TRANSACTION_getPhoneCallStatus:I = 0x5

.field static final TRANSACTION_getSMSBlackList:I = 0xd

.field static final TRANSACTION_getSMSContactRestriction:I = 0x10

.field static final TRANSACTION_getSMSStatus:I = 0x4

.field static final TRANSACTION_getSMSWhiteList:I = 0xe

.field static final TRANSACTION_isAutoRecordPhoneCall:I = 0xa

.field static final TRANSACTION_setCallBlackList:I = 0x11

.field static final TRANSACTION_setCallContactRestriction:I = 0x15

.field static final TRANSACTION_setCallWhiteList:I = 0x12

.field static final TRANSACTION_setIccCardActivate:I = 0x1c

.field static final TRANSACTION_setPhoneCallAutoRecord:I = 0x8

.field static final TRANSACTION_setPhoneCallAutoRecordDir:I = 0x9

.field static final TRANSACTION_setSMSBlackList:I = 0xb

.field static final TRANSACTION_setSMSContactRestriction:I = 0xf

.field static final TRANSACTION_setSMSWhiteList:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IPhoneManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.miui.enterprise.IPhoneManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/enterprise/IPhoneManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/miui/enterprise/IPhoneManager;

    return-object v1

    :cond_14
    new-instance v1, Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/enterprise/IPhoneManager;
    .registers 1

    sget-object v0, Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;->sDefaultImpl:Lcom/miui/enterprise/IPhoneManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_5a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "setIccCardActivate"

    return-object v0

    :pswitch_8
    const-string v0, "getMeid"

    return-object v0

    :pswitch_b
    const-string v0, "getAreaCode"

    return-object v0

    :pswitch_e
    const-string v0, "disableCallLog"

    return-object v0

    :pswitch_11
    const-string v0, "disableCallForward"

    return-object v0

    :pswitch_14
    const-string v0, "endCall"

    return-object v0

    :pswitch_17
    const-string v0, "getCallContactRestriction"

    return-object v0

    :pswitch_1a
    const-string v0, "setCallContactRestriction"

    return-object v0

    :pswitch_1d
    const-string v0, "getCallWhiteList"

    return-object v0

    :pswitch_20
    const-string v0, "getCallBlackList"

    return-object v0

    :pswitch_23
    const-string v0, "setCallWhiteList"

    return-object v0

    :pswitch_26
    const-string v0, "setCallBlackList"

    return-object v0

    :pswitch_29
    const-string v0, "getSMSContactRestriction"

    return-object v0

    :pswitch_2c
    const-string v0, "setSMSContactRestriction"

    return-object v0

    :pswitch_2f
    const-string v0, "getSMSWhiteList"

    return-object v0

    :pswitch_32
    const-string v0, "getSMSBlackList"

    return-object v0

    :pswitch_35
    const-string v0, "setSMSWhiteList"

    return-object v0

    :pswitch_38
    const-string v0, "setSMSBlackList"

    return-object v0

    :pswitch_3b
    const-string v0, "isAutoRecordPhoneCall"

    return-object v0

    :pswitch_3e
    const-string v0, "setPhoneCallAutoRecordDir"

    return-object v0

    :pswitch_41
    const-string v0, "setPhoneCallAutoRecord"

    return-object v0

    :pswitch_44
    const-string v0, "getIMEI"

    return-object v0

    :pswitch_47
    const-string v0, "getCellularStatus"

    return-object v0

    :pswitch_4a
    const-string v0, "getPhoneCallStatus"

    return-object v0

    :pswitch_4d
    const-string v0, "getSMSStatus"

    return-object v0

    :pswitch_50
    const-string v0, "controlCellular"

    return-object v0

    :pswitch_53
    const-string v0, "controlPhoneCall"

    return-object v0

    :pswitch_56
    const-string v0, "controlSMS"

    return-object v0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
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

.method public static setDefaultImpl(Lcom/miui/enterprise/IPhoneManager;)Z
    .registers 3

    sget-object v0, Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;->sDefaultImpl:Lcom/miui/enterprise/IPhoneManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;->sDefaultImpl:Lcom/miui/enterprise/IPhoneManager;

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

    invoke-static {p1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.miui.enterprise.IPhoneManager"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_201

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_206

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    move v1, v2

    :cond_1f
    invoke-virtual {p0, v3, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->setIccCardActivate(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getMeid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getAreaCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_4a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_54

    move v1, v2

    :cond_54
    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->disableCallLog(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_65

    move v1, v2

    :cond_65
    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->disableCallForward(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IPhoneManager$Stub;->endCall()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallContactRestriction(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallContactRestriction(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallWhiteList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_ac
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallBlackList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_be
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_d0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_e2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSContactRestriction(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_f4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSContactRestriction(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSWhiteList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSBlackList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_12a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_13c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_14e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->isAutoRecordPhoneCall(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_160
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->setPhoneCallAutoRecordDir(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_16e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_178

    move v1, v2

    :cond_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setPhoneCallAutoRecord(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_183
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getIMEI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_195
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCellularStatus(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1a7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getPhoneCallStatus(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1b9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSStatus(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1cb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlCellular(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1dd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlPhoneCall(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1ef
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlSMS(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_201
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_206
    .packed-switch 0x1
        :pswitch_1ef
        :pswitch_1dd
        :pswitch_1cb
        :pswitch_1b9
        :pswitch_1a7
        :pswitch_195
        :pswitch_183
        :pswitch_16e
        :pswitch_160
        :pswitch_14e
        :pswitch_13c
        :pswitch_12a
        :pswitch_118
        :pswitch_106
        :pswitch_f4
        :pswitch_e2
        :pswitch_d0
        :pswitch_be
        :pswitch_ac
        :pswitch_9a
        :pswitch_88
        :pswitch_76
        :pswitch_6c
        :pswitch_5b
        :pswitch_4a
        :pswitch_38
        :pswitch_26
        :pswitch_11
    .end packed-switch
.end method
