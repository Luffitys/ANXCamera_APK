.class public final synthetic Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$4i3tUU8mafgvA9HaB2UPD31L6UY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field public final synthetic f$1:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$4i3tUU8mafgvA9HaB2UPD31L6UY;->f$0:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    iput-object p2, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$4i3tUU8mafgvA9HaB2UPD31L6UY;->f$1:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$4i3tUU8mafgvA9HaB2UPD31L6UY;->f$0:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    iget-object v1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$4i3tUU8mafgvA9HaB2UPD31L6UY;->f$1:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$1;->lambda$onLockoutReset$0(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method
