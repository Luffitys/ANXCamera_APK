.class public interface abstract Lcom/android/server/usage/AppStandbyInternal;
.super Ljava/lang/Object;
.source "AppStandbyInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    }
.end annotation


# direct methods
.method public static newAppStandbyController(Ljava/lang/ClassLoader;Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/usage/AppStandbyInternal;
    .registers 9

    :try_start_0
    const-string v0, "com.android.server.usage.AppStandbyController"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Looper;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_23} :catch_24
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_23} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_23} :catch_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v1

    :catch_24
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to instantiate AppStandbyController!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract addActiveDeviceAdmin(Ljava/lang/String;I)V
.end method

.method public abstract addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
.end method

.method public abstract clearCarrierPrivilegedApps()V
.end method

.method public abstract dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpUsers(Lcom/android/internal/util/IndentingPrintWriter;[ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract flushToDisk()V
.end method

.method public abstract getAppId(Ljava/lang/String;)I
.end method

.method public abstract getAppStandbyBucket(Ljava/lang/String;IJZ)I
.end method

.method public abstract getAppStandbyBuckets(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIdleUidsForUser(I)[I
.end method

.method public abstract getTimeSinceLastJobRun(Ljava/lang/String;I)J
.end method

.method public abstract initializeDefaultsForSystemApps(I)V
.end method

.method public abstract isAppIdleEnabled()Z
.end method

.method public abstract isAppIdleFiltered(Ljava/lang/String;IIJ)Z
.end method

.method public abstract isAppIdleFiltered(Ljava/lang/String;IJZ)Z
.end method

.method public abstract isInParole()Z
.end method

.method public abstract onAdminDataAvailable()V
.end method

.method public abstract onBootPhase(I)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract postCheckIdleStates(I)V
.end method

.method public abstract postOneTimeCheckIdleStates()V
.end method

.method public abstract postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract postReportExemptedSyncStart(Ljava/lang/String;I)V
.end method

.method public abstract postReportSyncScheduled(Ljava/lang/String;IZ)V
.end method

.method public abstract removeListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
.end method

.method public abstract reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
.end method

.method public abstract restrictApp(Ljava/lang/String;II)V
.end method

.method public abstract setActiveAdminApps(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setAppIdleAsync(Ljava/lang/String;ZI)V
.end method

.method public abstract setAppStandbyBucket(Ljava/lang/String;IIII)V
.end method

.method public abstract setAppStandbyBuckets(Ljava/util/List;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;III)V"
        }
    .end annotation
.end method

.method public abstract setLastJobRunTime(Ljava/lang/String;IJ)V
.end method
