.class Lcom/miui/internal/widget/ArrowPopupView$3;
.super Landroid/view/ViewOutlineProvider;
.source "ArrowPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ArrowPopupView;->addShadow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 15

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_134

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_134

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x2

    if-le v0, v1, :cond_2d

    sub-int v4, v0, v1

    div-int/2addr v4, v3

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v4

    iput v5, v2, Landroid/graphics/Rect;->right:I

    goto :goto_3a

    :cond_2d
    sub-int v4, v1, v0

    div-int/2addr v4, v3

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iput v5, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v4

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    :goto_3a
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v5}, Lcom/miui/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/miui/internal/R$dimen;->arrow_popup_triangle_corners:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I
    invoke-static {v7}, Lcom/miui/internal/widget/ArrowPopupView;->access$500(Lcom/miui/internal/widget/ArrowPopupView;)I

    move-result v7

    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v7, v8, :cond_e2

    const/high16 v8, 0x3f800000    # 1.0f

    if-eq v7, v3, :cond_a4

    const/4 v3, 0x3

    if-eq v7, v3, :cond_65

    goto/16 :goto_11f

    :cond_65
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v4, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v10

    int-to-float v7, v7

    div-float/2addr v7, v9

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v9

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v11

    int-to-float v9, v9

    div-float/2addr v10, v9

    mul-float v6, v10, v8

    add-float v8, v3, v5

    mul-float v9, v5, v6

    sub-float v9, v7, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v8, v3, v5

    mul-float v9, v5, v6

    add-float/2addr v9, v7

    invoke-virtual {v4, v3, v7, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v8, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_11f

    :cond_a4
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v4, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v10

    int-to-float v7, v7

    div-float/2addr v7, v9

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v9

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v11

    int-to-float v9, v9

    div-float/2addr v10, v9

    mul-float v6, v10, v8

    sub-float v8, v3, v5

    mul-float v9, v5, v6

    sub-float v9, v7, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v8, v3, v5

    mul-float v9, v5, v6

    add-float/2addr v9, v7

    invoke-virtual {v4, v3, v7, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_11f

    :cond_e2
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    div-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v6, v8, v9

    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v8, v5, v6

    sub-float v8, v3, v8

    add-float v9, v7, v5

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v8, v5, v6

    add-float/2addr v8, v3

    add-float v9, v7, v5

    invoke-virtual {v4, v3, v7, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v8, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    nop

    :goto_11f
    invoke-virtual {v4}, Landroid/graphics/Path;->isConvex()Z

    move-result v3

    if-eqz v3, :cond_129

    invoke-virtual {p2, v4}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_133

    :cond_129
    const-string v3, "ArrowPopupView"

    const-string v7, "outline path is not convex"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v2}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    :goto_133
    return-void

    :cond_134
    :goto_134
    return-void
.end method
