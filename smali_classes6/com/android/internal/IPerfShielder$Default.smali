.class public Lcom/android/internal/app/IPerfShielder$Default;
.super Ljava/lang/Object;
.source "IPerfShielder.java"

# interfaces
.implements Lcom/android/internal/app/IPerfShielder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IPerfShielder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V
    .registers 6
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "tid"    # I
    .param p4, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public abortSpecificScenario(Landroid/os/Bundle;IJ)V
    .registers 5
    .param p1, "scenarioBundle"    # Landroid/os/Bundle;
    .param p2, "tid"    # I
    .param p3, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZZ)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "launchStartTime"    # J
    .param p5, "launchEndTime"    # J
    .param p7, "fromHome"    # Z
    .param p8, "isColdStart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public addCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "hostApp"    # Ljava/lang/String;
    .param p2, "originCallingPkg"    # Ljava/lang/String;
    .param p3, "hookCallingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public addTimeConsumingIntent([Ljava/lang/String;)V
    .registers 2
    .param p1, "actions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;
    .registers 10
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p5, "tid"    # I
    .param p6, "uptimeMillis"    # J
    .param p8, "needResultBundle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearTimeConsumingIntent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public closeCheckPriority()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public deleteFilterInfo(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public deletePackageInfo(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public deleteRedirectRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .registers 7
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p4, "tid"    # I
    .param p5, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .registers 6
    .param p1, "scenarioBundle"    # Landroid/os/Bundle;
    .param p2, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p3, "tid"    # I
    .param p4, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public getAllRunningProcessMemInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFreeMemory()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMemoryTrimLevel()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 3
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertFilterInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    .local p4, "filterInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public insertPackageInfo(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p1, "pInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public insertRedirectRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .param p3, "redirectPkgname"    # Ljava/lang/String;
    .param p4, "clsNameMap"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public killUnusedApp(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public removeCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "hostApp"    # Ljava/lang/String;
    .param p2, "originCallingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .registers 3
    .param p1, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p2, "inBlacklist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public removeTimeConsumingIntent([Ljava/lang/String;)V
    .registers 2
    .param p1, "actions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public reportAnr(ILjava/lang/String;JJLjava/lang/String;)V
    .registers 8
    .param p1, "callingPid"    # I
    .param p2, "windowName"    # Ljava/lang/String;
    .param p3, "totalDuration"    # J
    .param p5, "endTs"    # J
    .param p7, "cpuInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public reportExcessiveCpuUsageRecords(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    return-void
.end method

.method public reportNotificationClick(Ljava/lang/String;Landroid/content/Intent;J)V
    .registers 5
    .param p1, "postPackage"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJIJ)V
    .registers 13
    .param p1, "callingPid"    # I
    .param p2, "renderThreadTid"    # I
    .param p3, "windowName"    # Ljava/lang/String;
    .param p4, "totalDuration"    # J
    .param p6, "maxFrameDuration"    # J
    .param p8, "endTs"    # J
    .param p10, "selfCause"    # I
    .param p11, "num_frames"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public reportProcessCleanEvent(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "info"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    return-void
.end method

.method public resolveQuickAppInfos(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/QuickAppResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public setForkedProcessGroup(IIILjava/lang/String;)V
    .registers 5
    .param p1, "puid"    # I
    .param p2, "ppid"    # I
    .param p3, "group"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public setHapLinks(Ljava/util/Map;Landroid/content/pm/ActivityInfo;)V
    .registers 3
    .param p1, "data"    # Ljava/util/Map;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    return-void
.end method

.method public setMiuiBroadcastDispatchEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public setMiuiContentProviderControl(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public setSchedFgPid(I)V
    .registers 2
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public setServicePriority(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    return-void
.end method

.method public setServicePriorityWithNoProc(Ljava/util/List;J)V
    .registers 4
    .param p2, "noProcDelayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    return-void
.end method

.method public updateProcessFullMemInfoByPids([I)Ljava/util/List;
    .registers 3
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateProcessPartialMemInfoByPids([I)Ljava/util/List;
    .registers 3
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method
