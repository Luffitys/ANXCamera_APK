.class Lcom/miui/internal/widget/ArrowPopupView$3;
.super Landroid/view/ViewOutlineProvider;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x2

    if-le v0, p1, :cond_1

    sub-int/2addr v0, p1

    div-int/2addr v0, v2

    iget p1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->left:I

    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    div-int/2addr p1, v2

    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/miui/internal/R$dimen;->arrow_popup_triangle_corners:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {p0}, Lcom/miui/internal/widget/ArrowPopupView;->access$500(Lcom/miui/internal/widget/ArrowPopupView;)I

    move-result p0

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-eq p0, v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    iget p0, v1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget p0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, p0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int v7, v5, v6

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, p0

    int-to-float p0, v4

    div-float/2addr v5, p0

    mul-float/2addr v5, v3

    add-float p0, v2, v0

    mul-float/2addr v0, v5

    sub-float v3, v7, v0

    invoke-virtual {p1, p0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v0, v7

    invoke-virtual {p1, v2, v7, p0, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    :cond_3
    iget p0, v1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget p0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, p0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int v7, v5, v6

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v4

    int-to-float p0, p0

    div-float/2addr v5, p0

    mul-float/2addr v5, v3

    sub-float p0, v2, v0

    mul-float/2addr v0, v5

    sub-float v3, v7, v0

    invoke-virtual {p1, p0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v0, v7

    invoke-virtual {p1, v2, v7, p0, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget p0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_4
    iget p0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int v3, p0, v2

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v5

    sub-int/2addr p0, v2

    int-to-float p0, p0

    div-float/2addr p0, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    div-float/2addr p0, v5

    int-to-float v2, v2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float/2addr p0, v0

    sub-float v2, v3, p0

    add-float/2addr v0, v6

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr p0, v3

    invoke-virtual {p1, v3, v6, p0, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_1
    iget p0, v1, Landroid/graphics/Rect;->right:I

    :goto_2
    int-to-float p0, p0

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_4

    :cond_5
    const-string p0, "ArrowPopupView"

    const-string p1, "outline path is not convex"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    :cond_6
    :goto_4
    return-void
.end method
