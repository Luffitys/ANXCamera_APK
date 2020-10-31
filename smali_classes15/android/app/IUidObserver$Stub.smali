.class public abstract Landroid/app/IUidObserver$Stub;
.super Landroid/os/Binder;
.source "IUidObserver.java"

# interfaces
.implements Landroid/app/IUidObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUidObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUidObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUidObserver"

.field static final TRANSACTION_onUidActive:I = 0x2

.field static final TRANSACTION_onUidCachedChanged:I = 0x5

.field static final TRANSACTION_onUidGone:I = 0x1

.field static final TRANSACTION_onUidIdle:I = 0x3

.field static final TRANSACTION_onUidStateChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IUidObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUidObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.IUidObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IUidObserver;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/IUidObserver;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/IUidObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUidObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/app/IUidObserver;
    .registers 1

    sget-object v0, Landroid/app/IUidObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/IUidObserver;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 v0, 0x0

    return-object v0

    :cond_11
    const-string/jumbo v0, "onUidCachedChanged"

    return-object v0

    :cond_15
    const-string/jumbo v0, "onUidStateChanged"

    return-object v0

    :cond_19
    const-string/jumbo v0, "onUidIdle"

    return-object v0

    :cond_1d
    const-string/jumbo v0, "onUidActive"

    return-object v0

    :cond_21
    const-string/jumbo v0, "onUidGone"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/app/IUidObserver;)Z
    .registers 3

    sget-object v0, Landroid/app/IUidObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/IUidObserver;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/app/IUidObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/IUidObserver;

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

    invoke-static {p1}, Landroid/app/IUidObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v9, "android.app.IUidObserver"

    const/4 v0, 0x0

    const/4 v10, 0x1

    if-eq v7, v10, :cond_7d

    const/4 v1, 0x2

    if-eq v7, v1, :cond_70

    const/4 v1, 0x3

    if-eq v7, v1, :cond_5c

    const/4 v1, 0x4

    if-eq v7, v1, :cond_3c

    const/4 v1, 0x5

    if-eq v7, v1, :cond_28

    const v0, 0x5f4e5446

    if-eq v7, v0, :cond_22

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_22
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_28
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38

    move v0, v10

    :cond_38
    invoke-virtual {v6, v1, v0}, Landroid/app/IUidObserver$Stub;->onUidCachedChanged(IZ)V

    return v10

    :cond_3c
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-wide v3, v14

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IUidObserver$Stub;->onUidStateChanged(IIJI)V

    return v10

    :cond_5c
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6c

    move v0, v10

    :cond_6c
    invoke-virtual {v6, v1, v0}, Landroid/app/IUidObserver$Stub;->onUidIdle(IZ)V

    return v10

    :cond_70
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/IUidObserver$Stub;->onUidActive(I)V

    return v10

    :cond_7d
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8d

    move v0, v10

    :cond_8d
    invoke-virtual {v6, v1, v0}, Landroid/app/IUidObserver$Stub;->onUidGone(IZ)V

    return v10
.end method
