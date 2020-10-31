.class public Lmiui/widget/CheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "CheckedTextView.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final CHECK_MARK_PADDING:I


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mConstructed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/CheckedTextView;->mConstructed:Z

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/CheckedTextView;->mConstructed:Z

    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->appendCheckMarkPadding()V

    return-void
.end method

.method private appendCheckMarkPadding()V
    .registers 5

    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->getCheckWidth()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->getCheckWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingBottom()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/widget/CheckedTextView;->invokeSuperSetPaddingRelative(IIII)V

    :cond_1c
    return-void
.end method

.method private drawCheckMark(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingLeft()I

    move-result v2

    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->getCheckWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_31

    :cond_23
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    :goto_31
    nop

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v7, :cond_56

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingBottom()I

    move-result v8

    sub-int v6, v7, v8

    goto :goto_74

    :cond_56
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getGravity()I

    move-result v7

    and-int/lit8 v7, v7, 0x70

    const/16 v8, 0x10

    if-eq v7, v8, :cond_6c

    const/16 v8, 0x50

    if-eq v7, v8, :cond_65

    goto :goto_74

    :cond_65
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v7

    sub-int v3, v7, v6

    goto :goto_74

    :cond_6c
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v7

    invoke-static {v7, v6, v4, v5}, Lcom/miui/internal/widget/CheckedTextViewHelper;->getCheckMarkPositionY(IIII)I

    move-result v3

    :goto_74
    add-int v7, v2, v1

    add-int v8, v3, v6

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7e
    return-void
.end method

.method private getCheckWidth()I
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_10
    return v1
.end method

.method private invokeSuperSetPadding(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    return-void
.end method

.method private invokeSuperSetPaddingRelative(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->invalidate()V

    :cond_13
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/widget/CheckedTextView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_a
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CheckedTextView;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lmiui/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lmiui/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/CheckedTextView;->drawCheckMark(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->onMeasure(II)V

    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->getCheckWidth()I

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_23

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-le v2, v3, :cond_23

    move v2, v3

    :cond_23
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmiui/widget/CheckedTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    if-eqz p1, :cond_32

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v0, Lmiui/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->setMinHeight(I)V

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_32
    iput-object p1, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lmiui/widget/CheckedTextView;->mConstructed:Z

    if-eqz v0, :cond_3b

    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->appendCheckMarkPadding()V

    :cond_3b
    return-void
.end method

.method public setPadding(IIII)V
    .registers 7

    iput p3, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingRight()I

    move-result v0

    if-ne p3, v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->getCheckWidth()I

    move-result v0

    :goto_e
    add-int v1, p3, v0

    invoke-direct {p0, p1, p2, v1, p4}, Lmiui/widget/CheckedTextView;->invokeSuperSetPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 7

    iput p3, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingEnd()I

    move-result v0

    if-ne p3, v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->getCheckWidth()I

    move-result v0

    :goto_e
    add-int v1, p3, v0

    invoke-direct {p0, p1, p2, v1, p4}, Lmiui/widget/CheckedTextView;->invokeSuperSetPaddingRelative(IIII)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
