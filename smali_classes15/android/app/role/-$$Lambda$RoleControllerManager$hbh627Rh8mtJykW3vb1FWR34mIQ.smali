.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerManager$hbh627Rh8mtJykW3vb1FWR34mIQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$hbh627Rh8mtJykW3vb1FWR34mIQ;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$hbh627Rh8mtJykW3vb1FWR34mIQ;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$hbh627Rh8mtJykW3vb1FWR34mIQ;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$hbh627Rh8mtJykW3vb1FWR34mIQ;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$hbh627Rh8mtJykW3vb1FWR34mIQ;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$hbh627Rh8mtJykW3vb1FWR34mIQ;->f$2:Ljava/util/function/Consumer;

    check-cast p1, Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/app/role/RoleControllerManager;->lambda$propagateCallback$8(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/function/Consumer;Landroid/os/Bundle;Ljava/lang/Throwable;)V

    return-void
.end method
