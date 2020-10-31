.class Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;
.super Landroid/service/chooser/IChooserTargetResult$Stub;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->access$2300(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->access$2400(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivityForCts;

    move-result-object v1

    if-nez v1, :cond_32

    const-string v1, "ChooserActivityForCts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyed ChooserTargetServiceConnection received result from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->access$2500(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_32
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->access$2400(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivityForCts;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->access$2600(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->access$2400(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivityForCts;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-static {v3}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->access$2700(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, p1}, Lcom/android/internal/app/ChooserActivityForCts;->filterServiceTargets(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-static {v4}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->access$2700(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->access$2600(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v3, v4, p1, v5, v6}, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;Landroid/os/UserHandle;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivityForCts;
    invoke-static {v3}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->access$2400(Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivityForCts;

    move-result-object v3

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mChooserHandler:Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;
    invoke-static {v3}, Lcom/android/internal/app/ChooserActivityForCts;->access$2800(Lcom/android/internal/app/ChooserActivityForCts;)Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    nop

    monitor-exit v0

    return-void

    :catchall_86
    move-exception v1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_7 .. :try_end_88} :catchall_86

    throw v1
.end method
