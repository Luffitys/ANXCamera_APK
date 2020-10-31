.class Landroid/hardware/biometrics/BiometricPrompt$1;
.super Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/biometrics/BiometricPrompt;


# direct methods
.method constructor <init>(Landroid/hardware/biometrics/BiometricPrompt;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAcquired$3$BiometricPrompt$1(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$500(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationFailed$1$BiometricPrompt$1()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$500(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public synthetic lambda$onAuthenticationSucceeded$0$BiometricPrompt$1(I)V
    .registers 4

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->access$700(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;-><init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;I)V

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->access$500(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method public synthetic lambda$onDialogDismissed$4$BiometricPrompt$1()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$300(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onDialogDismissed$5$BiometricPrompt$1()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$400(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onError$2$BiometricPrompt$1(III)V
    .registers 6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    const/16 v0, 0x8

    if-eq p1, v0, :cond_a

    const-string v0, ""

    goto :goto_20

    :cond_a
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$600(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_15
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$600(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_20
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->access$500(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onSystemEvent$6$BiometricPrompt$1(I)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$500(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onSystemEvent(I)V

    return-void
.end method

.method public onAcquired(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$200(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$yfG83rs6eJM9CDMAlhftsvdKekY;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$yfG83rs6eJM9CDMAlhftsvdKekY;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$200(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$AAMJr_dQQ3dkiYxppvTx2AjuvRQ;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$AAMJr_dQQ3dkiYxppvTx2AjuvRQ;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationSucceeded(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$200(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$12VeET6QSFQbES1tShxA0kvzReo;

    invoke-direct {v1, p0, p1}, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$12VeET6QSFQbES1tShxA0kvzReo;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDialogDismissed(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$300(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$Kmc1otRcCm0Akw6_6yK5trqAv78;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$Kmc1otRcCm0Akw6_6yK5trqAv78;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_27

    :cond_14
    const/4 v0, 0x2

    if-ne p1, v0, :cond_27

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$400(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$G8c-A1luxVwjcfGpdSp4nNPnavM;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$G8c-A1luxVwjcfGpdSp4nNPnavM;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onError(III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$200(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$bOZpfrHjTYn0bHysdnjuVXTbZSk;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$bOZpfrHjTYn0bHysdnjuVXTbZSk;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSystemEvent(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    # getter for: Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->access$200(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$xoRi9oElCVJ5QflEmWoJGQ08mZ8;

    invoke-direct {v1, p0, p1}, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$xoRi9oElCVJ5QflEmWoJGQ08mZ8;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
