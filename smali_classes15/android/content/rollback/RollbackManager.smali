.class public final Landroid/content/rollback/RollbackManager;
.super Ljava/lang/Object;
.source "RollbackManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/rollback/RollbackManager$Status;
    }
.end annotation


# static fields
.field public static final EXTRA_STATUS:Ljava/lang/String; = "android.content.rollback.extra.STATUS"

.field public static final EXTRA_STATUS_MESSAGE:Ljava/lang/String; = "android.content.rollback.extra.STATUS_MESSAGE"

.field public static final PROPERTY_ROLLBACK_LIFETIME_MILLIS:Ljava/lang/String; = "rollback_lifetime_in_millis"

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_FAILURE_INSTALL:I = 0x3

.field public static final STATUS_FAILURE_ROLLBACK_UNAVAILABLE:I = 0x2

.field public static final STATUS_SUCCESS:I


# instance fields
.field private final mBinder:Landroid/content/rollback/IRollbackManager;

.field private final mCallerPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/rollback/IRollbackManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/rollback/RollbackManager;->mCallerPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    return-void
.end method


# virtual methods
.method public blockRollbackManager(J)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {v0, p1, p2}, Landroid/content/rollback/IRollbackManager;->blockRollbackManager(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Landroid/content/rollback/RollbackManager;->mCallerPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2, p3}, Landroid/content/rollback/IRollbackManager;->commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public expireRollbackForPackage(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {v0, p1}, Landroid/content/rollback/IRollbackManager;->expireRollbackForPackage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAvailableRollbacks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {v0}, Landroid/content/rollback/IRollbackManager;->getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRecentlyCommittedRollbacks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {v0}, Landroid/content/rollback/IRollbackManager;->getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reloadPersistedData()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {v0}, Landroid/content/rollback/IRollbackManager;->reloadPersistedData()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
