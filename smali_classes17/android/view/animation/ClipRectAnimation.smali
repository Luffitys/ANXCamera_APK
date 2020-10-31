.class public Landroid/view/animation/ClipRectAnimation;
.super Landroid/view/animation/Animation;
.source "ClipRectAnimation.java"


# instance fields
.field private mFromBottomType:I

.field private mFromBottomValue:F

.field private mFromLeftType:I

.field private mFromLeftValue:F

.field protected final mFromRect:Landroid/graphics/Rect;

.field private mFromRightType:I

.field private mFromRightValue:F

.field private mFromTopType:I

.field private mFromTopValue:F

.field private mToBottomType:I

.field private mToBottomValue:F

.field private mToLeftType:I

.field private mToLeftValue:F

.field protected final mToRect:Landroid/graphics/Rect;

.field private mToRightType:I

.field private mToRightValue:F

.field private mToTopType:I

.field private mToTopValue:F


# direct methods
.method public constructor <init>(IIIIIIII)V
    .registers 11

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p5, p6, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, v1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    sget-object v1, Lcom/android/internal/R$styleable;->ClipRectAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v2

    iget v3, v2, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    iget v3, v2, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftValue:F

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v2

    iget v3, v2, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    iget v3, v2, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopValue:F

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v2

    iget v3, v2, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    iget v3, v2, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightValue:F

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomValue:F

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftValue:F

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToTopValue:F

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToRightValue:F

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomValue:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    if-eqz p1, :cond_4f

    if-eqz p2, :cond_4f

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftValue:F

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopValue:F

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightValue:F

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomValue:F

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftValue:F

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToTopValue:F

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRightValue:F

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomValue:F

    return-void

    :cond_4f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected non-null animation clip rects"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 9

    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    return-void
.end method

.method public initialize(IIII)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftType:I

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromLeftValue:F

    invoke-virtual {p0, v1, v2, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopType:I

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromTopValue:F

    invoke-virtual {p0, v2, v3, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightType:I

    iget v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRightValue:F

    invoke-virtual {p0, v3, v4, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomType:I

    iget v5, p0, Landroid/view/animation/ClipRectAnimation;->mFromBottomValue:F

    invoke-virtual {p0, v4, v5, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftType:I

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mToLeftValue:F

    invoke-virtual {p0, v1, v2, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/view/animation/ClipRectAnimation;->mToTopType:I

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mToTopValue:F

    invoke-virtual {p0, v2, v3, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroid/view/animation/ClipRectAnimation;->mToRightType:I

    iget v4, p0, Landroid/view/animation/ClipRectAnimation;->mToRightValue:F

    invoke-virtual {p0, v3, v4, p1, p3}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomType:I

    iget v5, p0, Landroid/view/animation/ClipRectAnimation;->mToBottomValue:F

    invoke-virtual {p0, v4, v5, p2, p4}, Landroid/view/animation/ClipRectAnimation;->resolveSize(IFII)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
