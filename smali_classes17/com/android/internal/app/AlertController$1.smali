.class Lcom/android/internal/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const v0, 0x10000001

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_20

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    const/high16 v0, 0x10000000

    goto :goto_57

    :cond_20
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3b

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    goto :goto_57

    :cond_3b
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_56

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    goto :goto_57

    :cond_56
    const/4 v1, 0x0

    :goto_57
    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_5c
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_65
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v4}, Lcom/android/internal/app/AlertController;->access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
