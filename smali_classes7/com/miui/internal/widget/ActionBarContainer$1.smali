.class Lcom/miui/internal/widget/ActionBarContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarContainer;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer$1;->this$0:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer$1;->this$0:Lcom/miui/internal/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer$1;->this$0:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->access$002(Lcom/miui/internal/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
