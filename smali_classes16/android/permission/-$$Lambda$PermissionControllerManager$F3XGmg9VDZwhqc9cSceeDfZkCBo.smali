.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$F3XGmg9VDZwhqc9cSceeDfZkCBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$F3XGmg9VDZwhqc9cSceeDfZkCBo;->f$0:Ljava/util/List;

    iput p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$F3XGmg9VDZwhqc9cSceeDfZkCBo;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$F3XGmg9VDZwhqc9cSceeDfZkCBo;->f$0:Ljava/util/List;

    iget v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$F3XGmg9VDZwhqc9cSceeDfZkCBo;->f$1:I

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, p1}, Landroid/permission/PermissionControllerManager;->lambda$countPermissionApps$17(Ljava/util/List;ILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
