.class Lcom/android/camera/Util$2;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$btn:Landroid/widget/Button;


# direct methods
.method constructor <init>(JJLandroid/app/Activity;Landroid/widget/Button;)V
    .locals 0

    iput-object p5, p0, Lcom/android/camera/Util$2;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/android/camera/Util$2;->val$btn:Landroid/widget/Button;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Util$2;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Util$2;->val$btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/Util$2;->val$btn:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/camera/Util$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f100268

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/Util$2;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Util$2;->val$btn:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/camera/Util$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f100269

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
