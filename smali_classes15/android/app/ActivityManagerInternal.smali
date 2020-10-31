.class public abstract Landroid/app/ActivityManagerInternal;
.super Ljava/lang/Object;
.source "ActivityManagerInternal.java"


# static fields
.field public static final ALLOW_ALL_PROFILE_PERMISSIONS_IN_PROFILE:I = 0x3

.field public static final ALLOW_FULL_ONLY:I = 0x2

.field public static final ALLOW_NON_FULL:I = 0x0

.field public static final ALLOW_NON_FULL_IN_PROFILE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addPendingTopUid(II)V
.end method

.method public abstract broadcastCloseSystemDialogs(Ljava/lang/String;)V
.end method

.method public abstract broadcastGlobalConfigurationChanged(IZ)V
.end method

.method public abstract broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[I)I
.end method

.method public abstract broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I
.end method

.method public abstract canStartMoreUsers()Z
.end method

.method public abstract checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract checkContentProviderUriPermission(Landroid/net/Uri;III)I
.end method

.method public abstract cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
.end method

.method public abstract clearPendingBackup(I)V
.end method

.method public abstract clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
.end method

.method public abstract deletePendingTopUid(I)V
.end method

.method public abstract disconnectActivityFromServices(Ljava/lang/Object;)V
.end method

.method public abstract enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ensureBootCompleted()V
.end method

.method public abstract ensureNotSpecialUser(I)V
.end method

.method public abstract finishBooting()V
.end method

.method public abstract finishUserSwitch(Ljava/lang/Object;)V
.end method

.method public abstract forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;
.end method

.method public abstract getCurrentProfileIds()[I
.end method

.method public abstract getCurrentUser()Landroid/content/pm/UserInfo;
.end method

.method public abstract getCurrentUserId()I
.end method

.method public abstract getMaxRunningUsers()I
.end method

.method public abstract getMemoryStateForProcesses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStorageMountMode(II)I
.end method

.method public abstract getTaskIdForActivity(Landroid/os/IBinder;Z)I
.end method

.method public abstract getUidProcessState(I)I
.end method

.method public abstract handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract hasRunningActivity(ILjava/lang/String;)Z
.end method

.method public abstract hasRunningForegroundService(II)Z
.end method

.method public abstract hasStartedUserState(I)Z
.end method

.method public abstract inputDispatchingTimedOut(IZLjava/lang/String;)J
.end method

.method public abstract inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z
.end method

.method public abstract isActivityStartsLoggingEnabled()Z
.end method

.method public abstract isAppBad(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method public abstract isAppForeground(I)Z
.end method

.method public abstract isBackgroundActivityStartsEnabled()Z
.end method

.method public abstract isBooted()Z
.end method

.method public abstract isBooting()Z
.end method

.method public abstract isCurrentProfile(I)Z
.end method

.method public abstract isDeviceOwner(I)Z
.end method

.method public abstract isPendingTopUid(I)Z
.end method

.method public abstract isProcessWaitingToUse(I)Z
.end method

.method public abstract isRuntimeRestarted()Z
.end method

.method public abstract isSystemReady()Z
.end method

.method public abstract isUidActive(I)Z
.end method

.method public abstract isUidCurrentlyInstrumented(I)Z
.end method

.method public abstract isUserRunning(II)Z
.end method

.method public abstract killAllBackgroundProcessesExcept(II)V
.end method

.method public abstract killForegroundAppsForUser(I)V
.end method

.method public abstract killProcess(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract killProcessesForRemovedTask(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract monitor()V
.end method

.method public abstract notifyNetworkPolicyRulesUpdated(IJ)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract onWakefulnessChanged(I)V
.end method

.method public abstract prepareForPossibleShutdown()V
.end method

.method public abstract registerProcessObserver(Landroid/app/IProcessObserver;)V
.end method

.method public abstract reportCurKeyguardUsageEvent(Z)V
.end method

.method public abstract scheduleAppGcs()V
.end method

.method public abstract sendForegroundProfileChanged(I)V
.end method

.method public abstract setBooted(Z)V
.end method

.method public abstract setBooting(Z)V
.end method

.method public abstract setCastPid(ILjava/lang/String;I)V
.end method

.method public abstract setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
.end method

.method public abstract setDeviceIdleWhitelist([I[I)V
.end method

.method public abstract setDeviceOwnerUid(I)V
.end method

.method public abstract setHasOverlayUi(IZ)V
.end method

.method public abstract setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V
.end method

.method public abstract setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V
.end method

.method public abstract setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
.end method

.method public abstract setSwitchingToSystemUserMessage(Ljava/lang/String;)V
.end method

.method public abstract shouldConfirmCredentials(I)Z
.end method

.method public abstract startActivityAsUserEmpty(Landroid/os/Bundle;)I
.end method

.method public abstract startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z
.end method

.method public abstract startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;)V
.end method

.method public abstract startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
.end method

.method public abstract startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation
.end method

.method public abstract tempWhitelistForPendingIntent(IIIJLjava/lang/String;)V
.end method

.method public abstract trimApplications()V
.end method

.method public abstract unregisterProcessObserver(Landroid/app/IProcessObserver;)V
.end method

.method public abstract updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V
.end method

.method public abstract updateBatteryStats(Landroid/content/ComponentName;IIZ)V
.end method

.method public abstract updateCpuStats()V
.end method

.method public abstract updateDeviceIdleTempWhitelist([IIZ)V
.end method

.method public abstract updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
.end method

.method public abstract updateOomAdj()V
.end method

.method public abstract updateOomLevelsForDisplay(I)V
.end method
