.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$MqYq3LpSVm-2tnlerpH7tgxg0Us;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$MqYq3LpSVm-2tnlerpH7tgxg0Us;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$MqYq3LpSVm-2tnlerpH7tgxg0Us;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, p1}, Landroid/permission/PermissionControllerManager;->lambda$notifyOneTimePermissionSessionTimeout$26(Ljava/lang/String;Landroid/permission/IPermissionController;)V

    return-void
.end method
