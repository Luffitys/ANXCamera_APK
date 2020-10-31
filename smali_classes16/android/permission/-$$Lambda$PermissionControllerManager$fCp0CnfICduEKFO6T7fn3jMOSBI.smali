.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$fCp0CnfICduEKFO6T7fn3jMOSBI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$fCp0CnfICduEKFO6T7fn3jMOSBI;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$fCp0CnfICduEKFO6T7fn3jMOSBI;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$fCp0CnfICduEKFO6T7fn3jMOSBI;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$fCp0CnfICduEKFO6T7fn3jMOSBI;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, p1}, Landroid/permission/PermissionControllerManager;->lambda$revokeRuntimePermission$16(Ljava/lang/String;Ljava/lang/String;Landroid/permission/IPermissionController;)V

    return-void
.end method
