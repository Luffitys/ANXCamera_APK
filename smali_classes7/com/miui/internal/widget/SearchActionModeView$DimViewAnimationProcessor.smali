.class Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onStop(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    :goto_0
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$2100(Lcom/miui/internal/widget/SearchActionModeView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p2}, Lcom/miui/internal/widget/SearchActionModeView;->access$2000(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p0}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    int-to-float p0, p0

    add-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method
