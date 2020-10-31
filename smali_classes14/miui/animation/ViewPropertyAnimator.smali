.class public Lmiui/animation/ViewPropertyAnimator;
.super Landroid/animation/Animator;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/ViewPropertyAnimator$Builder;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0x200

.field public static final CURRENT_HALF_HEIGHT:F = 0.01f

.field public static final CURRENT_HALF_WIDTH:F = 0.007f

.field public static final CURRENT_HEIGHT:F = 0.008f

.field public static final CURRENT_HEIGHT_NEGATIVE:F = 0.009f

.field public static final CURRENT_VALUE:F = 3.4028235E38f

.field public static final CURRENT_WIDTH:F = 0.005f

.field public static final CURRENT_WIDTH_NEGATIVE:F = 0.006f

.field private static final DISPLAY_METRICES_HEIGHT:I

.field private static final DISPLAY_METRICES_WIDTH:I

.field public static final NO_FINAL_VALUE:F = 1.4E-45f

.field public static final NO_FINAL_VISIBILITY:I = -0x1

.field public static final OUT_BOTTOM_SCREEN:F = 0.002f

.field public static final OUT_LEFT_SCREEN:F = 0.003f

.field public static final OUT_RIGHT_SCREEN:F = 0.004f

.field public static final OUT_TOP_SCREEN:F = 0.001f

.field public static final ROTATION:I = 0x10

.field public static final ROTATION_X:I = 0x20

.field public static final ROTATION_Y:I = 0x40

.field public static final SCALE_X:I = 0x4

.field public static final SCALE_Y:I = 0x8

.field public static final TRANSLATION_X:I = 0x1

.field public static final TRANSLATION_Y:I = 0x2

.field public static final X:I = 0x80

.field public static final Y:I = 0x100

.field private static final mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mFinalValue:F

.field private mFinalVisibility:I

.field private mFromValue:F

.field private mProperty:I

