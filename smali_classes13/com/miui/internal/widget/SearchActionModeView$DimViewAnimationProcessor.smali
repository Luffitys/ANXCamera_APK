.class Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;
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
    name = "DimViewAnimationProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 4

    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_21
    return-void
.end method

.method public onStop(Z)V
    .registers 4

    const/16 v0, 0x8

    if-eqz p1, :cond_1e

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3c

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c

    :cond_1e
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 7

    if-eqz p1, :cond_4

    move v0, p2

    goto :goto_7

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    :goto_7
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # invokes: Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$2100(Lcom/miui/internal/widget/SearchActionModeView;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$2000(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_4f
    return-void
.end method
