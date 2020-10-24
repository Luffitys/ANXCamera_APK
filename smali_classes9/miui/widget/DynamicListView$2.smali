.class Lmiui/widget/DynamicListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->access$402(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/DynamicListView$2;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p1}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lmiui/widget/DynamicListView;->access$102(Lmiui/widget/DynamicListView;J)J

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p1, v0, v1}, Lmiui/widget/DynamicListView;->access$002(Lmiui/widget/DynamicListView;J)J

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p1, v0, v1}, Lmiui/widget/DynamicListView;->access$202(Lmiui/widget/DynamicListView;J)J

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->access$302(Lmiui/widget/DynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->access$402(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-boolean p1, p0, Lmiui/widget/DynamicListView$2;->mCanceled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p1}, Lmiui/widget/DynamicListView;->access$500(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->access$500(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;

    move-result-object p0

    invoke-interface {p0}, Lmiui/widget/DynamicListView$RearrangeListener;->onDragEnd()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    iput-boolean v0, p0, Lmiui/widget/DynamicListView$2;->mCanceled:Z

    return-void
.end method
