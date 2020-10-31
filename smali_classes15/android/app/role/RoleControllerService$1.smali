.class Landroid/app/role/RoleControllerService$1;
.super Landroid/app/role/IRoleController$Stub;
.source "RoleControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/role/RoleControllerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/role/RoleControllerService;


# direct methods
.method constructor <init>(Landroid/app/role/RoleControllerService;)V
    .registers 2

    iput-object p1, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-direct {p0}, Landroid/app/role/IRoleController$Stub;-><init>()V

    return-void
.end method

.method private enforceCallerSystemUid(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only the system process can call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$grantDefaultRoles$0(Ljava/lang/Object;Landroid/os/RemoteCallback;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/app/role/RoleControllerService;

    # invokes: Landroid/app/role/RoleControllerService;->grantDefaultRoles(Landroid/os/RemoteCallback;)V
    invoke-static {v0, p1}, Landroid/app/role/RoleControllerService;->access$400(Landroid/app/role/RoleControllerService;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic lambda$onAddRoleHolder$1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 6

    move-object v0, p0

    check-cast v0, Landroid/app/role/RoleControllerService;

    # invokes: Landroid/app/role/RoleControllerService;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    invoke-static {v0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerService;->access$300(Landroid/app/role/RoleControllerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic lambda$onClearRoleHolders$3(Ljava/lang/Object;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 5

    move-object v0, p0

    check-cast v0, Landroid/app/role/RoleControllerService;

    # invokes: Landroid/app/role/RoleControllerService;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    invoke-static {v0, p1, p2, p3}, Landroid/app/role/RoleControllerService;->access$100(Landroid/app/role/RoleControllerService;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic lambda$onRemoveRoleHolder$2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 6

    move-object v0, p0

    check-cast v0, Landroid/app/role/RoleControllerService;

    # invokes: Landroid/app/role/RoleControllerService;->onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    invoke-static {v0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerService;->access$200(Landroid/app/role/RoleControllerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method


# virtual methods
.method public grantDefaultRoles(Landroid/os/RemoteCallback;)V
    .registers 5

    const-string v0, "grantDefaultRoles"

    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerService$1;->enforceCallerSystemUid(Ljava/lang/String;)V

    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    # getter for: Landroid/app/role/RoleControllerService;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/app/role/RoleControllerService;->access$000(Landroid/app/role/RoleControllerService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/app/role/-$$Lambda$RoleControllerService$1$-fmj7uDKaG3BoLl6bhtrA675gRI;->INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$-fmj7uDKaG3BoLl6bhtrA675gRI;

    iget-object v2, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7

    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    const-string v1, "android.permission.MANAGE_ROLE_HOLDERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleControllerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleControllerService;->onIsApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_23
    invoke-virtual {p3, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7

    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    const-string v1, "android.permission.MANAGE_ROLE_HOLDERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleControllerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleControllerService;->onIsApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_23
    invoke-virtual {p3, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public isRoleVisible(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    const-string v1, "android.permission.MANAGE_ROLE_HOLDERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleControllerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-virtual {v0, p1}, Landroid/app/role/RoleControllerService;->onIsRoleVisible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_1d
    invoke-virtual {p2, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 12

    const-string v0, "onAddRoleHolder"

    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerService$1;->enforceCallerSystemUid(Ljava/lang/String;)V

    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    # getter for: Landroid/app/role/RoleControllerService;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/app/role/RoleControllerService;->access$000(Landroid/app/role/RoleControllerService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/app/role/-$$Lambda$RoleControllerService$1$UVI1sAWAcBnt3Enqn2IT-Lirwtk;->INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$UVI1sAWAcBnt3Enqn2IT-Lirwtk;

    iget-object v2, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 8

    const-string v0, "onClearRoleHolders"

    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerService$1;->enforceCallerSystemUid(Ljava/lang/String;)V

    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    # getter for: Landroid/app/role/RoleControllerService;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/app/role/RoleControllerService;->access$000(Landroid/app/role/RoleControllerService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/app/role/-$$Lambda$RoleControllerService$1$dBm1t_MGyEA9yMAxoOUMOhYVmPo;->INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$dBm1t_MGyEA9yMAxoOUMOhYVmPo;

    iget-object v2, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, p1, v3, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 12

    const-string v0, "onRemoveRoleHolder"

    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerService$1;->enforceCallerSystemUid(Ljava/lang/String;)V

    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    # getter for: Landroid/app/role/RoleControllerService;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/app/role/RoleControllerService;->access$000(Landroid/app/role/RoleControllerService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/app/role/-$$Lambda$RoleControllerService$1$PB6H1df6VvLzUJ3hhB_75mN3u7s;->INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$PB6H1df6VvLzUJ3hhB_75mN3u7s;

    iget-object v2, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
