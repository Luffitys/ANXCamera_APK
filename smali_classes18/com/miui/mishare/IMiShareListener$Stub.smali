.class public abstract Lcom/miui/mishare/IMiShareListener$Stub;
.super Landroid/os/Binder;
.source "IMiShareListener.java"

# interfaces
.implements Lcom/miui/mishare/IMiShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/IMiShareListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.mishare.IMiShareListener"

.field static final TRANSACTION_onTaskFinish:I = 0x4

.field static final TRANSACTION_onTaskProgress:I = 0x3

.field static final TRANSACTION_onTaskReceived:I = 0x1

.field static final TRANSACTION_onTaskStart:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.mishare.IMiShareListener"

    invoke-virtual {p0, p0, v0}, Lcom/miui/mishare/IMiShareListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.miui.mishare.IMiShareListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/mishare/IMiShareListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/miui/mishare/IMiShareListener;

    return-object v1

    :cond_14
    new-instance v1, Lcom/miui/mishare/IMiShareListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/mishare/IMiShareListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/mishare/IMiShareListener;
    .registers 1

    sget-object v0, Lcom/miui/mishare/IMiShareListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareListener;

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
    const-string v0, "onTaskFinish"

    return-object v0

    :cond_11
    const-string v0, "onTaskProgress"

    return-object v0

    :cond_14
    const-string v0, "onTaskStart"

    return-object v0

    :cond_17
    const-string v0, "onTaskReceived"

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/mishare/IMiShareListener;)Z
    .registers 3

    sget-object v0, Lcom/miui/mishare/IMiShareListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareListener;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/miui/mishare/IMiShareListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareListener;

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

    invoke-static {p1}, Lcom/miui/mishare/IMiShareListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.miui.mishare.IMiShareListener"

    const/4 v10, 0x1

    if-eq v7, v10, :cond_82

    const/4 v0, 0x2

    if-eq v7, v0, :cond_69

    const/4 v0, 0x3

    if-eq v7, v0, :cond_41

    const/4 v0, 0x4

    if-eq v7, v0, :cond_24

    const v0, 0x5f4e5446

    if-eq v7, v0, :cond_1e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_1e
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_24
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/MiShareTask;

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/miui/mishare/IMiShareListener$Stub;->onTaskFinish(Lcom/miui/mishare/MiShareTask;I)V

    return v10

    :cond_41
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/MiShareTask;

    move-object v12, v0

    goto :goto_58

    :cond_56
    const/4 v0, 0x0

    move-object v12, v0

    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/miui/mishare/IMiShareListener$Stub;->onTaskProgress(Lcom/miui/mishare/MiShareTask;JJ)V

    return v10

    :cond_69
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/MiShareTask;

    goto :goto_7e

    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    invoke-virtual {v6, v0}, Lcom/miui/mishare/IMiShareListener$Stub;->onTaskStart(Lcom/miui/mishare/MiShareTask;)V

    return v10

    :cond_82
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_96

    sget-object v0, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/MiShareTask;

    goto :goto_97

    :cond_96
    const/4 v0, 0x0

    :goto_97
    invoke-virtual {v6, v0}, Lcom/miui/mishare/IMiShareListener$Stub;->onTaskReceived(Lcom/miui/mishare/MiShareTask;)V

    return v10
.end method
