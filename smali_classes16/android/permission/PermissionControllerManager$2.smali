.class Landroid/permission/PermissionControllerManager$2;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "PermissionControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/permission/PermissionControllerManager;->notifyOneTimeSessionTimeout(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/permission/IPermissionController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/permission/PermissionControllerManager;


# direct methods
.method constructor <init>(Landroid/permission/PermissionControllerManager;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V
    .registers 13

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$2;->this$0:Landroid/permission/PermissionControllerManager;

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
.method protected getAutoDisconnectTimeoutMs()J
    .registers 3

    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method protected getJobHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$2;->this$0:Landroid/permission/PermissionControllerManager;

    # getter for: Landroid/permission/PermissionControllerManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/permission/PermissionControllerManager;->access$000(Landroid/permission/PermissionControllerManager;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestTimeoutMs()J
    .registers 3

    const-wide/32 v0, 0xea60

    return-wide v0
.end method
