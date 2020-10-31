.class public abstract Landroid/content/pm/dex/IArtManager$Stub;
.super Landroid/os/Binder;
.source "IArtManager.java"

# interfaces
.implements Landroid/content/pm/dex/IArtManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/dex/IArtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/dex/IArtManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.dex.IArtManager"

.field static final TRANSACTION_isRuntimeProfilingEnabled:I = 0x2

.field static final TRANSACTION_snapshotRuntimeProfile:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.pm.dex.IArtManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/dex/IArtManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/dex/IArtManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.content.pm.dex.IArtManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/dex/IArtManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/content/pm/dex/IArtManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/content/pm/dex/IArtManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/dex/IArtManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/content/pm/dex/IArtManager;
    .registers 1

    sget-object v0, Landroid/content/pm/dex/IArtManager$Stub$Proxy;->sDefaultImpl:Landroid/content/pm/dex/IArtManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string v0, "isRuntimeProfilingEnabled"

    return-object v0

    :cond_b
    const-string/jumbo v0, "snapshotRuntimeProfile"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/content/pm/dex/IArtManager;)Z
    .registers 3

    sget-object v0, Landroid/content/pm/dex/IArtManager$Stub$Proxy;->sDefaultImpl:Landroid/content/pm/dex/IArtManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/content/pm/dex/IArtManager$Stub$Proxy;->sDefaultImpl:Landroid/content/pm/dex/IArtManager;

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

    invoke-static {p1}, Landroid/content/pm/dex/IArtManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.content.pm.dex.IArtManager"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_34

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1c

    const v5, 0x5f4e5446

    if-eq v0, v5, :cond_18

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :cond_18
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :cond_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v13, p0

    invoke-virtual {v13, v5, v6}, Landroid/content/pm/dex/IArtManager$Stub;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :cond_34
    move-object/from16 v13, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v7, p0

    move v8, v5

    move-object v9, v6

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/dex/IArtManager$Stub;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v4
.end method
