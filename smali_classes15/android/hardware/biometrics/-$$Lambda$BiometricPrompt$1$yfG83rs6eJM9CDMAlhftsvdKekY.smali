.class public final synthetic Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$yfG83rs6eJM9CDMAlhftsvdKekY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$yfG83rs6eJM9CDMAlhftsvdKekY;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    iput p2, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$yfG83rs6eJM9CDMAlhftsvdKekY;->f$1:I

    iput-object p3, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$yfG83rs6eJM9CDMAlhftsvdKekY;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$yfG83rs6eJM9CDMAlhftsvdKekY;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    iget v1, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$yfG83rs6eJM9CDMAlhftsvdKekY;->f$1:I

    iget-object v2, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$yfG83rs6eJM9CDMAlhftsvdKekY;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onAcquired$3$BiometricPrompt$1(ILjava/lang/String;)V

    return-void
.end method
