.class public abstract Lcom/android/internal/widget/LockSettingsInternal;
.super Ljava/lang/Object;
.source "LockSettingsInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
.end method

.method public abstract armRebootEscrow()Z
.end method

.method public abstract clearRebootEscrow()V
.end method

.method public abstract getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
.end method

.method public abstract isEscrowTokenActive(JI)Z
.end method

.method public abstract prepareRebootEscrow()V
.end method

.method public abstract refreshStrongAuthTimeout(I)V
.end method

.method public abstract removeEscrowToken(JI)Z
.end method

.method public abstract setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
.end method

.method public abstract setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
.end method

.method public abstract unlockUserWithToken(J[BI)Z
.end method
