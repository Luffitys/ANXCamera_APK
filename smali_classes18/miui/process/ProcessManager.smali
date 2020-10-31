.class public Lmiui/process/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# static fields
.field public static final AI_MAX_ADJ:I

.field public static final AI_MAX_PROCESS_STATE:I = 0xd

.field public static final ALL_ACTIVE:I = 0x3

.field public static final AUDIO_ACTIVE:I = 0x1

.field public static final DEBUG:Z = true

.field public static final DEFAULT_MAX_ADJ:I

.field public static final DEFAULT_PROCESS_STATE:I = 0x14

.field public static final FLAG_START_PROCESS_AI:I = 0x1

.field public static final FLAG_START_PROCESS_FAST_RESTART:I = 0x2

.field public static final GPS_ACTIVE:I = 0x2

.field public static final LOCKED_MAX_ADJ:I

.field public static final LOCKED_MAX_PROCESS_STATE:I = 0xd

.field public static final MAX_ADJ_BOOST_TIMEOUT:J = 0x493e0L

.field public static final MIUI_AI_MODE_STACK_ID:I = 0x7

.field public static final PROTECT_MAX_ADJ:I

.field public static final PROTECT_MAX_PROCESS_STATE:I = 0xd

.field public static final SECRETLY_SUBPROCESS_MAX_ADJ:I

.field public static final SECRETLY_SUBPROCESS_MAX_PROCESS_STATE:I = 0xf

.field public static final SERVICE_NAME:Ljava/lang/String; = "ProcessManager"

.field private static final SINGLE_COUNT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ProcessManager"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x190

    const/4 v2, 0x4

    const/16 v3, 0x17

    if-le v0, v3, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    sput v0, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    sput v0, Lmiui/process/ProcessManager;->AI_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    sput v1, Lmiui/process/ProcessManager;->PROTECT_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_26

    const/16 v0, 0x320

    goto :goto_28

    :cond_26
    const/16 v0, 0x8

    :goto_28
    sput v0, Lmiui/process/ProcessManager;->SECRETLY_SUBPROCESS_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_31

    const/16 v0, 0x3e9

    goto :goto_33

    :cond_31
    const/16 v0, 0x10

    :goto_33
    sput v0, Lmiui/process/ProcessManager;->DEFAULT_MAX_ADJ:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lmiui/process/IProcessManager;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    goto :goto_12

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public static adjBoost(Ljava/lang/String;IJI)V
    .registers 11

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lmiui/process/IProcessManager;->adjBoost(Ljava/lang/String;IJI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_10
    return-void
.end method

.method public static boostCameraIfNeed()V
    .registers 1

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/process/IProcessManager;->boostCameraIfNeeded()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public static getActiveUidInfo(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/process/ActiveUidInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->getActiveUidInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lmiui/process/IProcessManager;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v2

    :cond_c
    goto :goto_11

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return-object v0
.end method

.method public static getForegroundInfo()Lmiui/process/ForegroundInfo;
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1}, Lmiui/process/IProcessManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    goto :goto_f

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_f
    return-object v0
.end method

.method public static getLockedApplication(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->getLockedApplication(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lmiui/process/IProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningProcessInfoByPackageName(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v0, p0, v1, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningProcessInfoByPid(I)Lmiui/process/RunningProcessInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/process/RunningProcessInfo;

    return-object v1

    :cond_16
    return-object v1
.end method

.method public static getRunningProcessInfoByProcessName(Ljava/lang/String;)Lmiui/process/RunningProcessInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v0, v1, p0, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/process/RunningProcessInfo;

    return-object v1

    :cond_16
    return-object v1
.end method

.method public static getRunningProcessInfoByUid(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isLockedApplication(Ljava/lang/String;I)Z
    .registers 3

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/process/IProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static kill(Lmiui/process/ProcessConfig;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    goto :goto_f

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_f
    return v0
.end method

.method public static protectCurrentProcess(Z)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lmiui/process/IProcessManager;->protectCurrentProcess(ZI)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move v0, v1

    goto :goto_10

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_10
    return v0
.end method

.method public static protectCurrentProcess(ZI)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lmiui/process/IProcessManager;->protectCurrentProcess(ZI)Z

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    goto :goto_f

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_f
    return v0
.end method

.method public static registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lmiui/process/IProcessManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public static registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 2

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public static registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .registers 2

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public static startPreloadProcesses(Ljava/util/List;IZII)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "ProcessManager"

    if-eqz p0, :cond_30

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_30

    :cond_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p1, :cond_2a

    if-gtz p1, :cond_15

    goto :goto_2a

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lmiui/process/IProcessManager;->startProcesses(Ljava/util/List;IZII)I

    move-result v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_25

    move v0, v1

    goto :goto_29

    :catch_25
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_29
    return v0

    :cond_2a
    :goto_2a
    const-string v2, "illegal start number!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_30
    :goto_30
    const-string v2, "dataList cannot be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static startProcess(Ljava/lang/String;ZII)Z
    .registers 7

    new-instance v0, Lmiui/process/PreloadProcessData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lmiui/process/PreloadProcessData;-><init>(Ljava/lang/String;ZLandroid/content/Intent;)V

    invoke-static {v0, p1, p2, p3}, Lmiui/process/ProcessManager;->startProcess(Lmiui/process/PreloadProcessData;ZII)Z

    move-result v1

    return v1
.end method

.method public static startProcess(Lmiui/process/PreloadProcessData;II)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lmiui/process/ProcessManager;->startProcess(Lmiui/process/PreloadProcessData;ZII)Z

    move-result v0

    return v0
.end method

.method public static startProcess(Lmiui/process/PreloadProcessData;ZII)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_1f

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2, p1, p2, p3}, Lmiui/process/ProcessManager;->startPreloadProcesses(Ljava/util/List;IZII)I

    move-result v3

    if-ne v3, v2, :cond_1e

    move v0, v2

    :cond_1e
    return v0

    :cond_1f
    :goto_1f
    const-string v1, "ProcessManager"

    const-string v2, "preload data and packageName cannot be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static startProcesses(Ljava/util/List;IZII)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZII)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_33

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_33

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    new-instance v4, Lmiui/process/PreloadProcessData;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v0, v5}, Lmiui/process/PreloadProcessData;-><init>(Ljava/lang/String;ZLandroid/content/Intent;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    goto :goto_12

    :cond_2e
    invoke-static {v1, p1, p2, p3, p4}, Lmiui/process/ProcessManager;->startPreloadProcesses(Ljava/util/List;IZII)I

    move-result v0

    return v0

    :cond_33
    return v0
.end method

.method public static unregisterActivityChanageListener(Lmiui/process/IActivityChangeListener;)V
    .registers 2

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public static unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 2

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public static unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .registers 2

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public static updateApplicationLockedState(Ljava/lang/String;IZ)V
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lmiui/process/IProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public static updateCloudData(Lmiui/process/ProcessCloudData;)V
    .registers 3

    if-eqz p0, :cond_a

    :try_start_2
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    goto :goto_11

    :cond_a
    const-string v0, "ProcessManager"

    const-string v1, "cloudData is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    :goto_11
    goto :goto_16

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_16
    return-void
.end method

.method public static updateConfig(Lmiui/process/ProcessConfig;)V
    .registers 2

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->updateConfig(Lmiui/process/ProcessConfig;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method
