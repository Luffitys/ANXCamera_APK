.class Lmiui/widget/DynamicListView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field private mEvaluateRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView$1;->mEvaluateRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lmiui/widget/DynamicListView$1;->mEvaluateRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1, v2, p1}, Lmiui/widget/DynamicListView$1;->interpolate(IIF)I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2, v3, p1}, Lmiui/widget/DynamicListView$1;->interpolate(IIF)I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3, v4, p1}, Lmiui/widget/DynamicListView$1;->interpolate(IIF)I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p2, p3, p1}, Lmiui/widget/DynamicListView$1;->interpolate(IIF)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lmiui/widget/DynamicListView$1;->mEvaluateRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Landroid/graphics/Rect;

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/DynamicListView$1;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public interpolate(IIF)I
    .locals 0

    int-to-float p0, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p3, p1

    add-float/2addr p0, p3

    float-to-int p0, p0

    return p0
.end method
