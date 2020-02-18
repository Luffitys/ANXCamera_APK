.class public Lcom/android/camera/ui/LightingView;
.super Landroid/view/View;
.source "LightingView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private faceViewRectF:Landroid/graphics/RectF;

.field private focusRectF:Landroid/graphics/RectF;

.field private mDisplayRectTopMargin:I

.field private mHeight:I

.field private mIsCinematicAspectRatio:Z

.field private mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

.field private mRotation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/LightingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/LightingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/LightingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    iget-object p1, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/LightingView;->faceViewRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/LightingView;->focusRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->clear()V

    return-void
.end method

.method public getFaceViewRectF()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->faceViewRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getFocusRectF()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->focusRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->clear()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/LightingView;->mWidth:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/LightingView;->mHeight:I

    iget p1, p0, Lcom/android/camera/ui/LightingView;->mWidth:I

    iget p2, p0, Lcom/android/camera/ui/LightingView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/android/camera/ui/LightingView;->mIsCinematicAspectRatio:Z

    const v0, 0x3f4ccccd    # 0.8f

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->setCircleRatio(F)V

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->setCircleRatio(F)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    iget p2, p0, Lcom/android/camera/ui/LightingView;->mWidth:I

    iget v1, p0, Lcom/android/camera/ui/LightingView;->mHeight:I

    iget v2, p0, Lcom/android/camera/ui/LightingView;->mRotation:I

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->setWidthHeight(III)V

    iget p1, p0, Lcom/android/camera/ui/LightingView;->mWidth:I

    iget p2, p0, Lcom/android/camera/ui/LightingView;->mHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const v1, 0x3f1374bc    # 0.576f

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/android/camera/ui/LightingView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    iget v2, p0, Lcom/android/camera/ui/LightingView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, p2

    mul-float/2addr v2, v0

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->focusRectF:Landroid/graphics/RectF;

    sub-float p2, v1, p1

    sub-float v0, v2, p1

    add-float/2addr v1, p1

    add-float/2addr v2, p1

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setCinematicAspectRatio(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/LightingView;->mIsCinematicAspectRatio:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setCircleHeightRatio(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->setCircleHeightRatio(F)V

    return-void
.end method

.method public setCircleRatio(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->setCircleRatio(F)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    iget p2, p0, Lcom/android/camera/ui/LightingView;->mRotation:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lcom/android/camera/ui/LightingView;->mRotation:I

    iget-object p1, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/ui/LightingView;->mRotation:I

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->updateMiddleValue(IZ)V

    :cond_0
    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/LightingView;->mRotation:I

    return-void
.end method

.method public triggerAnimateExit()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->animateExit()V

    return-void
.end method

.method public triggerAnimateFocusing()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->triggerFocusing()V

    return-void
.end method

.method public triggerAnimateStart()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->animateStart()V

    return-void
.end method

.method public triggerAnimateSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/LightingView;->mLightingAnimateDrawable:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->triggerSuccess()V

    return-void
.end method
