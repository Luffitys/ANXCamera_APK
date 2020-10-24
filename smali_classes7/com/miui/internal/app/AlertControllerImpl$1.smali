.class Lcom/miui/internal/app/AlertControllerImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$000(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x10000001

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$100(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$100(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    const/high16 v1, 0x10000000

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$200(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$300(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$300(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$400(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    invoke-static {v1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_4
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p1}, Lcom/miui/internal/app/AlertControllerImpl;->access$700(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl$1;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p0}, Lcom/miui/internal/app/AlertControllerImpl;->access$600(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
