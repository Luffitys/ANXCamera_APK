.class Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;
.super Ljava/lang/Object;
.source "ChooserActivityForCts.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChooserTargetServiceConnection"
.end annotation


# instance fields
.field private mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

.field private final mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

.field private mConnectedComponent:Landroid/content/ComponentName;

.field private final mLock:Ljava/lang/Object;

.field private mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/os/UserHandle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;-><init>(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivityForCts;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Landroid/os/UserHandle;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivityForCts"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    if-nez v1, :cond_27

    const-string v1, "ChooserActivityForCts"

    const-string v2, "destroyed ChooserTargetServiceConnection got onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_27
    invoke-static {p2}, Landroid/service/chooser/IChooserTargetService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/chooser/IChooserTargetService;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_6e

    :try_start_2b
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    invoke-interface {v1, v2, v3, v4}, Landroid/service/chooser/IChooserTargetService;->getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3e} :catch_3f
    .catchall {:try_start_2b .. :try_end_3e} :catchall_6e

    goto :goto_6c

    :catch_3f
    move-exception v2

    :try_start_40
    const-string v3, "ChooserActivityForCts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Querying ChooserTargetService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v3, p0}, Lcom/android/internal/app/ChooserActivityForCts;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;
    invoke-static {v3}, Lcom/android/internal/app/ChooserActivityForCts;->access$600(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->destroy()V

    :goto_6c
    monitor-exit v0

    return-void

    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_40 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivityForCts"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    if-nez v1, :cond_27

    const-string v1, "ChooserActivityForCts"

    const-string v2, "destroyed ChooserTargetServiceConnection got onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_27
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v1, p0}, Lcom/android/internal/app/ChooserActivityForCts;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivityForCts;->access$600(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivityForCts;->access$600(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivityForCts;->sendVoiceChoicesIfNeeded()V

    :cond_46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->destroy()V

    monitor-exit v0

    return-void

    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_1a .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooserTargetServiceConnection{service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_23
    const-string v1, "<connection destroyed>"

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
