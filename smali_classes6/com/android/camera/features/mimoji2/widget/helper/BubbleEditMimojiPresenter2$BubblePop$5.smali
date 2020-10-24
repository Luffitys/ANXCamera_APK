.class Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object p1, p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$200(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$700(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v3, v2, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    aget v3, v3, v0

    iget-object v2, v2, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v2}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$1000(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v2

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v2, v2, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v2}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$500(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v2

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v2, v2, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    aget v2, v2, v1

    invoke-virtual {p1, v1, v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$700(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v3, v2, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    aget v4, v3, v1

    aget v3, v3, v0

    iget-object v2, v2, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v2}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$1000(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v2

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v2, v2, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v2}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$500(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {p1, v4, v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object p1, p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v2, p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$700(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    const/4 v2, -0x1

    aput v2, p1, v1

    aput v2, p1, v0

    const/4 v0, 0x2

    aput v2, p1, v0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {p0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$102(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$700(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$300(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$700(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v1, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mLocationSelect:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$500(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v0, p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$700(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$5;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {p0, v2}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$102(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;Z)Z

    return-void
.end method
