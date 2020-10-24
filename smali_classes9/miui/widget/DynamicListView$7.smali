.class Lmiui/widget/DynamicListView$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/DynamicListView;

.field final synthetic val$deltaY:I

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$switchItemID:J

.field final synthetic val$switchViewStartTop:I


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Landroid/view/ViewTreeObserver;JII)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView$7;->this$0:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$7;->val$observer:Landroid/view/ViewTreeObserver;

    iput-wide p3, p0, Lmiui/widget/DynamicListView$7;->val$switchItemID:J

    iput p5, p0, Lmiui/widget/DynamicListView$7;->val$deltaY:I

    iput p6, p0, Lmiui/widget/DynamicListView$7;->val$switchViewStartTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->this$0:Lmiui/widget/DynamicListView;

    iget-wide v1, p0, Lmiui/widget/DynamicListView$7;->val$switchItemID:J

    invoke-virtual {v0, v1, v2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lmiui/widget/DynamicListView$7;->this$0:Lmiui/widget/DynamicListView;

    iget v3, p0, Lmiui/widget/DynamicListView$7;->val$deltaY:I

    invoke-static {v2, v3}, Lmiui/widget/DynamicListView;->access$1812(Lmiui/widget/DynamicListView;I)I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lmiui/widget/DynamicListView$7;->val$switchViewStartTop:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object p0, p0, Lmiui/widget/DynamicListView$7;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->access$1900(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return v1
.end method
