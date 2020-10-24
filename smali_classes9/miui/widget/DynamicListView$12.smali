.class Lmiui/widget/DynamicListView$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/DynamicListView;

.field final synthetic val$adapter:Landroid/widget/BaseAdapter;

.field final synthetic val$positions:Ljava/util/List;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$12;->val$adapter:Landroid/widget/BaseAdapter;

    iput-object p3, p0, Lmiui/widget/DynamicListView$12;->val$positions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    iget-object v0, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_2

    iget-object v6, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    const/4 v8, 0x0

    aput v8, v5, v3

    invoke-static {v6, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v7, Lmiui/widget/DynamicListView$12$1;

    invoke-direct {v7, p0, v6}, Lmiui/widget/DynamicListView$12$1;-><init>(Lmiui/widget/DynamicListView$12;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v5, v0, v4

    iget-object v7, p0, Lmiui/widget/DynamicListView$12;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v7

    iget-object v5, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v5}, Lmiui/widget/DynamicListView;->access$2300(Lmiui/widget/DynamicListView;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v7, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v8, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v8

    add-int/2addr v5, v8

    iget-object v8, p0, Lmiui/widget/DynamicListView$12;->val$positions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v5, v8

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$2300(Lmiui/widget/DynamicListView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v1, Lmiui/widget/DynamicListView$12$2;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$12$2;-><init>(Lmiui/widget/DynamicListView$12;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->access$1900(Lmiui/widget/DynamicListView;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return v5
.end method
