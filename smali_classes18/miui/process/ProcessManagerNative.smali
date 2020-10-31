.class public abstract Lmiui/process/ProcessManagerNative;
.super Landroid/os/Binder;
.source "ProcessManagerNative.java"

# interfaces
.implements Lmiui/process/IProcessManager;


# static fields
.field private static volatile pm:Lmiui/process/IProcessManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.IProcessManager"

    invoke-virtual {p0, p0, v0}, Lmiui/process/ProcessManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/process/IProcessManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.IProcessManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmiui/process/IProcessManager;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v1, Lmiui/process/ProcessManagerProxy;

    invoke-direct {v1, p0}, Lmiui/process/ProcessManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefault()Lmiui/process/IProcessManager;
    .registers 3

    sget-object v0, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    if-nez v0, :cond_1c

    const-class v0, Lmiui/process/ProcessManagerNative;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    if-nez v1, :cond_17

    const-string v1, "ProcessManager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/process/ProcessManagerNative;->asInterface(Landroid/os/IBinder;)Lmiui/process/IProcessManager;

    move-result-object v2

    sput-object v2, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1

    :cond_1c
    :goto_1c
    sget-object v0, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "miui.IProcessManager"

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_1fc

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_12
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/process/IForegroundWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundWindowListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    return v9

    :pswitch_22
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/process/IForegroundWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundWindowListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    return v9

    :pswitch_32
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->getActiveUidInfo(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    :pswitch_44
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object v0, p0

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lmiui/process/ProcessManagerNative;->adjBoost(Ljava/lang/String;IJI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_63
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/process/ProcessManagerNative;->boostCameraIfNeeded()V

    return v9

    :pswitch_6a
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    nop

    move-object v0, p0

    move v1, v10

    move v2, v11

    move-object v3, v12

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lmiui/process/ProcessManagerNative;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    :pswitch_93
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/process/IActivityChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IActivityChangeListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V

    return v9

    :pswitch_a3
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/process/IActivityChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IActivityChangeListener;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lmiui/process/ProcessManagerNative;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    return v9

    :pswitch_c3
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/process/ProcessManagerNative;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_d3

    invoke-interface {v1}, Lmiui/process/IMiuiApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_d3
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v9

    :pswitch_d7
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v1, :cond_e8

    invoke-static {v1}, Lmiui/process/IMiuiApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    :cond_e8
    invoke-virtual {p0, v0, v2}, Lmiui/process/ProcessManagerNative;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_ef
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/process/ProcessManagerNative;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v0, v8, v1}, Lmiui/process/ForegroundInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return v9

    :pswitch_fd
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/process/IForegroundInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundInfoListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    return v9

    :pswitch_10d
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/process/IForegroundInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundInfoListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    return v9

    :pswitch_11d
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/process/ProcessManagerNative;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_133
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lmiui/process/ProcessCloudData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessCloudData;

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_145
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14f

    move v1, v9

    :cond_14f
    move v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/process/ProcessManagerNative;->protectCurrentProcess(ZI)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_15f
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v9, :cond_178

    move v3, v9

    goto :goto_179

    :cond_178
    move v3, v1

    :goto_179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object v0, p0

    move-object v1, v10

    move v2, v11

    move v4, v12

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lmiui/process/ProcessManagerNative;->startProcesses(Ljava/util/List;IZII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_191
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessConfig;

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->updateConfig(Lmiui/process/ProcessConfig;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_1a3
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->getLockedApplication(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1b8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1b9

    :cond_1b8
    const/4 v2, -0x1

    :goto_1b9
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    :goto_1bd
    if-ge v3, v2, :cond_1cb

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1bd

    :cond_1cb
    return v9

    :pswitch_1cc
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1de

    move v1, v9

    :cond_1de
    invoke-virtual {p0, v0, v2, v1}, Lmiui/process/ProcessManagerNative;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_1e5
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessConfig;

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->kill(Lmiui/process/ProcessConfig;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    nop

    :pswitch_data_1fc
    .packed-switch 0x2
        :pswitch_1e5
        :pswitch_1cc
        :pswitch_1a3
        :pswitch_191
        :pswitch_15f
        :pswitch_145
        :pswitch_133
        :pswitch_11d
        :pswitch_10d
        :pswitch_fd
        :pswitch_ef
        :pswitch_d7
        :pswitch_c3
        :pswitch_a3
        :pswitch_93
        :pswitch_6a
        :pswitch_63
        :pswitch_44
        :pswitch_32
        :pswitch_22
        :pswitch_12
    .end packed-switch
.end method
