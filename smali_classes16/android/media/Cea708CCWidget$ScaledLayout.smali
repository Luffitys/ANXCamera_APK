.class Landroid/media/Cea708CCWidget$ScaledLayout;
.super Landroid/view/ViewGroup;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaledLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScaledLayout"

.field private static final mRectTopLeftSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRectArray:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$1;

    invoke-direct {v0}, Landroid/media/Cea708CCWidget$ScaledLayout$1;-><init>()V

    sput-object v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_3f

    invoke-virtual {p0, v3}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3c

    iget-object v5, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    array-length v6, v5

    if-lt v3, v6, :cond_21

    goto :goto_3f

    :cond_21
    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget-object v6, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_3f
    :goto_3f
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_3d

    invoke-virtual {p0, v3}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3a

    iget-object v5, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget-object v6, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iget-object v7, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v3

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v0

    iget-object v8, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v1

    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/view/View;->layout(IIII)V

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_3d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 23

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v5

    new-array v6, v5, [Landroid/graphics/Rect;

    iput-object v6, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    const/4 v6, 0x0

    :goto_29
    if-ge v6, v5, :cond_163

    invoke-virtual {v0, v6}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    if-eqz v10, :cond_157

    move-object v10, v9

    check-cast v10, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v10, v10, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    move-object v11, v9

    check-cast v11, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v11, v11, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    move-object v12, v9

    check-cast v12, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v12, v12, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    move-object v13, v9

    check-cast v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v13, v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    const/4 v14, 0x0

    cmpg-float v15, v10, v14

    if-ltz v15, :cond_149

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v16, v10, v15

    if-gtz v16, :cond_149

    cmpg-float v16, v11, v10

    if-ltz v16, :cond_13b

    cmpl-float v16, v10, v15

    if-gtz v16, :cond_13b

    cmpg-float v14, v13, v14

    if-ltz v14, :cond_12d

    cmpl-float v14, v13, v15

    if-gtz v14, :cond_12d

    cmpg-float v14, v13, v12

    if-ltz v14, :cond_11f

    cmpl-float v14, v13, v15

    if-gtz v14, :cond_11f

    iget-object v14, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    int-to-float v7, v3

    mul-float/2addr v7, v12

    float-to-int v7, v7

    move-object/from16 v17, v9

    int-to-float v9, v4

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move/from16 v18, v1

    int-to-float v1, v3

    mul-float/2addr v1, v13

    float-to-int v1, v1

    move/from16 v19, v2

    int-to-float v2, v4

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-direct {v15, v7, v9, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v15, v14, v6

    int-to-float v1, v3

    sub-float v2, v13, v12

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v7, 0x0

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v1, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v14, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-le v7, v14, :cond_109

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v14, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int/2addr v7, v14

    add-int/lit8 v14, v7, 0x1

    div-int/lit8 v14, v14, 0x2

    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v6

    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v14

    iput v15, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v6

    iget v15, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v14

    iput v15, v7, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v6

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_eb

    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v6

    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v2

    iput v15, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    const/4 v7, 0x0

    iput v7, v2, Landroid/graphics/Rect;->top:I

    :cond_eb
    iget-object v2, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v4, :cond_109

    iget-object v2, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget-object v15, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v15, v15, v6

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v4

    sub-int/2addr v7, v15

    iput v7, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    :cond_109
    int-to-float v2, v4

    sub-float v7, v11, v10

    mul-float/2addr v2, v7

    float-to-int v2, v2

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    goto/16 :goto_29

    :cond_11f
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v17, v9

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12d
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v17, v9

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of ScaledLayout should have a range of scaleStartCol between 0 and 1"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13b
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v17, v9

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_149
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v17, v9

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of ScaledLayout should have a range of scaleStartRow between 0 and 1"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_157
    move/from16 v18, v1

    move/from16 v19, v2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of ScaledLayout cannot have the UNSPECIFIED scale factors"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_163
    move/from16 v18, v1

    move/from16 v19, v2

    const/4 v1, 0x0

    new-array v2, v5, [I

    new-array v6, v5, [Landroid/graphics/Rect;

    const/4 v7, 0x0

    :goto_16d
    if-ge v7, v5, :cond_186

    invoke-virtual {v0, v7}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_183

    aput v1, v2, v1

    iget-object v8, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v8, v8, v7

    aput-object v8, v6, v1

    add-int/lit8 v1, v1, 0x1

    :cond_183
    add-int/lit8 v7, v7, 0x1

    goto :goto_16d

    :cond_186
    sget-object v7, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    const/4 v8, 0x0

    invoke-static {v6, v8, v1, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v7, 0x0

    :goto_18d
    add-int/lit8 v8, v1, -0x1

    if-ge v7, v8, :cond_1c5

    add-int/lit8 v8, v7, 0x1

    :goto_193
    if-ge v8, v1, :cond_1c2

    aget-object v9, v6, v7

    aget-object v10, v6, v8

    invoke-static {v9, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_1bf

    aget v9, v2, v7

    aput v9, v2, v8

    aget-object v9, v6, v8

    aget-object v10, v6, v8

    iget v10, v10, Landroid/graphics/Rect;->left:I

    aget-object v11, v6, v7

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    aget-object v12, v6, v8

    iget v12, v12, Landroid/graphics/Rect;->right:I

    aget-object v13, v6, v7

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    aget-object v14, v6, v8

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1bf
    add-int/lit8 v8, v8, 0x1

    goto :goto_193

    :cond_1c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_18d

    :cond_1c5
    add-int/lit8 v7, v1, -0x1

    :goto_1c7
    if-ltz v7, :cond_1fa

    aget-object v8, v6, v7

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_1f7

    aget-object v8, v6, v7

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    :goto_1d5
    if-gt v9, v7, :cond_1f7

    aget v10, v2, v7

    aget v11, v2, v9

    if-ne v10, v11, :cond_1f4

    aget-object v10, v6, v9

    aget-object v11, v6, v9

    iget v11, v11, Landroid/graphics/Rect;->left:I

    aget-object v12, v6, v9

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v8

    aget-object v13, v6, v9

    iget v13, v13, Landroid/graphics/Rect;->right:I

    aget-object v14, v6, v9

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v8

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1f4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d5

    :cond_1f7
    add-int/lit8 v7, v7, -0x1

    goto :goto_1c7

    :cond_1fa
    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual {v0, v7, v8}, Landroid/media/Cea708CCWidget$ScaledLayout;->setMeasuredDimension(II)V

    return-void
.end method
