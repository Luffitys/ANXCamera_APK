.class Lmiui/widget/DynamicListView$12$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$1:Lmiui/widget/DynamicListView$12;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView$12;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView$12$2;->this$1:Lmiui/widget/DynamicListView$12;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lmiui/widget/DynamicListView$12$2;->this$1:Lmiui/widget/DynamicListView$12;

    iget-object p0, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method
