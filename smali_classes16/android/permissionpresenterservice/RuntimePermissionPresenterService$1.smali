.class Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;
.super Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;
.source "RuntimePermissionPresenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;


# direct methods
.method constructor <init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)V
    .registers 2

    iput-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-direct {p0}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$getAppPermissions$0(Ljava/lang/Object;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    # invokes: Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    invoke-static {v0, p1, p2}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->access$100(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method


# virtual methods
.method public getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 6

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    # getter for: Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->access$000(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/permissionpresenterservice/-$$Lambda$RuntimePermissionPresenterService$1$hIxcH5_fyEVhEY0Z-wjDuhvJriA;->INSTANCE:Landroid/permissionpresenterservice/-$$Lambda$RuntimePermissionPresenterService$1$hIxcH5_fyEVhEY0Z-wjDuhvJriA;

    iget-object v2, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
