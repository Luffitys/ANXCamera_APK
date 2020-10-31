.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerManager$VsbRaGFueP4e1AEVbN4zwbUmdZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$VsbRaGFueP4e1AEVbN4zwbUmdZU;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$VsbRaGFueP4e1AEVbN4zwbUmdZU;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/app/role/IRoleController;

    invoke-static {v0, p1}, Landroid/app/role/RoleControllerManager;->lambda$isRoleVisible$6(Ljava/lang/String;Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
