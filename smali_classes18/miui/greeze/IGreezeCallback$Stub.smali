.class public abstract Lmiui/greeze/IGreezeCallback$Stub;
.super Landroid/os/Binder;
.source "IGreezeCallback.java"

# interfaces
.implements Lmiui/greeze/IGreezeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/greeze/IGreezeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/greeze/IGreezeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.greeze.IGreezeCallback"

.field static final TRANSACTION_reportBinderState:I = 0x4

.field static final TRANSACTION_reportBinderTrans:I = 0x3

.field static final TRANSACTION_reportNet:I = 0x2

.field static final TRANSACTION_reportSignal:I = 0x1

.field static final TRANSACTION_serviceReady:I = 0x5

.field static final TRANSACTION_thawedByOther:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.greeze.IGreezeCallback"

    invoke-virtual {p0, p0, v0}, Lmiui/greeze/IGreezeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/greeze/IGreezeCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.greeze.IGreezeCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/greeze/IGreezeCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/greeze/IGreezeCallback;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/greeze/IGreezeCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/greeze/IGreezeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/greeze/IGreezeCallback;
    .registers 1

    sget-object v0, Lmiui/greeze/IGreezeCallback$Stub$Proxy;->sDefaultImpl:Lmiui/greeze/IGreezeCallback;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "thawedByOther"

    return-object v0

    :pswitch_8
    const-string v0, "serviceReady"

    return-object v0

    :pswitch_b
    const-string v0, "reportBinderState"

    return-object v0

    :pswitch_e
    const-string v0, "reportBinderTrans"

    return-object v0

    :pswitch_11
    const-string v0, "reportNet"

    return-object v0

    :pswitch_14
    const-string v0, "reportSignal"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lmiui/greeze/IGreezeCallback;)Z
    .registers 3

    sget-object v0, Lmiui/greeze/IGreezeCallback$Stub$Proxy;->sDefaultImpl:Lmiui/greeze/IGreezeCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/greeze/IGreezeCallback$Stub$Proxy;->sDefaultImpl:Lmiui/greeze/IGreezeCallback;

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

    invoke-static {p1}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    const-string v14, "miui.greeze.IGreezeCallback"

    const v0, 0x5f4e5446

    const/4 v15, 0x1

    if-eq v12, v0, :cond_b9

    const/4 v0, 0x0

    packed-switch v12, :pswitch_data_c0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_17
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v11, v0, v1, v2}, Lmiui/greeze/IGreezeCallback$Stub;->thawedByOther(III)V

    return v15

    :pswitch_2a
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_34

    move v0, v15

    :cond_34
    invoke-virtual {v11, v0}, Lmiui/greeze/IGreezeCallback$Stub;->serviceReady(Z)V

    return v15

    :pswitch_38
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lmiui/greeze/IGreezeCallback$Stub;->reportBinderState(IIIIJ)V

    return v15

    :pswitch_5b
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7a

    move v6, v15

    goto :goto_7b

    :cond_7a
    move v6, v0

    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-wide/from16 v7, v21

    move-wide/from16 v9, v23

    invoke-virtual/range {v0 .. v10}, Lmiui/greeze/IGreezeCallback$Stub;->reportBinderTrans(IIIIIZJJ)V

    return v15

    :pswitch_97
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v11, v0, v1, v2}, Lmiui/greeze/IGreezeCallback$Stub;->reportNet(IJ)V

    return v15

    :pswitch_a6
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v11, v0, v1, v2, v3}, Lmiui/greeze/IGreezeCallback$Stub;->reportSignal(IIJ)V

    return v15

    :cond_b9
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_97
        :pswitch_5b
        :pswitch_38
        :pswitch_2a
        :pswitch_17
    .end packed-switch
.end method
