.class Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;
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
    name = "SearchViewAnimationProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 4

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$200(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/SearchActionModeViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->translationCancelView()V

    :cond_23
    return-void
.end method

.method public onStop(Z)V
    .registers 4

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_d
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 8

    if-nez p1, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    :cond_6
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    if-lez v0, :cond_64

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mOriginalPaddingTop:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputPaddingTop:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$500(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarHeight:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$600(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputPaddingTop:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$500(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->requestLayout()V

    :cond_64
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$200(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/SearchActionModeViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputPaddingRight:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$700(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->updateCancelView(FI)V

    return-void
.end method
