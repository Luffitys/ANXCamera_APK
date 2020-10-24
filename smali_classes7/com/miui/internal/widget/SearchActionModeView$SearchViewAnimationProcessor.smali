.class Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p0}, Lcom/miui/internal/widget/SearchActionModeView;->access$200(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/SearchActionModeViewHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->translationCancelView()V

    :cond_0
    return-void
.end method

.method public onStop(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 4

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$500(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$600(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$500(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$200(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/SearchActionModeViewHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p0}, Lcom/miui/internal/widget/SearchActionModeView;->access$700(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->updateCancelView(FI)V

    return-void
.end method
