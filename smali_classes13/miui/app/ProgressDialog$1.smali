.class Lmiui/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ProgressDialog;


# direct methods
.method constructor <init>(Lmiui/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;
    invoke-static {v0}, Lmiui/app/ProgressDialog;->access$100(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v1}, Lmiui/app/ProgressDialog;->access$000(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v0}, Lmiui/app/ProgressDialog;->access$200(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mProgressPercentView:Landroid/widget/TextView;
    invoke-static {v0}, Lmiui/app/ProgressDialog;->access$300(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lmiui/app/ProgressDialog;->access$400(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lmiui/app/ProgressDialog;->access$400(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-double v2, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v5}, Lmiui/app/ProgressDialog;->access$200(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-virtual {v6}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/internal/R$color;->progress_percent_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x22

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v7, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    # getter for: Lmiui/app/ProgressDialog;->mProgressPercentView:Landroid/widget/TextView;
    invoke-static {v7}, Lmiui/app/ProgressDialog;->access$300(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_73
    return-void
.end method
