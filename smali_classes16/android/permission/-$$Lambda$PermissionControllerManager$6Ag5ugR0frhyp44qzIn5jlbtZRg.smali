.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$6Ag5ugR0frhyp44qzIn5jlbtZRg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;

.field public final synthetic f$1:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$6Ag5ugR0frhyp44qzIn5jlbtZRg;->f$0:Landroid/os/Handler;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$6Ag5ugR0frhyp44qzIn5jlbtZRg;->f$1:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$6Ag5ugR0frhyp44qzIn5jlbtZRg;->f$0:Landroid/os/Handler;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$6Ag5ugR0frhyp44qzIn5jlbtZRg;->f$1:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Landroid/permission/PermissionControllerManager;->lambda$getAppPermissions$15(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;Ljava/lang/Throwable;)V

    return-void
.end method
