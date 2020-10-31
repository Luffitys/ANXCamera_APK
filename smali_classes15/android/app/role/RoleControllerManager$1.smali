.class Landroid/app/role/RoleControllerManager$1;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RoleControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/role/RoleControllerManager;-><init>(Landroid/content/ComponentName;Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/app/role/IRoleController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/role/RoleControllerManager;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/role/RoleControllerManager;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V
    .registers 14

    iput-object p1, p0, Landroid/app/role/RoleControllerManager$1;->this$0:Landroid/app/role/RoleControllerManager;

    iput-object p7, p0, Landroid/app/role/RoleControllerManager$1;->val$handler:Landroid/os/Handler;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method protected getJobHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/app/role/RoleControllerManager$1;->val$handler:Landroid/os/Handler;

    return-object v0
.end method
