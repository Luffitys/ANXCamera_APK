.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerManager$GiyGeOpnMIVwipW_81KV8TogKt8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$GiyGeOpnMIVwipW_81KV8TogKt8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$GiyGeOpnMIVwipW_81KV8TogKt8;->f$1:Ljava/lang/String;

    iput p3, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$GiyGeOpnMIVwipW_81KV8TogKt8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$GiyGeOpnMIVwipW_81KV8TogKt8;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$GiyGeOpnMIVwipW_81KV8TogKt8;->f$1:Ljava/lang/String;

    iget v2, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$GiyGeOpnMIVwipW_81KV8TogKt8;->f$2:I

    check-cast p1, Landroid/app/role/IRoleController;

    invoke-static {v0, v1, v2, p1}, Landroid/app/role/RoleControllerManager;->lambda$onAddRoleHolder$1(Ljava/lang/String;Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
