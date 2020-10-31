.class public final synthetic Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$bOZpfrHjTYn0bHysdnjuVXTbZSk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricPrompt$1;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$bOZpfrHjTYn0bHysdnjuVXTbZSk;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    iput p2, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$bOZpfrHjTYn0bHysdnjuVXTbZSk;->f$1:I

    iput p3, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$bOZpfrHjTYn0bHysdnjuVXTbZSk;->f$2:I

    iput p4, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$bOZpfrHjTYn0bHysdnjuVXTbZSk;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$bOZpfrHjTYn0bHysdnjuVXTbZSk;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    iget v1, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$bOZpfrHjTYn0bHysdnjuVXTbZSk;->f$1:I

    iget v2, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$bOZpfrHjTYn0bHysdnjuVXTbZSk;->f$2:I

    iget v3, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$bOZpfrHjTYn0bHysdnjuVXTbZSk;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onError$2$BiometricPrompt$1(III)V

    return-void
.end method
