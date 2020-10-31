.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerManager$lBbpGLk6PhAvXOnY5bjXhdddZ6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$lBbpGLk6PhAvXOnY5bjXhdddZ6Q;->f$0:Ljava/lang/String;

    iput p2, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$lBbpGLk6PhAvXOnY5bjXhdddZ6Q;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$lBbpGLk6PhAvXOnY5bjXhdddZ6Q;->f$0:Ljava/lang/String;

    iget v1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$lBbpGLk6PhAvXOnY5bjXhdddZ6Q;->f$1:I

    check-cast p1, Landroid/app/role/IRoleController;

    invoke-static {v0, v1, p1}, Landroid/app/role/RoleControllerManager;->lambda$onClearRoleHolders$3(Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
