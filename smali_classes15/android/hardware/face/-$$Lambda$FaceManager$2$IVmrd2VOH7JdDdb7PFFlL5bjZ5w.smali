.class public final synthetic Landroid/hardware/face/-$$Lambda$FaceManager$2$IVmrd2VOH7JdDdb7PFFlL5bjZ5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/face/FaceManager$LockoutResetCallback;

.field public final synthetic f$1:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/face/FaceManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/-$$Lambda$FaceManager$2$IVmrd2VOH7JdDdb7PFFlL5bjZ5w;->f$0:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    iput-object p2, p0, Landroid/hardware/face/-$$Lambda$FaceManager$2$IVmrd2VOH7JdDdb7PFFlL5bjZ5w;->f$1:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/face/-$$Lambda$FaceManager$2$IVmrd2VOH7JdDdb7PFFlL5bjZ5w;->f$0:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    iget-object v1, p0, Landroid/hardware/face/-$$Lambda$FaceManager$2$IVmrd2VOH7JdDdb7PFFlL5bjZ5w;->f$1:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1}, Landroid/hardware/face/FaceManager$2;->lambda$onLockoutReset$0(Landroid/hardware/face/FaceManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method
