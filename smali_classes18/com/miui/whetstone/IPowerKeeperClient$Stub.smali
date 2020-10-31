.class public abstract Lcom/miui/whetstone/IPowerKeeperClient$Stub;
.super Landroid/os/Binder;
.source "IPowerKeeperClient.java"

# interfaces
.implements Lcom/miui/whetstone/IPowerKeeperClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IPowerKeeperClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IPowerKeeperClient"

.field static final TRANSACTION_enableATrace:I = 0x3

.field static final TRANSACTION_notifyBluetooth:I = 0x6

.field static final TRANSACTION_notifyEvent:I = 0x7

.field static final TRANSACTION_notifyFrozenAppWakeUpByHighPriorityAlarm:I = 0x1

.field static final TRANSACTION_notifyScreenOn:I = 0x4

.field static final TRANSACTION_notifySyncEvent:I = 0x5

.field static final TRANSACTION_perfThermalBreakAcquire:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.whetstone.IPowerKeeperClient"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperClient;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.miui.whetstone.IPowerKeeperClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/miui/whetstone/IPowerKeeperClient;

    return-object v1

    :cond_14
    new-instance v1, Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/whetstone/IPowerKeeperClient;
    .registers 1

    sget-object v0, Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;->sDefaultImpl:Lcom/miui/whetstone/IPowerKeeperClient;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "notifyEvent"

    return-object v0

    :pswitch_8
    const-string v0, "notifyBluetooth"

    return-object v0

    :pswitch_b
    const-string v0, "notifySyncEvent"

    return-object v0

    :pswitch_e
    const-string v0, "notifyScreenOn"

    return-object v0

    :pswitch_11
    const-string v0, "enableATrace"

    return-object v0

    :pswitch_14
    const-string v0, "perfThermalBreakAcquire"

    return-object v0

    :pswitch_17
    const-string v0, "notifyFrozenAppWakeUpByHighPriorityAlarm"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/miui/whetstone/IPowerKeeperClient;)Z
    .registers 3

    sget-object v0, Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;->sDefaultImpl:Lcom/miui/whetstone/IPowerKeeperClient;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;->sDefaultImpl:Lcom/miui/whetstone/IPowerKeeperClient;

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

    invoke-static {p1}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.miui.whetstone.IPowerKeeperClient"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_9b

    packed-switch v7, :pswitch_data_a2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_16
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifyEvent(ILandroid/os/Bundle;)V

    return v10

    :pswitch_31
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifyBluetooth(IILjava/lang/String;I)V

    return v10

    :pswitch_48
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifySyncEvent(IILjava/lang/String;Ljava/lang/String;[I)V

    return v10

    :pswitch_6a
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifyScreenOn()V

    return v10

    :pswitch_71
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c

    move v0, v10

    goto :goto_7d

    :cond_7c
    const/4 v0, 0x0

    :goto_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->enableATrace(ZLjava/lang/String;)V

    return v10

    :pswitch_85
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->perfThermalBreakAcquire(I)V

    return v10

    :pswitch_90
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifyFrozenAppWakeUpByHighPriorityAlarm(I)V

    return v10

    :cond_9b
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_90
        :pswitch_85
        :pswitch_71
        :pswitch_6a
        :pswitch_48
        :pswitch_31
        :pswitch_16
    .end packed-switch
.end method
