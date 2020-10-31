.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    iput v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .registers 2

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 20

    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v3, p4

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    instance-of v6, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_1f

    move-object v6, v0

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuItemView;

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    :goto_20
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_2c

    move v9, v8

    goto :goto_2d

    :cond_2c
    move v9, v7

    :goto_2d
    const/4 v10, 0x0

    if-lez v1, :cond_51

    const/4 v11, 0x2

    if-eqz v9, :cond_35

    if-lt v1, v11, :cond_51

    :cond_35
    mul-int v12, p1, v1

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {p0, v12, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int v10, v13, p1

    rem-int v14, v13, p1

    if-eqz v14, :cond_4c

    add-int/lit8 v10, v10, 0x1

    :cond_4c
    if-eqz v9, :cond_51

    if-ge v10, v11, :cond_51

    const/4 v10, 0x2

    :cond_51
    iget-boolean v11, v2, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_58

    if-eqz v9, :cond_58

    move v7, v8

    :cond_58
    iput-boolean v7, v2, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    iput v10, v2, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v8, v10, p1

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v5}, Landroid/view/View;->measure(II)V

    return v10
.end method

.method private onMeasureExactFormat(II)V
    .registers 41

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    iget v8, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    div-int v9, v2, v8

    rem-int v10, v2, v8

    const/4 v11, 0x0

    if-nez v9, :cond_35

    invoke-virtual {v0, v2, v11}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_35
    div-int v12, v10, v9

    add-int/2addr v8, v12

    move v12, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v11

    const/16 v21, 0x0

    move/from16 v36, v16

    move/from16 v16, v3

    move/from16 v3, v36

    move/from16 v37, v21

    move/from16 v21, v4

    move/from16 v4, v37

    :goto_54
    if-ge v4, v11, :cond_e6

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move/from16 v23, v9

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v24, v10

    const/16 v10, 0x8

    if-ne v9, v10, :cond_68

    goto/16 :goto_dc

    :cond_68
    instance-of v9, v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    add-int/lit8 v3, v3, 0x1

    if-eqz v9, :cond_77

    iget v10, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v3

    const/4 v3, 0x0

    invoke-virtual {v7, v10, v3, v10, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_7a

    :cond_77
    move/from16 v25, v3

    const/4 v3, 0x0

    :goto_7a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/ActionMenuView$LayoutParams;

    iput-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    iput v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v9, :cond_99

    move-object v3, v7

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_99

    const/4 v3, 0x1

    goto :goto_9a

    :cond_99
    const/4 v3, 0x0

    :goto_9a
    iput-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    iget-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_a2

    const/4 v3, 0x1

    goto :goto_a3

    :cond_a2
    move v3, v12

    :goto_a3
    move/from16 v26, v9

    invoke-static {v7, v8, v3, v6, v5}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v27, v3

    iget-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v3, :cond_b5

    add-int/lit8 v15, v15, 0x1

    :cond_b5
    iget-boolean v3, v10, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_bb

    const/16 v17, 0x1

    :cond_bb
    sub-int/2addr v12, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v13, 0x1

    if-ne v9, v13, :cond_d5

    shl-int/2addr v13, v4

    move/from16 v28, v9

    move-object/from16 v22, v10

    int-to-long v9, v13

    or-long v9, v18, v9

    move v13, v3

    move-wide/from16 v18, v9

    move/from16 v3, v25

    goto :goto_dc

    :cond_d5
    move/from16 v28, v9

    move-object/from16 v22, v10

    move v13, v3

    move/from16 v3, v25

    :goto_dc
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p2

    move/from16 v9, v23

    move/from16 v10, v24

    goto/16 :goto_54

    :cond_e6
    move/from16 v23, v9

    move/from16 v24, v10

    const/4 v4, 0x2

    if-eqz v17, :cond_f1

    if-ne v3, v4, :cond_f1

    const/4 v7, 0x1

    goto :goto_f2

    :cond_f1
    const/4 v7, 0x0

    :goto_f2
    const/4 v9, 0x0

    :goto_f3
    const-wide/16 v25, 0x0

    if-lez v15, :cond_1c1

    if-lez v12, :cond_1c1

    const v10, 0x7fffffff

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v4, v29

    move/from16 v36, v30

    move/from16 v30, v5

    move/from16 v5, v36

    :goto_10a
    if-ge v5, v11, :cond_158

    invoke-virtual {v0, v5}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    move/from16 v33, v9

    move-object/from16 v9, v32

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    move/from16 v32, v15

    iget-boolean v15, v9, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v15, :cond_125

    move/from16 v34, v1

    move/from16 v35, v2

    goto :goto_14d

    :cond_125
    iget v15, v9, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v15, v10, :cond_13b

    iget v10, v9, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v22, v10

    const/4 v15, 0x1

    shl-int v10, v15, v5

    move/from16 v34, v1

    move/from16 v35, v2

    int-to-long v1, v10

    const/4 v4, 0x1

    move-wide/from16 v27, v1

    move/from16 v10, v22

    goto :goto_14d

    :cond_13b
    move/from16 v34, v1

    move/from16 v35, v2

    const/4 v15, 0x1

    iget v1, v9, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v1, v10, :cond_14d

    shl-int v1, v15, v5

    int-to-long v1, v1

    or-long v1, v27, v1

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v27, v1

    :cond_14d
    :goto_14d
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v32

    move/from16 v9, v33

    move/from16 v1, v34

    move/from16 v2, v35

    goto :goto_10a

    :cond_158
    move/from16 v34, v1

    move/from16 v35, v2

    move/from16 v33, v9

    move/from16 v32, v15

    or-long v18, v18, v27

    if-le v4, v12, :cond_166

    goto/16 :goto_1cb

    :cond_166
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    :goto_169
    if-ge v1, v11, :cond_1b3

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuView$LayoutParams;

    const/4 v9, 0x1

    shl-int v15, v9, v1

    move/from16 v31, v10

    int-to-long v9, v15

    and-long v9, v27, v9

    cmp-long v9, v9, v25

    if-nez v9, :cond_193

    iget v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v10, v31

    if-ne v9, v10, :cond_190

    const/4 v9, 0x1

    shl-int v15, v9, v1

    move/from16 v31, v10

    int-to-long v9, v15

    or-long v18, v18, v9

    goto :goto_1ae

    :cond_190
    move/from16 v31, v10

    goto :goto_1ae

    :cond_193
    if-eqz v7, :cond_1a4

    iget-boolean v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v9, :cond_1a4

    const/4 v9, 0x1

    if-ne v12, v9, :cond_1a4

    iget v9, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v10, v9, v8

    const/4 v15, 0x0

    invoke-virtual {v2, v10, v15, v9, v15}, Landroid/view/View;->setPadding(IIII)V

    :cond_1a4
    iget v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v10, v5, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v12, v12, -0x1

    :goto_1ae
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v31

    goto :goto_169

    :cond_1b3
    move/from16 v31, v10

    const/4 v9, 0x1

    move/from16 v5, v30

    move/from16 v15, v32

    move/from16 v1, v34

    move/from16 v2, v35

    const/4 v4, 0x2

    goto/16 :goto_f3

    :cond_1c1
    move/from16 v34, v1

    move/from16 v35, v2

    move/from16 v30, v5

    move/from16 v33, v9

    move/from16 v32, v15

    :goto_1cb
    if-nez v17, :cond_1d2

    const/4 v1, 0x1

    if-ne v3, v1, :cond_1d2

    const/4 v1, 0x1

    goto :goto_1d3

    :cond_1d2
    const/4 v1, 0x0

    :goto_1d3
    if-lez v12, :cond_29a

    cmp-long v2, v18, v25

    if-eqz v2, :cond_29a

    add-int/lit8 v2, v3, -0x1

    if-lt v12, v2, :cond_1e6

    if-nez v1, :cond_1e6

    const/4 v2, 0x1

    if-le v14, v2, :cond_1e3

    goto :goto_1e6

    :cond_1e3
    move v10, v1

    goto/16 :goto_29b

    :cond_1e6
    :goto_1e6
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    if-nez v1, :cond_227

    const-wide/16 v4, 0x1

    and-long v4, v18, v4

    cmp-long v4, v4, v25

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_208

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    iget-boolean v10, v9, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_209

    sub-float/2addr v2, v5

    goto :goto_209

    :cond_208
    const/4 v4, 0x0

    :cond_209
    :goto_209
    add-int/lit8 v9, v11, -0x1

    const/4 v10, 0x1

    shl-int v9, v10, v9

    int-to-long v9, v9

    and-long v9, v18, v9

    cmp-long v9, v9, v25

    if-eqz v9, :cond_228

    add-int/lit8 v9, v11, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    iget-boolean v10, v9, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_228

    sub-float/2addr v2, v5

    goto :goto_228

    :cond_227
    const/4 v4, 0x0

    :cond_228
    :goto_228
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_233

    mul-int v4, v12, v8

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    goto :goto_234

    :cond_233
    nop

    :goto_234
    const/4 v5, 0x0

    move/from16 v9, v33

    :goto_237
    if-ge v5, v11, :cond_295

    const/4 v10, 0x1

    shl-int v15, v10, v5

    move v10, v1

    move/from16 v20, v2

    int-to-long v1, v15

    and-long v1, v18, v1

    cmp-long v1, v1, v25

    if-nez v1, :cond_249

    const/16 v27, 0x2

    goto :goto_28f

    :cond_249
    invoke-virtual {v0, v5}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView$LayoutParams;

    instance-of v15, v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v15, :cond_26d

    iput v4, v2, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v5, :cond_269

    iget-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v15, :cond_269

    neg-int v15, v4

    const/16 v27, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_269
    const/4 v9, 0x1

    const/16 v27, 0x2

    goto :goto_28f

    :cond_26d
    iget-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_27f

    iput v4, v2, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v15, v4

    const/16 v27, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    const/4 v9, 0x1

    goto :goto_28f

    :cond_27f
    const/16 v27, 0x2

    if-eqz v5, :cond_287

    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_287
    add-int/lit8 v15, v11, -0x1

    if-eq v5, v15, :cond_28f

    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    :cond_28f
    :goto_28f
    add-int/lit8 v5, v5, 0x1

    move v1, v10

    move/from16 v2, v20

    goto :goto_237

    :cond_295
    move v10, v1

    move/from16 v20, v2

    const/4 v12, 0x0

    goto :goto_29d

    :cond_29a
    move v10, v1

    :goto_29b
    move/from16 v9, v33

    :goto_29d
    if-eqz v9, :cond_2cc

    const/4 v2, 0x0

    :goto_2a0
    if-ge v2, v11, :cond_2c9

    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuView$LayoutParams;

    iget-boolean v15, v5, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v15, :cond_2b3

    move/from16 v22, v3

    goto :goto_2c4

    :cond_2b3
    iget v15, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v15, v8

    iget v1, v5, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v15, v1

    move/from16 v22, v3

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    :goto_2c4
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v22

    goto :goto_2a0

    :cond_2c9
    move/from16 v22, v3

    goto :goto_2ce

    :cond_2cc
    move/from16 v22, v3

    :goto_2ce
    move/from16 v1, v34

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_2d6

    move v3, v13

    goto :goto_2d8

    :cond_2d6
    move/from16 v3, v16

    :goto_2d8
    move/from16 v2, v35

    invoke-virtual {v0, v2, v3}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    if-eqz p1, :cond_8

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public dismissPopupMenus()V
    .registers 2

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_7
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .registers 3

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .registers 4

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .registers 4

    if-eqz p1, :cond_1e

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_f

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    goto :goto_14

    :cond_f
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_14
    nop

    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1d

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    :cond_1d
    return-object v0

    :cond_1e
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 5

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_40

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_2a

    goto :goto_2f

    :cond_2a
    new-instance v2, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    :goto_2f
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    :cond_40
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_21

    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_21

    move-object v3, v0

    check-cast v3, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_21
    if-lez p1, :cond_2f

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2f

    move-object v3, v1

    check-cast v3, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_2f
    return v2
.end method

.method public hideOverflowMenu()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_1d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 27

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_a

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sub-int v7, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v9

    const/4 v10, 0x0

    :goto_2b
    const/16 v11, 0x8

    if-ge v10, v1, :cond_a3

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v11, :cond_3e

    move/from16 v16, v2

    move/from16 v17, v9

    goto :goto_9c

    :cond_3e
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuView$LayoutParams;

    iget-boolean v13, v11, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_83

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v13

    if-eqz v13, :cond_53

    add-int/2addr v4, v3

    :cond_53
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-eqz v9, :cond_63

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v14

    iget v15, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    add-int v15, v14, v4

    goto :goto_72

    :cond_63
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v15, v14, v15

    sub-int v14, v15, v4

    :goto_72
    div-int/lit8 v16, v13, 0x2

    move/from16 v17, v9

    sub-int v9, v2, v16

    move/from16 v16, v2

    add-int v2, v9, v13

    invoke-virtual {v12, v14, v9, v15, v2}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v7, v4

    const/4 v2, 0x1

    move v8, v2

    goto :goto_9c

    :cond_83
    move/from16 v16, v2

    move/from16 v17, v9

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v9, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    iget v9, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v9

    add-int/2addr v5, v2

    sub-int/2addr v7, v2

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_9a

    add-int/2addr v5, v3

    :cond_9a
    add-int/lit8 v6, v6, 0x1

    :goto_9c
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    move/from16 v9, v17

    goto :goto_2b

    :cond_a3
    move/from16 v16, v2

    move/from16 v17, v9

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_cd

    if-nez v8, :cond_cd

    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int v11, p4, p2

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v9, 0x2

    sub-int v12, v11, v12

    div-int/lit8 v13, v10, 0x2

    sub-int v13, v16, v13

    add-int v14, v12, v9

    add-int v15, v13, v10

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_cd
    xor-int/lit8 v9, v8, 0x1

    sub-int v9, v6, v9

    if-lez v9, :cond_d6

    div-int v10, v7, v9

    goto :goto_d7

    :cond_d6
    move v10, v2

    :goto_d7
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v17, :cond_134

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v10, v12

    const/4 v12, 0x0

    :goto_e7
    if-ge v12, v1, :cond_12f

    invoke-virtual {v0, v12}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v11, :cond_122

    iget-boolean v15, v14, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_102

    move/from16 v19, v3

    move/from16 v20, v4

    goto :goto_126

    :cond_102
    iget v15, v14, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    div-int/lit8 v19, v18, 0x2

    sub-int v11, v16, v19

    move/from16 v19, v3

    sub-int v3, v10, v15

    move/from16 v20, v4

    add-int v4, v11, v18

    invoke-virtual {v13, v3, v11, v10, v4}, Landroid/view/View;->layout(IIII)V

    iget v3, v14, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v15

    add-int/2addr v3, v2

    sub-int/2addr v10, v3

    goto :goto_126

    :cond_122
    move/from16 v19, v3

    move/from16 v20, v4

    :goto_126
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    const/16 v11, 0x8

    goto :goto_e7

    :cond_12f
    move/from16 v19, v3

    move/from16 v20, v4

    goto :goto_176

    :cond_134
    move/from16 v19, v3

    move/from16 v20, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v3

    const/4 v4, 0x0

    :goto_13d
    if-ge v4, v1, :cond_176

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_171

    iget-boolean v12, v11, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_156

    goto :goto_171

    :cond_156
    iget v12, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v12

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    div-int/lit8 v15, v14, 0x2

    sub-int v15, v16, v15

    add-int v13, v3, v12

    add-int v0, v15, v14

    invoke-virtual {v10, v3, v15, v13, v0}, Landroid/view/View;->layout(IIII)V

    iget v0, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v12

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    :cond_171
    :goto_171
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_13d

    :cond_176
    :goto_176
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    iput-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_15

    iput v3, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    :cond_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_2a

    iget-object v4, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_2a

    iget v5, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v5, :cond_2a

    iput v1, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v2

    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_38

    if-lez v2, :cond_38

    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_4f

    :cond_38
    const/4 v4, 0x0

    :goto_39
    if-ge v4, v2, :cond_4c

    invoke-virtual {p0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/ActionMenuView$LayoutParams;

    iput v3, v6, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v6, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_4c
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_4f
    return-void
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_16

    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_d

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_16

    :cond_d
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_16
    :goto_16
    return-void
.end method

.method public setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
