.class public Lcom/miui/internal/widget/ScrollingTabTextView;
.super Landroid/widget/TextView;
.source "ScrollingTabTextView.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mClipPosition:I

.field private mLeftToRight:Z

.field private mNormalColor:I

.field private mOriginColor:Landroid/content/res/ColorStateList;

.field private mSelectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->setupColors()V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/internal/widget/ScrollingTabTextView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mClipPosition:I

    return p1
.end method

.method private setupColors()V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/miui/internal/widget/ScrollingTabTextView;->ENABLED_STATE_SET:[I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$color;->action_bar_tab_text_color_normal_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mNormalColor:I

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/miui/internal/widget/ScrollingTabTextView;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$color;->action_bar_tab_text_color_selected_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mSelectedColor:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_80

    :cond_c
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mLeftToRight:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_16
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mLeftToRight:Z

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_20
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mNormalColor:I

    goto :goto_25

    :cond_23
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mSelectedColor:I

    :goto_25
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabTextView;->setTextColor(I)V

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mClipPosition:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getHeight()I

    move-result v5

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v6

    add-int/2addr v4, v6

    :cond_40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v6, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mNormalColor:I

    if-ne v0, v6, :cond_53

    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mSelectedColor:I

    goto :goto_59

    :cond_53
    iget v6, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mSelectedColor:I

    if-ne v0, v6, :cond_59

    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mNormalColor:I

    :cond_59
    :goto_59
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabTextView;->setTextColor(I)V

    iget v2, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mClipPosition:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getWidth()I

    move-result v4

    if-eqz v1, :cond_6e

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v6

    add-int/2addr v4, v6

    :cond_6e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v6, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v6}, Lcom/miui/internal/widget/ScrollingTabTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_80
    :goto_80
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->setupColors()V

    return-void
.end method

.method public startScrollAnimation(Z)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_c

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_f

    :cond_c
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_f
    iput-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mLeftToRight:Z

    if-eqz p1, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getWidth()I

    move-result v1

    goto :goto_1e

    :cond_19
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    :goto_1e
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/internal/widget/ScrollingTabTextView$1;

    invoke-direct {v3, p0}, Lcom/miui/internal/widget/ScrollingTabTextView$1;-><init>(Lcom/miui/internal/widget/ScrollingTabTextView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/internal/widget/ScrollingTabTextView$2;

    invoke-direct {v3, p0}, Lcom/miui/internal/widget/ScrollingTabTextView$2;-><init>(Lcom/miui/internal/widget/ScrollingTabTextView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
