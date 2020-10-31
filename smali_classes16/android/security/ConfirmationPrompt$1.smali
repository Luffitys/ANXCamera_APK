.class Landroid/security/ConfirmationPrompt$1;
.super Landroid/security/IConfirmationPromptCallback$Stub;
.source "ConfirmationPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/ConfirmationPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/security/ConfirmationPrompt;


# direct methods
.method constructor <init>(Landroid/security/ConfirmationPrompt;)V
    .registers 2

    iput-object p1, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    invoke-direct {p0}, Landroid/security/IConfirmationPromptCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmationPromptCompleted(I[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    # getter for: Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;
    invoke-static {v0}, Landroid/security/ConfirmationPrompt;->access$000(Landroid/security/ConfirmationPrompt;)Landroid/security/ConfirmationCallback;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    # getter for: Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;
    invoke-static {v0}, Landroid/security/ConfirmationPrompt;->access$000(Landroid/security/ConfirmationPrompt;)Landroid/security/ConfirmationCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    # getter for: Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v1}, Landroid/security/ConfirmationPrompt;->access$100(Landroid/security/ConfirmationPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    const/4 v3, 0x0

    # setter for: Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;
    invoke-static {v2, v3}, Landroid/security/ConfirmationPrompt;->access$002(Landroid/security/ConfirmationPrompt;Landroid/security/ConfirmationCallback;)Landroid/security/ConfirmationCallback;

    iget-object v2, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    # setter for: Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v2, v3}, Landroid/security/ConfirmationPrompt;->access$102(Landroid/security/ConfirmationPrompt;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    if-nez v1, :cond_27

    iget-object v2, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    # invokes: Landroid/security/ConfirmationPrompt;->doCallback(I[BLandroid/security/ConfirmationCallback;)V
    invoke-static {v2, p1, p2, v0}, Landroid/security/ConfirmationPrompt;->access$200(Landroid/security/ConfirmationPrompt;I[BLandroid/security/ConfirmationCallback;)V

    goto :goto_2f

    :cond_27
    new-instance v2, Landroid/security/ConfirmationPrompt$1$1;

    invoke-direct {v2, p0, p1, p2, v0}, Landroid/security/ConfirmationPrompt$1$1;-><init>(Landroid/security/ConfirmationPrompt$1;I[BLandroid/security/ConfirmationCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2f
    :goto_2f
    return-void
.end method