.field private mToValue:F

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lmiui/animation/ViewPropertyAnimator;->DISPLAY_METRICES_WIDTH:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lmiui/animation/ViewPropertyAnimator;->DISPLAY_METRICES_HEIGHT:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/animation/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IFF)V
    .registers 8

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    iput v1, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    const/4 v1, 0x1

    iput v1, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    iput-object p1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    iput p2, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    iput p3, p0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    iput p4, p0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    new-instance v1, Lmiui/animation/ViewPropertyAnimator$1;

    invoke-direct {v1, p0}, Lmiui/animation/ViewPropertyAnimator$1;-><init>(Lmiui/animation/ViewPropertyAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/animation/ViewPropertyAnimator$2;

    invoke-direct {v1, p0}, Lmiui/animation/ViewPropertyAnimator$2;-><init>(Lmiui/animation/ViewPropertyAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/animation/ViewPropertyAnimator;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/View;Landroid/animation/Animator;)V
    .registers 2

    invoke-static {p0, p1}, Lmiui/animation/ViewPropertyAnimator;->setAnimator(Landroid/view/View;Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/animation/ViewPropertyAnimator;)V
    .registers 1

    invoke-direct {p0}, Lmiui/animation/ViewPropertyAnimator;->setFinalValues()V

    return-void
.end method

.method static synthetic access$300(Lmiui/animation/ViewPropertyAnimator;)F
    .registers 2

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    return v0
.end method

.method static synthetic access$400(Lmiui/animation/ViewPropertyAnimator;)F
    .registers 2

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    return v0
.end method

.method static synthetic access$500(Lmiui/animation/ViewPropertyAnimator;F)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/animation/ViewPropertyAnimator;->setValue(F)V

    return-void
.end method

.method private calulateAnimatorValue(F)F
    .registers 7

    const v0, 0x3b449ba6    # 0.003f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x80

    const/4 v4, 0x2

    if-nez v0, :cond_2d

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-eq v0, v3, :cond_12

    if-ne v0, v2, :cond_117

    :cond_12
    new-array v0, v4, [I

    iget-object v2, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    sget v2, Lmiui/animation/ViewPropertyAnimator;->DISPLAY_METRICES_WIDTH:I

    aget v1, v0, v1

    sub-int/2addr v2, v1

    int-to-float p1, v2

    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v1, v3, :cond_2b

    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    :cond_2b
    goto/16 :goto_117

    :cond_2d
    const v0, 0x3b83126f    # 0.004f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_5a

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-eq v0, v3, :cond_3a

    if-ne v0, v2, :cond_117

    :cond_3a
    new-array v0, v4, [I

    iget-object v2, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lmiui/animation/ViewPropertyAnimator;->getWidthOrMeasureWidth(Landroid/view/View;)F

    move-result v2

    aget v1, v0, v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    neg-float p1, v2

    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v1, v3, :cond_58

    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    :cond_58
    goto/16 :goto_117

    :cond_5a
    const v0, 0x3a83126f    # 0.001f

    cmpl-float v0, p1, v0

    const/16 v1, 0x100

    if-nez v0, :cond_89

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-eq v0, v1, :cond_69

    if-ne v0, v4, :cond_117

    :cond_69
    new-array v0, v4, [I

    iget-object v3, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v3}, Lmiui/animation/ViewPropertyAnimator;->getHeightOrMeasureHeight(Landroid/view/View;)F

    move-result v3

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    neg-float p1, v3

    iget v2, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v2, v1, :cond_87

    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    :cond_87
    goto/16 :goto_117

    :cond_89
    const v0, 0x3b03126f    # 0.002f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_b0

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-eq v0, v1, :cond_96

    if-ne v0, v4, :cond_117

    :cond_96
    new-array v0, v4, [I

    iget-object v3, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    sget v3, Lmiui/animation/ViewPropertyAnimator;->DISPLAY_METRICES_HEIGHT:I

    aget v2, v0, v2

    sub-int/2addr v3, v2

    int-to-float p1, v3

    iget v2, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v2, v1, :cond_af

    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    :cond_af
    goto :goto_117

    :cond_b0
    const v0, 0x3c03126f    # 0.008f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->getHeightOrMeasureHeight(Landroid/view/View;)F

    move-result p1

    goto :goto_117

    :cond_be
    const v0, 0x3ba3d70a    # 0.005f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->getWidthOrMeasureWidth(Landroid/view/View;)F

    move-result p1

    goto :goto_117

    :cond_cc
    const v0, 0x3c1374bc    # 0.009f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_db

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->getHeightOrMeasureHeight(Landroid/view/View;)F

    move-result v0

    neg-float p1, v0

    goto :goto_117

    :cond_db
    const v0, 0x3bc49ba6    # 0.006f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_ea

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->getWidthOrMeasureWidth(Landroid/view/View;)F

    move-result v0

    neg-float p1, v0

    goto :goto_117

    :cond_ea
    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_fc

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->getHeightOrMeasureHeight(Landroid/view/View;)F

    move-result v0

    div-float p1, v0, v1

    goto :goto_117

    :cond_fc
    const v0, 0x3be56042    # 0.007f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10c

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->getWidthOrMeasureWidth(Landroid/view/View;)F

    move-result v0

    div-float p1, v0, v1

    goto :goto_117

    :cond_10c
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p1, v0

    if-nez v0, :cond_117

    invoke-direct {p0}, Lmiui/animation/ViewPropertyAnimator;->getValue()F

    move-result p1

    :cond_117
    :goto_117
    return p1
.end method

.method public static cancelAnimator(Landroid/view/View;)V
    .registers 2

    sget-object v0, Lmiui/animation/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_d
    return-void
.end method

.method public static getAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .registers 2

    sget-object v0, Lmiui/animation/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    return-object v0
.end method

.method public static getHeightOrMeasureHeight(Landroid/view/View;)F
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_16

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_16
    int-to-float v1, v0

    return v1
.end method

.method private getValue()F
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_68

    const/4 v2, 0x2

    if-eq v1, v2, :cond_61

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5a

    const/16 v2, 0x8

    if-eq v1, v2, :cond_53

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4c

    const/16 v2, 0x20

    if-eq v1, v2, :cond_45

    const/16 v2, 0x40

    if-eq v1, v2, :cond_3e

    const/16 v2, 0x80

    if-eq v1, v2, :cond_37

    const/16 v2, 0x100

    if-eq v1, v2, :cond_30

    const/16 v2, 0x200

    if-eq v1, v2, :cond_29

    goto :goto_6f

    :cond_29
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_6f

    :cond_30
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    goto :goto_6f

    :cond_37
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_6f

    :cond_3e
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotationY()F

    move-result v0

    goto :goto_6f

    :cond_45
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotationX()F

    move-result v0

    goto :goto_6f

    :cond_4c
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v0

    goto :goto_6f

    :cond_53
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v0

    goto :goto_6f

    :cond_5a
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v0

    goto :goto_6f

    :cond_61
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_6f

    :cond_68
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    nop

    :goto_6f
    return v0
.end method

.method public static of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;
    .registers 6

    new-instance v0, Lmiui/animation/ViewPropertyAnimator;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/animation/ViewPropertyAnimator;-><init>(Landroid/view/View;IFF)V

    new-instance v1, Lmiui/animation/ViewPropertyAnimator$Builder;

    invoke-direct {v1, v0}, Lmiui/animation/ViewPropertyAnimator$Builder;-><init>(Lmiui/animation/ViewPropertyAnimator;)V

    return-object v1
.end method

.method private static setAnimator(Landroid/view/View;Landroid/animation/Animator;)V
    .registers 3

    if-eqz p1, :cond_8

    sget-object v0, Lmiui/animation/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_8
    sget-object v0, Lmiui/animation/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-void
.end method

.method private setFinalValues()V
    .registers 3

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_14

    invoke-direct {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->setValue(F)V

    :cond_14
    return-void
.end method

.method private setValue(F)V
    .registers 4

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_58

    const/4 v1, 0x4

    if-eq v0, v1, :cond_52

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x10

    if-eq v0, v1, :cond_46

    const/16 v1, 0x20

    if-eq v0, v1, :cond_40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x80

    if-eq v0, v1, :cond_34

    const/16 v1, 0x100

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x200

    if-eq v0, v1, :cond_28

    goto :goto_64

    :cond_28
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_64

    :cond_2e
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    goto :goto_64

    :cond_34
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    goto :goto_64

    :cond_3a
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationY(F)V

    goto :goto_64

    :cond_40
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationX(F)V

    goto :goto_64

    :cond_46
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_64

    :cond_4c
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_64

    :cond_52
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_64

    :cond_58
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_64

    :cond_5e
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    nop

    :goto_64
    return-void
.end method

.method private setupValues()V
    .registers 2

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    invoke-direct {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->calulateAnimatorValue(F)F

    move-result v0

    iput v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    invoke-direct {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->calulateAnimatorValue(F)F

    move-result v0

    iput v0, p0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    invoke-direct {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->calulateAnimatorValue(F)F

    move-result v0

    iput v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .registers 3

    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Lmiui/animation/ViewPropertyAnimator;

    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    iput-object v1, v0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    iput v1, v0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    iput v1, v0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    iput v1, v0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    iput v1, v0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    iput v1, v0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/animation/ViewPropertyAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .registers 2

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method public getDuration()J
    .registers 3

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFinalValue()F
    .registers 2

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    return v0
.end method

.method public getFinalVisibility()I
    .registers 2

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    return v0
.end method

.method public getRepeatCount()I
    .registers 2

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getStartDelay()J
    .registers 3

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidthOrMeasureWidth(Landroid/view/View;)F
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_16

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_16
    int-to-float v1, v0

    return v1
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .registers 4

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public setFinalValue(F)V
    .registers 2

    iput p1, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    return-void
.end method

.method public setFinalVisibility(I)V
    .registers 2

    iput p1, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    return-void
.end method

.method public setStartDelay(J)V
    .registers 4

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-void
.end method

.method public start()V
    .registers 4

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->cancelAnimator(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_10
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v1, p0}, Lmiui/animation/ViewPropertyAnimator;->setAnimator(Landroid/view/View;Landroid/animation/Animator;)V

    invoke-direct {p0}, Lmiui/animation/ViewPropertyAnimator;->setupValues()V

    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
