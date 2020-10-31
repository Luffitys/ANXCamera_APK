.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$2gyb4miANgsuR_Cn3HPTnP6sL54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$2gyb4miANgsuR_Cn3HPTnP6sL54;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$2gyb4miANgsuR_Cn3HPTnP6sL54;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$2gyb4miANgsuR_Cn3HPTnP6sL54;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$2gyb4miANgsuR_Cn3HPTnP6sL54;->f$1:Landroid/os/UserHandle;

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, p1}, Landroid/permission/PermissionControllerManager;->lambda$applyStagedRuntimePermissionBackup$10(Ljava/lang/String;Landroid/os/UserHandle;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
