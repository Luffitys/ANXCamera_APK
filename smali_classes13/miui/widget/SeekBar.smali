.class public Lmiui/widget/SeekBar;
.super Landroid/widget/SeekBar;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/SeekBar$ColorUpdateRunner;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;

.field private mForegroundPrimaryColor:I

.field private mForegroundPrimaryDisableColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

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

    move-result v3

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v6, Lmiui/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v6, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v6, Lcom/miui/internal/R$styleable;->ProgressBar_foregroundPrimaryColor:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryColor:I

    sget v6, Lcom/miui/internal/R$styleable;->ProgressBar_foregroundPrimaryDisableColor:I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v6, Lmiui/widget/SeekBar$ColorUpdateRunner;

    invoke-direct {v6, p0}, Lmiui/widget/SeekBar$ColorUpdateRunner;-><init>(Lmiui/widget/SeekBar;)V

    invoke-virtual {p0, v6}, Lmiui/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/SeekBar;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method private declared-synchronized getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/widget/SeekBar;->mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;

    if-nez v0, :cond_d

    const-class v0, Landroid/widget/SeekBar;

    invoke-static {p0, v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->create(Landroid/widget/ProgressBar;Ljava/lang/Class;)Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SeekBar;->mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;

    :cond_d
    iget-object v0, p0, Lmiui/widget/SeekBar;->mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updatePrimaryColor()V
    .registers 2

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryColor:I

    invoke-direct {p0, v0}, Lmiui/widget/SeekBar;->updateProgressDrawable(I)V

    iget v0, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryColor:I

    invoke-direct {p0, v0}, Lmiui/widget/SeekBar;->updateThumbDrawable(I)V

    goto :goto_1b

    :cond_11
    iget v0, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    invoke-direct {p0, v0}, Lmiui/widget/SeekBar;->updateProgressDrawable(I)V

    iget v0, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    invoke-direct {p0, v0}, Lmiui/widget/SeekBar;->updateThumbDrawable(I)V

    :goto_1b
    return-void
.end method

.method private updateProgressDrawable(I)V
    .registers 11

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_31

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_31

    aget-object v5, v2, v4

    instance-of v6, v5, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_2e

    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    const v7, 0x102000d

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, p1, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_31
    return-void
.end method

.method private updateThumbDrawable(I)V
    .registers 11

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_32

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_32

    aget-object v5, v2, v4

    instance-of v6, v5, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_2f

    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v7, 0x1020000

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_2f

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, p1, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_32
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->drawableStateChanged()V

    return-void
.end method

.method public getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->onSizeChanged(IIII)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-direct {p0}, Lmiui/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method public setForegroundPrimaryColor(II)V
    .registers 3

    iput p1, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryColor:I

    iput p2, p0, Lmiui/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    invoke-direct {p0}, Lmiui/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setIndeterminate(Z)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public declared-synchronized setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lmiui/widget/SeekBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
