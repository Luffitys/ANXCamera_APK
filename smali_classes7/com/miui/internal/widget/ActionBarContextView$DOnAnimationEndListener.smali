.class public Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field mFinalVisibility:Z

.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/ActionBarContextView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lmiui/animation/physics/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/internal/widget/ActionBarContextView;->access$400(Lcom/miui/internal/widget/ActionBarContextView;Z)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {p1, p2}, Lcom/miui/internal/widget/ActionBarContextView;->access$302(Lcom/miui/internal/widget/ActionBarContextView;Z)Z

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean p3, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    invoke-virtual {p1, p3}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationEnd(Z)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarContextView;->access$500(Lcom/miui/internal/widget/ActionBarContextView;)I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContextView;->killMode()V

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {p1, p2}, Lcom/miui/internal/widget/ActionBarContextView;->access$502(Lcom/miui/internal/widget/ActionBarContextView;I)I

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/miui/internal/widget/ActionBarContextView;->access$602(Lcom/miui/internal/widget/ActionBarContextView;Lmiui/animation/physics/SpringAnimationSet;)Lmiui/animation/physics/SpringAnimationSet;

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean p3, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    const/16 p4, 0x8

    if-eqz p3, :cond_1

    move p3, p2

    goto :goto_0

    :cond_1
    move p3, p4

    :goto_0
    invoke-virtual {p1, p3}, Lcom/miui/internal/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object p3, p1, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p3, :cond_3

    iget-object p1, p1, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz p1, :cond_3

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move p2, p4

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method
