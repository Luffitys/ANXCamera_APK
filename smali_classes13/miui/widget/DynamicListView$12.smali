.class Lmiui/widget/DynamicListView$12;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->animateRemoval(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DynamicListView;

.field final synthetic val$adapter:Landroid/widget/BaseAdapter;

.field final synthetic val$positions:Ljava/util/List;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$12;->val$adapter:Landroid/widget/BaseAdapter;

    iput-object p3, p0, Lmiui/widget/DynamicListView$12;->val$positions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 15

    iget-object v0, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v1}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1b
    const/4 v4, 0x1

    if-ge v3, v1, :cond_8c

    iget-object v5, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v5, v3}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v4, v7

    invoke-static {v5, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v6, Lmiui/widget/DynamicListView$12$1;

    invoke-direct {v6, p0, v5}, Lmiui/widget/DynamicListView$12$1;-><init>(Lmiui/widget/DynamicListView$12;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v6, v0, v3

    iget-object v7, p0, Lmiui/widget/DynamicListView$12;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v6}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v7

    iget-object v9, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;
    invoke-static {v9}, Lmiui/widget/DynamicListView;->access$2300(Lmiui/widget/DynamicListView;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    if-eqz v9, :cond_69

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v10, :cond_89

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v11, v10

    int-to-float v12, v11

    invoke-virtual {v5, v12}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_89

    :cond_69
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    iget-object v12, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v12}, Lmiui/widget/DynamicListView;->getDividerHeight()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lmiui/widget/DynamicListView$12;->val$positions:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    mul-int/2addr v12, v11

    add-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int/2addr v12, v10

    int-to-float v13, v12

    invoke-virtual {v5, v13}, Landroid/view/View;->setTranslationY(F)V

    :cond_89
    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_8c
    iget-object v3, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;
    invoke-static {v3}, Lmiui/widget/DynamicListView;->access$2300(Lmiui/widget/DynamicListView;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v5, Lmiui/widget/DynamicListView$12$2;

    invoke-direct {v5, p0}, Lmiui/widget/DynamicListView$12$2;-><init>(Lmiui/widget/DynamicListView$12;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mDuration:J
    invoke-static {v5}, Lmiui/widget/DynamicListView;->access$1900(Lmiui/widget/DynamicListView;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return v4
.end method
