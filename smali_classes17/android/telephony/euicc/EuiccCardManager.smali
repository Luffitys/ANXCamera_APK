.class public Landroid/telephony/euicc/EuiccCardManager;
.super Ljava/lang/Object;
.source "EuiccCardManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccCardManager$ResultCallback;,
        Landroid/telephony/euicc/EuiccCardManager$ResetOption;,
        Landroid/telephony/euicc/EuiccCardManager$CancelReason;
    }
.end annotation


# static fields
.field public static final CANCEL_REASON_END_USER_REJECTED:I = 0x0

.field public static final CANCEL_REASON_POSTPONED:I = 0x1

.field public static final CANCEL_REASON_PPR_NOT_ALLOWED:I = 0x3

.field public static final CANCEL_REASON_TIMEOUT:I = 0x2

.field public static final RESET_OPTION_DELETE_FIELD_LOADED_TEST_PROFILES:I = 0x2

.field public static final RESET_OPTION_DELETE_OPERATIONAL_PROFILES:I = 0x1

.field public static final RESET_OPTION_RESET_DEFAULT_SMDP_ADDRESS:I = 0x4

.field public static final RESULT_CALLER_NOT_ALLOWED:I = -0x3

.field public static final RESULT_EUICC_NOT_FOUND:I = -0x2

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_UNKNOWN_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EuiccCardManager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;
    .registers 2

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getEuiccCardControllerServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public authenticateServer(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    move-object v1, p0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    iget-object v0, v1, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Landroid/telephony/euicc/EuiccCardManager$15;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_25

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    :try_start_11
    invoke-direct {v10, p0, v11, v12}, Landroid/telephony/euicc/EuiccCardManager$15;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_21} :catch_23

    nop

    return-void

    :catch_23
    move-exception v0

    goto :goto_2a

    :catch_25
    move-exception v0

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    :goto_2a
    const-string v2, "EuiccCardManager"

    const-string v3, "Error calling authenticateServer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public cancelSession(Ljava/lang/String;[BILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BI",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/telephony/euicc/EuiccCardManager$18;

    invoke-direct {v5, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$18;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    nop

    return-void

    :catch_17
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling cancelSession"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$6;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$6;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling deleteProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/telephony/euicc/EuiccCardManager$3;

    invoke-direct {v5, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$3;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    nop

    return-void

    :catch_17
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling disableProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public listNotifications(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$19;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$19;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling listNotifications"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadBoundProfilePackage(Ljava/lang/String;[BLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$17;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$17;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling loadBoundProfilePackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public prepareDownload(Ljava/lang/String;[B[B[B[BLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroid/telephony/euicc/EuiccCardManager$16;

    invoke-direct {v7, p0, p6, p7}, Landroid/telephony/euicc/EuiccCardManager$16;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling prepareDownload"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeNotificationFromList(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$22;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$22;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling removeNotificationFromList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestAllProfiles(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$1;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$1;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getAllProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestDefaultSmdpAddress(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$8;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$8;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getDefaultSmdpAddress"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestEuiccChallenge(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$12;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$12;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getEuiccChallenge"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestEuiccInfo1(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$13;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$13;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getEuiccInfo1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestEuiccInfo2(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$14;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$14;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getEuiccInfo2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$2;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$2;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestRulesAuthTable(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/telephony/euicc/EuiccRulesAuthTable;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$11;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$11;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getRulesAuthTable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestSmdsAddress(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$9;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$9;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling getSmdsAddress"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resetMemory(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$7;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$7;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling resetMemory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public retrieveNotification(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$21;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$21;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling retrieveNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public retrieveNotificationList(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$20;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$20;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling retrieveNotificationList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$10;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$10;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling setDefaultSmdpAddress"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/telephony/euicc/EuiccCardManager$5;

    invoke-direct {v5, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$5;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    nop

    return-void

    :catch_17
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling setNickname"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public switchToProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/telephony/euicc/EuiccCardManager$4;

    invoke-direct {v5, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$4;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    nop

    return-void

    :catch_17
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling switchToProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
