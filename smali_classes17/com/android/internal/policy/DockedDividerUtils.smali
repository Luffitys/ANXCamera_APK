.class public Lcom/android/internal/policy/DockedDividerUtils;
.super Ljava/lang/Object;
.source "DockedDividerUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1e

    if-eq p1, v1, :cond_1b

    const/4 v3, 0x3

    if-eq p1, v3, :cond_16

    const/4 v3, 0x4

    if-eq p1, v3, :cond_11

    goto :goto_21

    :cond_11
    add-int v3, p0, p5

    iput v3, p2, Landroid/graphics/Rect;->top:I

    goto :goto_21

    :cond_16
    add-int v3, p0, p5

    iput v3, p2, Landroid/graphics/Rect;->left:I

    goto :goto_21

    :cond_1b
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_21

    :cond_1e
    iput p0, p2, Landroid/graphics/Rect;->right:I

    nop

    :goto_21
    if-eq p1, v2, :cond_25

    if-ne p1, v1, :cond_26

    :cond_25
    move v0, v2

    :cond_26
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public static calculateMiddlePosition(ZLandroid/graphics/Rect;III)I
    .registers 9

    if-eqz p0, :cond_5

    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :cond_5
    iget v0, p1, Landroid/graphics/Rect;->left:I

    :goto_7
    if-eqz p0, :cond_e

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    goto :goto_12

    :cond_e
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    :goto_12
    nop

    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    div-int/lit8 v3, p4, 0x2

    sub-int/2addr v2, v3

    return v2
.end method

.method public static calculatePositionForBounds(Landroid/graphics/Rect;II)I
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    return v0

    :cond_12
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    return v0

    :cond_16
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    return v0

    :cond_19
    iget v0, p0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public static getDividerInsets(Landroid/content/res/Resources;)I
    .registers 2

    const v0, 0x1050118

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getDividerSize(Landroid/content/res/Resources;I)I
    .registers 4

    const v0, 0x1050119

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    sub-int v1, v0, v1

    return v1
.end method

.method public static getDockSide(II)I
    .registers 3

    if-le p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    return v0
.end method

.method public static invertDockSide(I)I
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_11

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq p0, v3, :cond_10

    if-eq p0, v0, :cond_f

    if-eq p0, v2, :cond_e

    const/4 v0, -0x1

    return v0

    :cond_e
    return v3

    :cond_f
    return v1

    :cond_10
    return v2

    :cond_11
    return v0
.end method

.method public static sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .registers 4

    if-eqz p1, :cond_1b

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_e

    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_e
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_33

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_33

    :cond_1b
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_27

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    :cond_27
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_33

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    :cond_33
    :goto_33
    return-void
.end method
