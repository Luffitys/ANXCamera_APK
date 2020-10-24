.class public Lcom/android/camera/ui/AutoHibernationView;
.super Landroid/view/View;
.source ""


# instance fields
.field private mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/camera/ui/AutoHibernationView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/camera/ui/AutoHibernationView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/camera/ui/AutoHibernationView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    new-instance v0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->cancelAnimation()V

    iget-object p0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->draw(Landroid/graphics/Canvas;)V

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

    iput p1, p0, Lcom/android/camera/ui/AutoHibernationView;->mWidth:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/AutoHibernationView;->mHeight:I

    iget p2, p0, Lcom/android/camera/ui/AutoHibernationView;->mWidth:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/android/camera/ui/AutoHibernationView;->mWidth:I

    int-to-float p2, p2

    iget p0, p0, Lcom/android/camera/ui/AutoHibernationView;->mHeight:I

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->setWidthHeight(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startRecord(JFZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->startRecord(JFZ)V

    :cond_0
    return-void
.end method

.method public startRecordForFastmotion(IFZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->startRecordForFastmotion(IFZ)V

    :cond_0
    return-void
.end method
