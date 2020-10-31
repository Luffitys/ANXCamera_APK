.class Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;
.super Landroid/app/role/IOnRoleHoldersChangedListener$Stub;
.source "RoleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/role/RoleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnRoleHoldersChangedListenerDelegate"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Landroid/app/role/OnRoleHoldersChangedListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/role/IOnRoleHoldersChangedListener$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;->mListener:Landroid/app/role/OnRoleHoldersChangedListener;

    return-void
.end method


# virtual methods
.method public onRoleHoldersChanged(Ljava/lang/String;I)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v3, Landroid/app/role/-$$Lambda$o94o2jK_ei-IVw-3oY_QJ49zpAA;->INSTANCE:Landroid/app/role/-$$Lambda$o94o2jK_ei-IVw-3oY_QJ49zpAA;

    iget-object v4, p0, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;->mListener:Landroid/app/role/OnRoleHoldersChangedListener;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v3, v4, p1, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
