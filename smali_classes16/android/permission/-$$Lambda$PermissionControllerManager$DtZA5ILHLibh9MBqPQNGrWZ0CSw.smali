.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$DtZA5ILHLibh9MBqPQNGrWZ0CSw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Landroid/os/UserHandle;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$DtZA5ILHLibh9MBqPQNGrWZ0CSw;->f$0:Landroid/os/UserHandle;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$DtZA5ILHLibh9MBqPQNGrWZ0CSw;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$DtZA5ILHLibh9MBqPQNGrWZ0CSw;->f$0:Landroid/os/UserHandle;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$DtZA5ILHLibh9MBqPQNGrWZ0CSw;->f$1:[B

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, p1}, Landroid/permission/PermissionControllerManager;->lambda$stageAndApplyRuntimePermissionsBackup$8(Landroid/os/UserHandle;[BLandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
