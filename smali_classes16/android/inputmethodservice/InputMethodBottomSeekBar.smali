.class Landroid/inputmethodservice/InputMethodBottomSeekBar;
.super Lmiui/widget/SeekBar;
.source "InputMethodBottomSeekBar.java"


# instance fields
.field private mLocation:[I

.field private mSeekBarRealLength:I

.field private mSeekBarRealLocation:I

.field private mThumbLocationLeft:F

.field private mThumbLocationRight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getSeekBarRealLength()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mSeekBarRealLength:I

    return v0
.end method

.method public getSeekBarRealLocation()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mSeekBarRealLocation:I

    return v0
.end method

.method public getThumbLocationLeft()F
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mThumbLocationLeft:F

    return v0
.end method

.method public getThumbLocationRight()F
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mThumbLocationRight:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    invoke-super/range {p0 .. p5}, Lmiui/widget/SeekBar;->onLayout(ZIIII)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mLocation:[I

    const/4 v1, 0x2

    if-nez v0, :cond_c

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mLocation:[I

    :cond_c
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getLocationOnScreen([I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mLocation:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mSeekBarRealLength:I

    sub-int v4, v2, v3

    div-int/2addr v4, v1

    add-int/2addr v4, v0

    iput v4, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mSeekBarRealLocation:I

    int-to-float v1, v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v1, v5

    int-to-float v5, v4

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v7, v1, v6

    add-float/2addr v5, v7

    iput v5, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mThumbLocationLeft:F

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v6, v1

    sub-float/2addr v3, v6

    iput v3, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mThumbLocationRight:F

    return-void
.end method

.method public setThumbLocationLeft(F)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mThumbLocationLeft:F

    return-void
.end method

.method public setThumbLocationRight(F)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/InputMethodBottomSeekBar;->mThumbLocationRight:F

    return-void
.end method
