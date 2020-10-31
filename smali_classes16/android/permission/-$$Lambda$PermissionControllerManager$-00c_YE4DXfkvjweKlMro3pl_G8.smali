.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$-00c_YE4DXfkvjweKlMro3pl_G8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Landroid/permission/PermissionControllerManager;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager;Ljava/util/Map;ZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$-00c_YE4DXfkvjweKlMro3pl_G8;->f$0:Landroid/permission/PermissionControllerManager;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$-00c_YE4DXfkvjweKlMro3pl_G8;->f$1:Ljava/util/Map;

    iput-boolean p3, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$-00c_YE4DXfkvjweKlMro3pl_G8;->f$2:Z

    iput p4, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$-00c_YE4DXfkvjweKlMro3pl_G8;->f$3:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$-00c_YE4DXfkvjweKlMro3pl_G8;->f$0:Landroid/permission/PermissionControllerManager;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$-00c_YE4DXfkvjweKlMro3pl_G8;->f$1:Ljava/util/Map;

    iget-boolean v2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$-00c_YE4DXfkvjweKlMro3pl_G8;->f$2:Z

    iget v3, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$-00c_YE4DXfkvjweKlMro3pl_G8;->f$3:I

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/permission/PermissionControllerManager;->lambda$revokeRuntimePermissions$0$PermissionControllerManager(Ljava/util/Map;ZILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
