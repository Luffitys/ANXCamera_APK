.class public Lmiui/widget/SeekBar;
.super Landroid/widget/SeekBar;
.source ""


# instance fields
.field private mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;

.field private mForegroundPrimaryColor:I

.field private mForegroundPrimaryDisableColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/widget/ProgressBarDelegate;->postConstruct(Landroid/util/AttributeSet;I)V

    sget v0, Lcom/miui/internal/R$color;->progressPrimaryColor:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget v1, Lcom/miui/internal/R$color;->progressDisableColor:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    sget v4, Lmiui/R$attr;->seekBarProgressForegroundNormalColor:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lmiui/R$attr;->seekBarProgressForegroundDisableColor:I

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-virtual {v2, p2, v3, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lmiui/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$styleable;->ProgressBar_foregroundPrimaryColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryColor:I

    sget p2, Lcom/miui/internal/R$styleable;->ProgressBar_foregroundPrimaryDisableColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lmiui/widget/SeekBar$ColorUpdateRunner;

    invoke-direct {p1, p0}, Lmiui/widget/SeekBar$ColorUpdateRunner;-><init>(Lmiui/widget/SeekBar;)V

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method private declared-synchronized getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/widget/SeekBar;->mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;

    if-nez v0, :cond_0

    const-class v0, Landroid/widget/SeekBar;

    invoke-static {p0, v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->create(Landroid/widget/ProgressBar;Ljava/lang/Class;)Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SeekBar;->mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;

    :cond_0
    iget-object v0, p0, Lmiui/widget/SeekBar;->mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updatePrimaryColor()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryColor:I

    invoke-direct {p0, v0}, Lmiui/widget/SeekBar;->updateProgressDrawable(I)V

    iget v0, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    invoke-direct {p0, v0}, Lmiui/widget/SeekBar;->updateProgressDrawable(I)V

    iget v0, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    :goto_0
    invoke-direct {p0, v0}, Lmiui/widget/SeekBar;->updateThumbDrawable(I)V

    return-void
.end method

.method private updateProgressDrawable(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateThumbDrawable(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v3, 0x1020000

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->drawableStateChanged()V

    return-void
.end method

.method public getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->onSizeChanged(IIII)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-direct {p0}, Lmiui/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method public setForegroundPrimaryColor(II)V
    .locals 0

    iput p1, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryColor:I

    iput p2, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    invoke-direct {p0}, Lmiui/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setIndeterminate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public declared-synchronized setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
