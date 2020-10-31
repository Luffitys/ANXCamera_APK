.class Landroid/widget/DayPickerViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "DayPickerViewPager.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerPagerAdapter;->getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;

    move-result-object v1

    if-eq v1, p2, :cond_20

    if-eqz v1, :cond_20

    invoke-virtual {v1, p1}, Landroid/widget/SimpleMonthView;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_20

    return-object v2

    :cond_20
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_39

    invoke-virtual {p0, v3}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v4, p2, :cond_36

    if-eq v4, v1, :cond_36

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_36

    return-object v5

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_39
    const/4 v3, 0x0

    return-object v3
.end method

.method protected onMeasure(II)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->populate()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v3

    nop

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v4, v6, :cond_20

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v6, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v4, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    move v4, v5

    :goto_21
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_25
    const/4 v11, -0x1

    if-ge v10, v3, :cond_67

    invoke-virtual {v0, v10}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_64

    invoke-virtual {v0, v12, v1, v2}, Landroid/widget/DayPickerViewPager;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    invoke-static {v9, v14}, Landroid/widget/DayPickerViewPager;->combineMeasuredStates(II)I

    move-result v9

    if-eqz v4, :cond_64

    iget v14, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    if-eq v14, v11, :cond_5f

    iget v14, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-ne v14, v11, :cond_64

    :cond_5f
    iget-object v11, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    :cond_67
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v8, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v7, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumHeight()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_a1

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_a1
    invoke-static {v8, v1, v9}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v12

    shl-int/lit8 v13, v9, 0x10

    invoke-static {v7, v2, v13}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v13

    invoke-virtual {v0, v12, v13}, Landroid/widget/DayPickerViewPager;->setMeasuredDimension(II)V

    iget-object v12, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_122

    const/4 v5, 0x0

    :goto_b7
    if-ge v5, v3, :cond_122

    iget-object v12, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    iget v14, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    if-ne v14, v11, :cond_df

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    goto :goto_ef

    :cond_df
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    invoke-static {v1, v14, v15}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v14

    :goto_ef
    iget v15, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-ne v15, v11, :cond_109

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getMeasuredHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v15, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_11a

    :cond_109
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    iget v6, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    invoke-static {v2, v15, v6}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v15

    :goto_11a
    invoke-virtual {v12, v14, v15}, Landroid/view/View;->measure(II)V

    add-int/lit8 v5, v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_b7

    :cond_122
    iget-object v5, v0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
