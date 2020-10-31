.class Lcom/miui/internal/app/AlertControllerImpl$1;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/AlertControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v0, 0x0

    const v1, 0x10000001

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$000(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_21

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$100(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$100(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    const/high16 v1, 0x10000000

    goto :goto_56

    :cond_21
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$200(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_3c

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$300(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$300(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_56

    :cond_3c
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$400(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_56

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    :cond_56
    :goto_56
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5b
    invoke-static {v1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_64
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$700(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v4}, Lcom/miui/internal/app/AlertControllerImpl;->access$600(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
