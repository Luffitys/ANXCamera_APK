.class public Lmiui/view/MiuiKeyBoardView;
.super Landroid/widget/FrameLayout;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;,
        Lmiui/view/MiuiKeyBoardView$KeyButton;
    }
.end annotation


# static fields
.field private static final FUNC_KEY_RATIO:F = 1.6f

.field private static final HORIZONTAL_MARGIN_RATIO:F = 0.2f

.field private static final OK_KEY_RATIO:F = 2.8f

.field private static final PREVIEW_ANIMATION_DURATION:I = 0x64

.field private static final SHOW_PREVIEW_DURATION:J = 0x12cL

.field private static final SIZE_GROUP:[[F

.field private static final SPACE_KEY_RATIO:F = 5.8f

.field private static final SPACE_STR:Ljava/lang/String; = " "

.field private static final VERTICAL_MARGIN_RATIO:F = 0.17f


# instance fields
.field private mAllKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/view/MiuiKeyBoardView$KeyButton;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnCapsLock:Landroid/view/View;

.field private mBtnLetterDelete:Landroid/view/View;

.field private mBtnLetterOK:Landroid/view/View;

.field private mBtnLetterSpace:Landroid/view/View;

.field private mBtnSymbolDelete:Landroid/view/View;

.field private mBtnSymbolOK:Landroid/view/View;

.field private mBtnSymbolSpace:Landroid/view/View;

.field private mBtnToLetterBoard:Landroid/view/View;

.field private mBtnToSymbolBoard:Landroid/view/View;

.field private mConfirmHide:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mIsShowingPreview:Z

.field private mIsUpperMode:Z

.field private mKeyboardListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLetterBoard:Landroid/widget/FrameLayout;

.field private mPopupViewHeight:I

.field private mPopupViewWidth:I

.field private mPopupViewX:I

.field private mPopupViewY:I

.field private mPreviewText:Landroid/widget/TextView;

.field private final mSendDeleteActionRunnable:Ljava/lang/Runnable;

.field private mShowPreviewAnimator:Landroid/animation/ValueAnimator;

.field private mShowPreviewLastTime:J

.field private mShrinkToBottonAnimation:Landroid/view/animation/Animation;

.field private mStretchFromBottonAnimation:Landroid/view/animation/Animation;

.field private mSymbolBoard:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [[F

    const/16 v1, 0xa

    new-array v1, v1, [F

    fill-array-data v1, :array_2a

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x9

    new-array v2, v1, [F

    fill-array-data v2, :array_42

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_58

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_6e

    aput-object v2, v0, v1

    sput-object v0, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    return-void

    :array_2a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_42
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_58
    .array-data 4
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_6e
    .array-data 4
        0x40333333    # 2.8f
        0x40b9999a    # 5.8f
        0x40333333    # 2.8f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/view/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    iput-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lmiui/view/MiuiKeyBoardView$1;

    invoke-direct {v0, p0}, Lmiui/view/MiuiKeyBoardView$1;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lmiui/view/MiuiKeyBoardView$2;

    invoke-direct {v0, p0}, Lmiui/view/MiuiKeyBoardView$2;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v0, 0x110b0022

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0x110b0034

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0x110b001f

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method static synthetic access$000(Lmiui/view/MiuiKeyBoardView;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardDelete()V

    return-void
.end method

.method static synthetic access$100(Lmiui/view/MiuiKeyBoardView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V

    return-void
.end method

.method static synthetic access$200(Lmiui/view/MiuiKeyBoardView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method private calcAndStartShowPreviewAnim(Landroid/view/View;)V
    .registers 9

    instance-of v0, p1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ffb333333333333L    # 1.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Lmiui/view/MiuiKeyBoardView;->getChildCoordRelativeToKeyboard(Landroid/view/View;[FZZ)F

    aget v4, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v0

    int-to-float v0, v5

    add-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    aget v0, v1, v3

    iget v4, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e2e147b    # 0.17f

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    invoke-direct {p0, v3}, Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_73
    return-void
.end method

.method private getChildCoordRelativeToKeyboard(Landroid/view/View;[FZZ)F
    .registers 13

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p2, v1

    const/4 v3, 0x0

    aput v2, p2, v3

    if-eqz p3, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v0, v2

    aget v2, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    aput v2, p2, v3

    aget v2, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    aput v2, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_2f
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_69

    if-eq v2, p0, :cond_69

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    if-eqz p3, :cond_46

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v0, v5

    :cond_46
    aget v5, p2, v3

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, p2, v3

    aget v5, p2, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, p2, v1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_2f

    :cond_69
    if-eqz p4, :cond_8a

    aget v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v0

    mul-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    aput v4, p2, v3

    aget v3, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v6, v0

    mul-float/2addr v4, v6

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    aput v3, p2, v1

    :cond_8a
    return v0
.end method

.method private onKeyBoardDelete()V
    .registers 3

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    invoke-interface {v1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onKeyBoardDelete()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private onKeyBoardOK()V
    .registers 3

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    invoke-interface {v1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onKeyBoardOK()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private onText(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    invoke-interface {v1, p1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lmiui/view/MiuiKeyBoardView$KeyButton;

    if-eqz v3, :cond_1e

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_1e
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_28

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2b
    return-void
.end method

.method private shiftLetterBoard()V
    .registers 6

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_44

    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_44

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v4, 0x0

    aget-char v2, v2, v4

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-boolean v2, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v2, :cond_3d

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_3d
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :goto_41
    invoke-virtual {v1, v2}, Lmiui/view/MiuiKeyBoardView$KeyButton;->setText(Ljava/lang/CharSequence;)V

    :cond_44
    goto :goto_6

    :cond_45
    iget-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v1, 0x11070106

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5d

    :cond_55
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v1, 0x11070105

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_5d
    return-void
.end method

.method private showLetterBoard(Z)V
    .registers 6

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_11

    move v1, v2

    :cond_11
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private showPreviewAnim(Z)V
    .registers 5

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x2

    if-eqz p1, :cond_22

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_66

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2c

    :cond_22
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_6e

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_2c
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/MiuiKeyBoardView$3;

    invoke-direct {v1, p0}, Lmiui/view/MiuiKeyBoardView$3;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean p1, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    if-eqz p1, :cond_65

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    :cond_65
    return-void

    :array_66
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public addKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V
    .registers 5

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-void

    :cond_19
    goto :goto_6

    :cond_1a
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hide()V
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V
    .registers 26

    move/from16 v0, p3

    move/from16 v1, p4

    sget-object v2, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    array-length v2, v2

    const/4 v3, 0x0

    move-object/from16 v4, p0

    iget v5, v4, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v2, :cond_82

    sget-object v7, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    aget-object v7, v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_15
    array-length v10, v7

    if-ge v9, v10, :cond_20

    aget v10, v7, v9

    int-to-float v11, v0

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_20
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v9, v1

    int-to-float v9, v9

    add-float/2addr v8, v9

    move/from16 v9, p2

    int-to-float v10, v9

    sub-float/2addr v10, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v11, 0x0

    :goto_2f
    array-length v12, v7

    if-ge v11, v12, :cond_76

    move-object/from16 v12, p1

    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lmiui/view/MiuiKeyBoardView$KeyButton;

    move v14, v10

    invoke-virtual {v13}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    move/from16 v16, v2

    const-string v2, "!"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    int-to-float v2, v14

    int-to-float v15, v0

    aget v17, v7, v11

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v17, v17, v18

    mul-float v15, v15, v17

    add-float/2addr v2, v15

    float-to-int v14, v2

    :cond_55
    int-to-float v2, v10

    int-to-float v15, v0

    aget v17, v7, v11

    mul-float v15, v15, v17

    add-float/2addr v2, v15

    float-to-int v2, v2

    add-int v15, v5, p5

    invoke-virtual {v13, v14, v5, v2, v15}, Lmiui/view/MiuiKeyBoardView$KeyButton;->layout(IIII)V

    int-to-float v2, v10

    int-to-float v15, v0

    aget v17, v7, v11

    mul-float v15, v15, v17

    int-to-float v0, v1

    add-float/2addr v15, v0

    add-float/2addr v2, v15

    float-to-int v10, v2

    nop

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p3

    move/from16 v2, v16

    goto :goto_2f

    :cond_76
    move-object/from16 v12, p1

    move/from16 v16, v2

    add-int v0, p6, p5

    add-int/2addr v5, v0

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p3

    goto :goto_d

    :cond_82
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_10
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    if-ne p1, v0, :cond_f

    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->shiftLetterBoard()V

    goto :goto_54

    :cond_f
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    if-ne p1, v0, :cond_18

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->showLetterBoard(Z)V

    goto :goto_54

    :cond_18
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    if-ne p1, v0, :cond_21

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->showLetterBoard(Z)V

    goto :goto_54

    :cond_21
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v0, :cond_51

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v0, :cond_2a

    goto :goto_51

    :cond_2a
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    if-eq p1, v0, :cond_4d

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    if-ne p1, v0, :cond_33

    goto :goto_4d

    :cond_33
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    if-eq p1, v0, :cond_47

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    if-ne p1, v0, :cond_3c

    goto :goto_47

    :cond_3c
    move-object v0, p1

    check-cast v0, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v0}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_54

    :cond_47
    :goto_47
    const-string v0, " "

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_54

    :cond_4d
    :goto_4d
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardOK()V

    goto :goto_54

    :cond_51
    :goto_51
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardDelete()V

    :goto_54
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1106008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    const v1, 0x1106008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingLeft:I

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x11010024

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x11010023

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setClipToPadding(Z)V

    const v2, 0x11090094

    invoke-virtual {p0, v2}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    const v2, 0x11090077

    invoke-virtual {p0, v2}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v1, 0x11090027

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v1, 0x11090029

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    const v1, 0x1109002d

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    const v1, 0x1109002b

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    const v1, 0x1109002a

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    const v1, 0x1109007a

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v1, 0x1109002e

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    const v1, 0x1109002c

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    const v1, 0x11090030

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    const v1, 0x1109002f

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 20

    move-object v7, p0

    sub-int v8, p4, p2

    sub-int v9, p5, p3

    iget v0, v7, Lmiui/view/MiuiKeyBoardView;->mPaddingLeft:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v8, v0

    sget-object v1, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    div-float/2addr v0, v1

    float-to-int v10, v0

    int-to-float v0, v10

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v11, v0

    iget v0, v7, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v9, v0

    sget-object v3, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    array-length v3, v3

    div-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const v3, 0x3f95c28f    # 1.17f

    div-float/2addr v0, v3

    float-to-int v12, v0

    int-to-float v0, v12

    mul-float/2addr v0, v1

    float-to-int v13, v0

    iget-object v0, v7, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    sub-int v1, p5, p3

    invoke-virtual {v0, v2, v2, v8, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v0, v7, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    sub-int v1, p5, p3

    invoke-virtual {v0, v2, v2, v8, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v1, v7, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    move-object v0, p0

    move v2, v8

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Lmiui/view/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V

    iget-object v1, v7, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    invoke-virtual/range {v0 .. v6}, Lmiui/view/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V

    iget-object v0, v7, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, v7, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    iget v2, v7, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    iget v3, v7, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    add-int/2addr v3, v1

    iget v4, v7, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    if-eq v0, v1, :cond_13

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    goto :goto_61

    :cond_13
    const-wide/16 v1, 0x12c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    iget-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_2a

    move-wide v4, v1

    :cond_2a
    invoke-virtual {p0, v3, v4, v5}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2d
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v3, :cond_35

    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v3, :cond_61

    :cond_35
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lmiui/view/MiuiKeyBoardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_61

    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_52

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_52

    invoke-direct {p0, p1}, Lmiui/view/MiuiKeyBoardView;->calcAndStartShowPreviewAnim(Landroid/view/View;)V

    :cond_52
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v1, :cond_5a

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v1, :cond_61

    :cond_5a
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_61
    :goto_61
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public removeKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public show()V
    .registers 3

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->shiftLetterBoard()V

    :cond_13
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
