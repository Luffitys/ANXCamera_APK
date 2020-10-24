.class Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0

    return-void
.end method

.method public onStop(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    return-void
.end method
