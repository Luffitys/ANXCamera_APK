.class public Landroid/text/method/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/Touch$DragState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .registers 5

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/Touch$DragState;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    array-length v1, v0

    if-lez v1, :cond_15

    aget-object v1, v0, v2

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollX:I

    goto :goto_16

    :cond_15
    const/4 v1, -0x1

    :goto_16
    return v1
.end method

.method public static getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .registers 5

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/Touch$DragState;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    array-length v1, v0

    if-lez v1, :cond_15

    aget-object v1, v0, v2

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollY:I

    goto :goto_16

    :cond_15
    const/4 v1, -0x1

    :goto_16
    return v1
.end method

.method public static onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 15

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11c

    if-eq v0, v1, :cond_f9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f

    goto/16 :goto_f8

    :cond_f
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    array-length v3, v0

    if-lez v3, :cond_f8

    aget-object v3, v0, v2

    iget-boolean v3, v3, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-nez v3, :cond_58

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-gez v4, :cond_54

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_58

    :cond_54
    aget-object v4, v0, v2

    iput-boolean v1, v4, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    :cond_58
    aget-object v3, v0, v2

    iget-boolean v3, v3, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-eqz v3, :cond_f8

    aget-object v3, v0, v2

    iput-boolean v1, v3, Landroid/text/method/Touch$DragState;->mUsed:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/2addr v3, v1

    if-nez v3, :cond_7a

    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v1, :cond_7a

    const/16 v3, 0x800

    invoke-static {p1, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_78

    goto :goto_7a

    :cond_78
    move v3, v2

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v3, v1

    :goto_7b
    if-eqz v3, :cond_90

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    aget-object v6, v0, v2

    iget v6, v6, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v5, v6

    goto :goto_a2

    :cond_90
    aget-object v4, v0, v2

    iget v4, v4, Landroid/text/method/Touch$DragState;->mX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    :goto_a2
    aget-object v6, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, v6, Landroid/text/method/Touch$DragState;->mX:F

    aget-object v6, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, v6, Landroid/text/method/Touch$DragState;->mY:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    float-to-int v7, v4

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v7

    float-to-int v8, v5

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    sub-int/2addr v11, v8

    sub-int/2addr v10, v11

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    invoke-static {p0, v9, v6, v2}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v11

    if-ne v7, v11, :cond_f4

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v11

    if-eq v10, v11, :cond_f7

    :cond_f4
    invoke-virtual {p0}, Landroid/widget/TextView;->cancelLongPress()V

    :cond_f7
    return v1

    :cond_f8
    :goto_f8
    return v2

    :cond_f9
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    const/4 v3, 0x0

    :goto_106
    array-length v4, v0

    if-ge v3, v4, :cond_111

    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_106

    :cond_111
    array-length v3, v0

    if-lez v3, :cond_11b

    aget-object v3, v0, v2

    iget-boolean v3, v3, Landroid/text/method/Touch$DragState;->mUsed:Z

    if-eqz v3, :cond_11b

    return v1

    :cond_11b
    return v2

    :cond_11c
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    const/4 v3, 0x0

    :goto_129
    array-length v4, v0

    if-ge v3, v4, :cond_134

    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_129

    :cond_134
    new-instance v3, Landroid/text/method/Touch$DragState;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/text/method/Touch$DragState;-><init>(FFII)V

    const/16 v4, 0x11

    invoke-interface {p1, v3, v2, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return v1
.end method

.method public static scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V
    .registers 16

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-lez v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v6, p3

    sub-int/2addr v6, v5

    invoke-virtual {p1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    const v7, 0x7fffffff

    const/4 v8, 0x0

    move v9, v2

    :goto_3d
    if-gt v9, v6, :cond_56

    int-to-float v10, v7

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    float-to-int v7, v10

    int-to-float v10, v8

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    :cond_56
    goto :goto_59

    :cond_57
    const/4 v7, 0x0

    move v8, v1

    :goto_59
    sub-int v5, v8, v7

    if-ge v5, v1, :cond_7f

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v3, v6, :cond_68

    sub-int v6, v1, v5

    div-int/lit8 v6, v6, 0x2

    sub-int p2, v7, v6

    goto :goto_89

    :cond_68
    if-eqz v4, :cond_6e

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-eq v3, v6, :cond_78

    :cond_6e
    if-nez v4, :cond_74

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v3, v6, :cond_78

    :cond_74
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v3, v6, :cond_7d

    :cond_78
    sub-int v6, v1, v5

    sub-int p2, v7, v6

    goto :goto_89

    :cond_7d
    move p2, v7

    goto :goto_89

    :cond_7f
    sub-int v6, v8, v1

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_89
    invoke-virtual {p0, p2, p3}, Landroid/widget/TextView;->scrollTo(II)V

    return-void
.end method
