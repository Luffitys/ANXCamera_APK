.class Lmiui/content/pm/PackageDeleteConfirmActivity$1;
.super Landroid/os/Handler;
.source "PackageDeleteConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/PackageDeleteConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;


# direct methods
.method constructor <init>(Lmiui/content/pm/PackageDeleteConfirmActivity;)V
    .registers 2

    iput-object p1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # --operator for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$006(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$100(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$000(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x110e006d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_a8

    :cond_2e
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$000(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x110e006f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_a8

    :cond_4c
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$100(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_74

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    const v4, 0x110e006e

    new-array v2, v2, [Ljava/lang/Object;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I
    invoke-static {v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$000(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_92

    :cond_74
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    const v4, 0x110e0070

    new-array v2, v2, [Ljava/lang/Object;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I
    invoke-static {v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$000(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_92
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$300(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$300(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_a8
    return-void
.end method
