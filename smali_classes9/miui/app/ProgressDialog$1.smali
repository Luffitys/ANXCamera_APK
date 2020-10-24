.class Lmiui/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/app/ProgressDialog;


# direct methods
.method constructor <init>(Lmiui/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-static {p1}, Lmiui/app/ProgressDialog;->access$100(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-static {v0}, Lmiui/app/ProgressDialog;->access$000(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-static {p1}, Lmiui/app/ProgressDialog;->access$200(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-static {p1}, Lmiui/app/ProgressDialog;->access$300(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-static {p1}, Lmiui/app/ProgressDialog;->access$400(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-static {v0}, Lmiui/app/ProgressDialog;->access$400(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-double v1, p1

    int-to-double v3, v0

    div-double/2addr v1, v3

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-static {v0}, Lmiui/app/ProgressDialog;->access$200(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$color;->progress_percent_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x22

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lmiui/app/ProgressDialog$1;->this$0:Lmiui/app/ProgressDialog;

    invoke-static {p0}, Lmiui/app/ProgressDialog;->access$300(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
