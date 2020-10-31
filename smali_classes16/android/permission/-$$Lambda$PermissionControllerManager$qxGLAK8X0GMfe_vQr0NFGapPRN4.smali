.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$qxGLAK8X0GMfe_vQr0NFGapPRN4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(ZJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$qxGLAK8X0GMfe_vQr0NFGapPRN4;->f$0:Z

    iput-wide p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$qxGLAK8X0GMfe_vQr0NFGapPRN4;->f$1:J

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-boolean v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$qxGLAK8X0GMfe_vQr0NFGapPRN4;->f$0:Z

    iget-wide v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$qxGLAK8X0GMfe_vQr0NFGapPRN4;->f$1:J

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, v2, p1}, Landroid/permission/PermissionControllerManager;->lambda$getPermissionUsages$20(ZJLandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
