.class public Lmiui/widget/VerticalSeekBar;
.super Lmiui/widget/SeekBar;
.source "VerticalSeekBar.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/VerticalSeekBar;->setLayoutDirection(I)V

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v2

    sub-int v3, v2, v1

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    add-int v5, v2, v1

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v6, v2, v1

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .registers 14

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lmiui/widget/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getThumbOffset()I

    move-result v5

    sub-int/2addr v4, v2

    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v4, v6

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getMax()I

    move-result v6

    if-lez v6, :cond_49

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    goto :goto_4a

    :cond_49
    const/4 v7, 0x0

    :goto_4a
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v8

    invoke-static {v7, v4, v8, v5}, Lcom/miui/internal/widget/VerticalSeekBarHelper;->calcTop(FIII)I

    move-result v8

    sub-int v9, v3, v1

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    add-int v10, v9, v1

    add-int v11, v8, v2

    invoke-virtual {v0, v9, v8, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v10, p0, Lmiui/widget/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lmiui/widget/VerticalSeekBar;->drawProgress(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiui/widget/VerticalSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v3, v0, v1

    mul-float/2addr v3, v2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-super {p0, p1}, Lmiui/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method
