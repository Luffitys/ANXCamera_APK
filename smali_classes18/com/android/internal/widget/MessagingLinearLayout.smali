.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;,
        Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    }
.end annotation


# instance fields
.field private mMaxDisplayedLines:I

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    sget-object v0, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_26

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_23

    :cond_1d
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static isGone(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-eqz v2, :cond_1a

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v2, v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v2, :cond_1a

    return v1

    :cond_1a
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_15

    move-object v1, p2

    check-cast v1, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x1

    return v2

    :cond_15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .registers 4

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .registers 4

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .registers 5

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_13

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_13
    return-object v0
.end method

.method public getBaseline()I
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_28

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_16

    nop

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_16
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    return v4

    :cond_1e
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v3

    return v5

    :cond_28
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v1

    return v1
.end method

.method public getMessagingLayout()Lcom/android/internal/widget/IMessagingLayout;
    .registers 4

    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_15

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    instance-of v2, v0, Lcom/android/internal/widget/IMessagingLayout;

    if-eqz v2, :cond_14

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/IMessagingLayout;

    return-object v2

    :cond_14
    goto :goto_1

    :cond_15
    const/4 v2, 0x0

    return-object v2
.end method

.method protected onLayout(ZIIII)V
    .registers 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    sub-int v2, p4, p2

    iget v3, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    sub-int v3, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutDirection()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v5

    iget v6, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isShown()Z

    move-result v8

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v5, :cond_93

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_2d

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_8c

    :cond_2d
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-object v12, v10

    check-cast v12, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    const/4 v15, 0x1

    if-ne v4, v15, :cond_4a

    sub-int v16, v3, v13

    iget v15, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    sub-int v16, v16, v15

    move/from16 v15, v16

    goto :goto_50

    :cond_4a
    iget v15, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v16, v1, v15

    move/from16 v15, v16

    :goto_50
    move/from16 v16, v1

    iget-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_70

    if-eqz v8, :cond_6a

    iget-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    if-eqz v1, :cond_6a

    add-int v1, v15, v13

    move/from16 v17, v2

    iget v2, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    add-int/2addr v2, v6

    invoke-virtual {v10, v15, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-interface {v12}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hideAnimated()V

    goto :goto_6c

    :cond_6a
    move/from16 v17, v2

    :goto_6c
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    goto :goto_8c

    :cond_70
    move/from16 v17, v2

    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    iput v14, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    if-nez v7, :cond_7c

    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v6, v1

    :cond_7c
    iget v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v1

    add-int v1, v15, v13

    add-int v2, v6, v14

    invoke-virtual {v10, v15, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v14

    add-int/2addr v6, v1

    const/4 v1, 0x0

    move v7, v1

    :goto_8c
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_1a

    :cond_93
    return-void
.end method

.method protected onMeasure(II)V
    .registers 34

    move-object/from16 v6, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_e

    move v7, v0

    goto :goto_12

    :cond_e
    const v0, 0x7fffffff

    move v7, v0

    :goto_12
    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v8

    const/4 v1, 0x0

    :goto_1c
    const/4 v9, 0x1

    if-ge v1, v8, :cond_38

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iput-boolean v9, v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    instance-of v4, v2, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v4, :cond_35

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v4, v9}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_38
    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    iget v2, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    iget v3, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    add-int/lit8 v13, v8, -0x1

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move v5, v13

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    :goto_54
    if-ltz v5, :cond_18a

    if-ge v11, v7, :cond_18a

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_68

    move/from16 v26, v5

    goto/16 :goto_160

    :cond_68
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/16 v19, 0x0

    iget v2, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    const/16 v20, 0x0

    instance-of v0, v4, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    const/4 v1, 0x0

    if-eqz v0, :cond_cd

    if-eqz v14, :cond_b6

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hasDifferentHeightWhenFirst()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v14, v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    const/16 v21, 0x0

    sub-int v22, v17, v16

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v24, v2

    move/from16 v2, p1

    move-object v9, v3

    move/from16 v3, v21

    move-object/from16 v21, v4

    move/from16 v4, p2

    move/from16 v26, v5

    move/from16 v5, v22

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v0, v16

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v1

    sub-int v1, v1, v18

    sub-int/2addr v13, v1

    move/from16 v20, v0

    goto :goto_bd

    :cond_b6
    move/from16 v24, v2

    move-object v9, v3

    move-object/from16 v21, v4

    move/from16 v26, v5

    :goto_bd
    move-object/from16 v0, v21

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v0, v13}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setMaxDisplayedLines(I)V

    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getExtraSpacing()I

    move-result v1

    add-int v2, v24, v1

    move-object/from16 v19, v0

    goto :goto_d4

    :cond_cd
    move/from16 v24, v2

    move-object v9, v3

    move-object/from16 v21, v4

    move/from16 v26, v5

    :goto_d4
    if-eqz v12, :cond_d8

    const/4 v1, 0x0

    goto :goto_d9

    :cond_d8
    move v1, v2

    :goto_d9
    move/from16 v22, v1

    const/4 v3, 0x0

    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    sub-int v0, v11, v0

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v0, v1

    add-int v5, v0, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v0, v11, v24

    iget v1, v9, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v9, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int v0, v0, v22

    add-int v0, v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v0, 0x0

    if-eqz v19, :cond_10d

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getMeasuredType()I

    move-result v0

    move v4, v0

    goto :goto_10e

    :cond_10d
    move v4, v0

    :goto_10e
    const/4 v0, 0x2

    if-ne v4, v0, :cond_115

    if-nez v12, :cond_115

    const/4 v1, 0x1

    goto :goto_116

    :cond_115
    const/4 v1, 0x0

    :goto_116
    move/from16 v27, v1

    const/4 v1, 0x1

    if-eq v4, v1, :cond_122

    if-ne v4, v0, :cond_120

    if-eqz v12, :cond_120

    goto :goto_122

    :cond_120
    const/4 v1, 0x0

    goto :goto_123

    :cond_122
    :goto_122
    const/4 v1, 0x1

    :goto_123
    move/from16 v28, v1

    if-gt v5, v7, :cond_12b

    if-nez v27, :cond_12b

    const/4 v1, 0x1

    goto :goto_12c

    :cond_12b
    const/4 v1, 0x0

    :goto_12c
    move/from16 v29, v1

    if-eqz v29, :cond_165

    if-eqz v19, :cond_140

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v18

    sub-int v13, v13, v18

    move-object/from16 v14, v19

    move-object/from16 v15, v21

    move/from16 v16, v24

    move/from16 v17, v11

    :cond_140
    move v11, v5

    nop

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v9, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v9, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-nez v28, :cond_18c

    if-gtz v13, :cond_15e

    goto :goto_18c

    :cond_15e
    const/4 v0, 0x0

    move v12, v0

    :goto_160
    add-int/lit8 v5, v26, -0x1

    const/4 v9, 0x1

    goto/16 :goto_54

    :cond_165
    if-eqz v14, :cond_185

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hasDifferentHeightWhenFirst()Z

    move-result v0

    if-eqz v0, :cond_185

    const/4 v0, 0x1

    invoke-interface {v14, v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    const/4 v3, 0x0

    sub-int v23, v17, v16

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move/from16 v25, v4

    move/from16 v4, p2

    move/from16 v30, v5

    move/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_18c

    :cond_185
    move/from16 v25, v4

    move/from16 v30, v5

    goto :goto_18c

    :cond_18a
    move/from16 v26, v5

    :cond_18c
    :goto_18c
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMaxDisplayedLines(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    return-void
.end method
