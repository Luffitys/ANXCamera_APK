.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerManager$mCMKfoPdye0sMu6efs963HCR1Xk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/function/Consumer;

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$mCMKfoPdye0sMu6efs963HCR1Xk;->f$0:Ljava/lang/Throwable;

    iput-object p2, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$mCMKfoPdye0sMu6efs963HCR1Xk;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$mCMKfoPdye0sMu6efs963HCR1Xk;->f$2:Ljava/util/function/Consumer;

    iput-object p4, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$mCMKfoPdye0sMu6efs963HCR1Xk;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$mCMKfoPdye0sMu6efs963HCR1Xk;->f$0:Ljava/lang/Throwable;

    iget-object v1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$mCMKfoPdye0sMu6efs963HCR1Xk;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$mCMKfoPdye0sMu6efs963HCR1Xk;->f$2:Ljava/util/function/Consumer;

    iget-object v3, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$mCMKfoPdye0sMu6efs963HCR1Xk;->f$3:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Landroid/app/role/RoleControllerManager;->lambda$propagateCallback$7(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
