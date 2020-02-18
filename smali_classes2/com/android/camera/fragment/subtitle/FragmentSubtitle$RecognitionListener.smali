.class public Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
.super Ljava/lang/Object;
.source "FragmentSubtitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/subtitle/FragmentSubtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecognitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->checkNetWorkStatus()V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$600(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$500(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x66

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onRecognitionListener(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$500(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$000(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$100(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$200(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$300(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f011e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$000(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$100(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$200(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$300(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$500(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$000(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x3d4ccccd    # 0.05f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$100(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$200(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$300(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$500(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
