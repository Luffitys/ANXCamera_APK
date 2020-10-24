.class public Lcom/android/camera/ui/DocumentView;
.super Landroid/view/View;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentView"

.field private static final THRESHOLD:I = 0x12


# instance fields
.field private isHidePath:Z

.field private mDisplaySize:Landroid/util/Size;

.field mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mLayerPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPreviewSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mLayerPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/android/camera/ui/DocumentView;->initPaint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mLayerPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/android/camera/ui/DocumentView;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, -0x31ea

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/DocumentView;->mLayerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/android/camera/ui/DocumentView;->mLayerPaint:Landroid/graphics/Paint;

    const v0, 0xfffce16

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public hideOrShowPath(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/DocumentView;->isHidePath:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/DocumentView;->clear()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/camera/ui/DocumentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/camera/ui/DocumentView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setDisplaySize(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplaySize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/ui/DocumentView;->mDisplaySize:Landroid/util/Size;

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public updateDocument(Landroid/util/Pair;)V
    .locals 9

    if-eqz p1, :cond_8

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    array-length v0, v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/ui/DocumentView;->isHidePath:Z

    if-nez v0, :cond_8

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_NOSHOW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    if-ne v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_UPDATE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v5, [Landroid/animation/PropertyValuesHolder;

    new-array v1, v5, [F

    const/4 v6, 0x0

    aput v6, v1, v4

    const-string v6, "alpha"

    invoke-static {v6, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    new-array v7, v5, [F

    aput v2, v7, v4

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v6, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v3, [Landroid/animation/Animator;

    aput-object v0, v7, v4

    aput-object v1, v7, v5

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/android/camera/Util;->getFlickerDuration()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mFlickerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    :goto_0
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mDisplaySize:Landroid/util/Size;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/DocumentView;->mDisplaySize:Landroid/util/Size;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/ui/DocumentView;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/ui/DocumentView;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_5

    array-length v2, p1

    move v7, v4

    :goto_3
    if-ge v7, v2, :cond_5

    aget v8, p1, v7

    mul-float/2addr v8, v6

    aput v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDocument: width = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", height = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", ratio = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", points = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "DocumentView"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v2, p1, v4

    const/high16 v7, 0x41900000    # 18.0f

    cmpg-float v2, v2, v7

    if-gez v2, :cond_6

    aget v2, p1, v5

    cmpg-float v2, v2, v7

    if-gez v2, :cond_6

    int-to-float v0, v0

    aget v2, p1, v3

    sub-float v2, v0, v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_6

    const/4 v2, 0x3

    aget v2, p1, v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_6

    const/4 v2, 0x4

    aget v2, p1, v2

    sub-float/2addr v0, v2

    cmpg-float v0, v0, v7

    if-gez v0, :cond_6

    int-to-float v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    sub-float v1, v0, v1

    cmpg-float v1, v1, v7

    if-gez v1, :cond_6

    const/4 v1, 0x6

    aget v1, p1, v1

    cmpg-float v1, v1, v7

    if-gez v1, :cond_6

    const/4 v1, 0x7

    aget v1, p1, v1

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v7

    if-gez v0, :cond_6

    const-string p1, "updateDocument: reset path"

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    aget v1, p1, v4

    aget v2, p1, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    array-length v0, p1

    div-int/2addr v0, v3

    move v1, v5

    :goto_5
    if-ge v1, v0, :cond_7

    mul-int/lit8 v2, v1, 0x2

    aget v3, p1, v2

    add-int/2addr v2, v5

    aget v2, p1, v2

    iget-object v4, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/android/camera/ui/DocumentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto :goto_4

    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/android/camera/ui/DocumentView;->clear()V

    return-void
.end method
