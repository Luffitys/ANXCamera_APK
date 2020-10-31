.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$ESMSOXHMTX1zwjBZlBwmbWKWJso;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$ESMSOXHMTX1zwjBZlBwmbWKWJso;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$ESMSOXHMTX1zwjBZlBwmbWKWJso;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$ESMSOXHMTX1zwjBZlBwmbWKWJso;->f$2:Ljava/lang/String;

    iput p4, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$ESMSOXHMTX1zwjBZlBwmbWKWJso;->f$3:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$ESMSOXHMTX1zwjBZlBwmbWKWJso;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$ESMSOXHMTX1zwjBZlBwmbWKWJso;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$ESMSOXHMTX1zwjBZlBwmbWKWJso;->f$2:Ljava/lang/String;

    iget v3, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$ESMSOXHMTX1zwjBZlBwmbWKWJso;->f$3:I

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/permission/PermissionControllerManager;->lambda$setRuntimePermissionGrantStateByDeviceAdmin$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
