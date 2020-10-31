.class Landroid/app/AppOpsManager$1;
.super Landroid/app/AppOpsManager$OnOpNotedCallback;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpNotedCallback;-><init>()V

    return-void
.end method

.method private reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V
    .registers 7

    # invokes: Landroid/app/AppOpsManager;->isCollectingStackTraces()Z
    invoke-static {}, Landroid/app/AppOpsManager;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    # getter for: Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;
    invoke-static {}, Landroid/app/AppOpsManager;->access$100()Lcom/android/internal/app/MessageSamplingConfig;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getSampledOpCode()I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getAcceptableLeftDistance()I

    move-result v2

    if-le v1, v2, :cond_2f

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getExpirationTimeSinceBootMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4e

    :cond_2f
    # invokes: Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;
    invoke-static {}, Landroid/app/AppOpsManager;->access$200()Ljava/lang/String;

    move-result-object v1

    :try_start_33
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/app/AppOpsManager;->getService()Lcom/android/internal/app/IAppOpsService;
    invoke-static {}, Landroid/app/AppOpsManager;->access$300()Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    if-nez v2, :cond_40

    const-string v4, ""

    goto :goto_41

    :cond_40
    move-object v4, v2

    :goto_41
    invoke-interface {v3, v4, p1, v1}, Lcom/android/internal/app/IAppOpsService;->reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;

    move-result-object v3

    # setter for: Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;
    invoke-static {v3}, Landroid/app/AppOpsManager;->access$102(Lcom/android/internal/app/MessageSamplingConfig;)Lcom/android/internal/app/MessageSamplingConfig;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_48} :catch_4a

    nop

    goto :goto_4e

    :catch_4a
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_4e
    :goto_4e
    return-void
.end method


# virtual methods
.method public onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V
    .registers 2

    return-void
.end method

.method public onNoted(Landroid/app/SyncNotedAppOp;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$1;->reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V

    return-void
.end method

.method public onSelfNoted(Landroid/app/SyncNotedAppOp;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$1;->reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V

    return-void
.end method
