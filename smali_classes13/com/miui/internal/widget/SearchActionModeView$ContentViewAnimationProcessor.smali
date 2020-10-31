.class Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentViewAnimationProcessor"
.end annotation


# instance fields
.field mDimViewVisible:Z

.field mViewPager:Lmiui/view/ViewPager;

.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # invokes: Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$800(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I
    invoke-static {v1, v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$902(Lcom/miui/internal/widget/SearchActionModeView;I)I

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingBottom:I
    invoke-static {v1, v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1002(Lcom/miui/internal/widget/SearchActionModeView;I)I

    :cond_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_94

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1100(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_45

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$1200(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1200(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v4

    aget v4, v4, v1

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I
    invoke-static {v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$1102(Lcom/miui/internal/widget/SearchActionModeView;I)I

    :cond_45
    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v4

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I
    invoke-static {v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$1302(Lcom/miui/internal/widget/SearchActionModeView;I)I

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    neg-int v4, v4

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYLength:I
    invoke-static {v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$1402(Lcom/miui/internal/widget/SearchActionModeView;I)I

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$1200(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1200(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I
    invoke-static {v5}, Lcom/miui/internal/widget/SearchActionModeView;->access$1100(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I
    invoke-static {v5}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v5

    sub-int/2addr v4, v5

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I
    invoke-static {v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$1602(Lcom/miui/internal/widget/SearchActionModeView;I)I

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYLength:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I
    invoke-static {v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$1702(Lcom/miui/internal/widget/SearchActionModeView;I)I

    goto :goto_ca

    :cond_94
    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-boolean v4, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    if-eqz v4, :cond_b3

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    goto :goto_b8

    :cond_b3
    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    neg-int v4, v4

    :goto_b8
    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    goto :goto_ca

    :cond_bc
    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v3, v2, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    :goto_ca
    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_df

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_df

    goto :goto_e0

    :cond_df
    move v1, v2

    :goto_e0
    iput-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/SearchActionModeView;->getViewPager()Lmiui/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    if-eqz v1, :cond_f5

    if-eqz p1, :cond_f0

    const/4 v2, 0x0

    goto :goto_f2

    :cond_f0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_f2
    invoke-virtual {v1, v2}, Lmiui/view/ViewPager;->setBottomMarginProgress(F)V

    :cond_f5
    return-void
.end method

.method public onStop(Z)V
    .registers 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p1, :cond_23

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$2000(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_23
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_40
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    if-lez v2, :cond_5b

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz p1, :cond_57

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    goto :goto_58

    :cond_57
    move v4, v3

    :goto_58
    invoke-virtual {v2, v4, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    :cond_5b
    if-eqz p1, :cond_7b

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v2

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v2

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    :cond_7b
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    if-eqz v2, :cond_86

    if-eqz p1, :cond_82

    goto :goto_83

    :cond_82
    move v0, v1

    :goto_83
    invoke-virtual {v2, v0}, Lmiui/view/ViewPager;->setBottomMarginProgress(F)V

    :cond_86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    return-void
.end method

.method public onUpdate(ZF)V
    .registers 11

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_6

    sub-float p2, v0, p2

    :cond_6
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v1

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v1

    if-eqz v1, :cond_97

    iget-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    goto :goto_34

    :cond_26
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    sub-int/2addr v1, v2

    :goto_34
    if-eqz p1, :cond_3d

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_51

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v4, v4

    goto :goto_52

    :cond_51
    move v4, v5

    :goto_52
    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-boolean v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    if-eqz v3, :cond_5b

    goto :goto_6a

    :cond_5b
    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    neg-int v3, v3

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I
    invoke-static {v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    sub-int v5, v3, v4

    :goto_6a
    move v3, v5

    if-eqz p1, :cond_75

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    neg-int v4, v4

    goto :goto_76

    :cond_75
    move v4, v3

    :goto_76
    iget-object v5, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v5}, Lcom/miui/internal/widget/SearchActionModeView;->access$2000(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I
    invoke-static {v6}, Lcom/miui/internal/widget/SearchActionModeView;->access$1600(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I
    invoke-static {v7}, Lcom/miui/internal/widget/SearchActionModeView;->access$1700(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p2

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_cb

    :cond_97
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    if-lez v1, :cond_cb

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$2000(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1600(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1700(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_cc

    :cond_cb
    :goto_cb
    nop

    :goto_cc
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sub-float/2addr v0, p2

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYLength:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setTranslationY(F)V

    return-void
.end method
