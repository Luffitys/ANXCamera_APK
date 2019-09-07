.class Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BubbleEditMimojiPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->hideBubbleAni()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    invoke-static {p1}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->access$400(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    iget-object v1, v0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->mLocationSelect:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object v0, v0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->this$0:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;->access$700(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    iget-object v0, v0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->this$0:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;->access$300(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v3, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    iget-object v0, p1, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->access$400(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    iget-object p1, p1, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->this$0:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    invoke-static {p0, v2}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;->access$002(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    invoke-static {p1}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->access$400(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    iget-object v1, v0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->mLocationSelect:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v3, v1

    iget-object v0, v0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->this$0:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;->access$200(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;)D

    move-result-wide v0

    add-double/2addr v3, v0

    double-to-int v0, v3

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    invoke-static {p1}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->access$400(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    iget-object v1, v0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->mLocationSelect:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    iget-object v0, v0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->this$0:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;->access$300(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    iget-object v0, p1, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->access$400(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    iget-object p1, p1, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop$3;->this$1:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter$BubblePop;->this$0:Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;

    invoke-static {p0, v3}, Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;->access$002(Lcom/android/camera/fragment/mimoji/BubbleEditMimojiPresenter;Z)Z

    return-void
.end method
