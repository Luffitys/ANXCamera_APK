.class Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# instance fields
.field mDimViewVisible:Z

.field mViewPager:Lmiui/view/ViewPager;

.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$800(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$902(Lcom/miui/internal/widget/SearchActionModeView;I)I

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1002(Lcom/miui/internal/widget/SearchActionModeView;I)I

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz p1, :cond_2

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1100(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1200(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1200(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-static {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1102(Lcom/miui/internal/widget/SearchActionModeView;I)I

    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1302(Lcom/miui/internal/widget/SearchActionModeView;I)I

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1402(Lcom/miui/internal/widget/SearchActionModeView;I)I

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1200(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1200(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v3

    aget v3, v3, v0

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$1100(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1602(Lcom/miui/internal/widget/SearchActionModeView;I)I

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1702(Lcom/miui/internal/widget/SearchActionModeView;I)I

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-boolean v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    neg-int v3, v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v2, v1, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    :goto_1
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getViewPager()Lmiui/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    const/4 p0, 0x0

    goto :goto_3

    :cond_6
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v0, p0}, Lmiui/view/ViewPager;->setBottomMarginProgress(F)V

    :cond_7
    return-void
.end method

.method public onStop(Z)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$2000(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz p1, :cond_2

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    :cond_4
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lmiui/view/ViewPager;->setBottomMarginProgress(F)V

    :cond_6
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    return-void
.end method

.method public onUpdate(ZF)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    sub-float p2, v0, p2

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    :cond_2
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    sub-int v4, v1, v2

    :goto_2
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result p1

    neg-int v4, p1

    :cond_5
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$2000(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1600(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    add-int/2addr v1, v4

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$2000(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1600(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    :goto_3
    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1700(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    add-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
