.class public Lcom/android/camera/ui/vv/VVProgressView;
.super Landroid/view/View;
.source "VVProgressView.java"


# instance fields
.field private mHeight:I

.field private mWidth:I

.field private progressDrawable:Lcom/android/camera/ui/vv/VVProgressDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/vv/VVProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/vv/VVProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/vv/VVProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/camera/ui/vv/VVProgressDrawable;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/vv/VVProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/vv/VVProgressView;->progressDrawable:Lcom/android/camera/ui/vv/VVProgressDrawable;

    iget-object p1, p0, Lcom/android/camera/ui/vv/VVProgressView;->progressDrawable:Lcom/android/camera/ui/vv/VVProgressDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/camera/ui/vv/VVProgressView;->progressDrawable:Lcom/android/camera/ui/vv/VVProgressDrawable;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/camera/ui/vv/VVProgressView;->progressDrawable:Lcom/android/camera/ui/vv/VVProgressDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/vv/VVProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/vv/VVProgressView;->mWidth:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/vv/VVProgressView;->mHeight:I

    iget p1, p0, Lcom/android/camera/ui/vv/VVProgressView;->mWidth:I

    iget p2, p0, Lcom/android/camera/ui/vv/VVProgressView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/android/camera/ui/vv/VVProgressView;->progressDrawable:Lcom/android/camera/ui/vv/VVProgressDrawable;

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/android/camera/ui/vv/VVProgressView;->mWidth:I

    int-to-float p2, p2

    iget p0, p0, Lcom/android/camera/ui/vv/VVProgressView;->mHeight:I

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Lcom/android/camera/ui/vv/VVProgressDrawable;->setWidthHeight(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDurationList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/vv/VVProgressView;->progressDrawable:Lcom/android/camera/ui/vv/VVProgressDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/vv/VVProgressDrawable;->setDurationList(Ljava/util/List;)V

    return-void
.end method

.method public updateDuration(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressView;->progressDrawable:Lcom/android/camera/ui/vv/VVProgressDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/vv/VVProgressDrawable;->updateDuration(IJ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
