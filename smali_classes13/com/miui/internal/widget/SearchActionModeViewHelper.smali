.class public Lcom/miui/internal/widget/SearchActionModeViewHelper;
.super Ljava/lang/Object;
.source "SearchActionModeViewHelper.java"


# static fields
.field public static final ANIMATION_DURATION:I = 0x190


# instance fields
.field private mSearchContainer:Landroid/view/ViewGroup;

.field private mTextCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private shouldHideCancelText()Z
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method


# virtual methods
.method public getAnimatedPaddingHorizontal(Landroid/content/Context;)I
    .registers 4

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->shouldHideCancelText()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_12

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/R$dimen;->search_mode_bg_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_12
    return v0
.end method

.method public getAnimatedPaddingTop(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->search_mode_bg_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public initView(Landroid/view/ViewGroup;)V
    .registers 6

    sget v0, Lcom/miui/internal/R$id;->search_text_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    sget v0, Lcom/miui/internal/R$id;->search_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->shouldHideCancelText()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :cond_3a
    return-void
.end method

.method public obtainInterpolator()Landroid/animation/TimeInterpolator;
    .registers 3

    new-instance v0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_14

    invoke-virtual {v0, v1}, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;->setFactors([F)Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->getInterpolator(Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    return-object v1

    :array_14
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public performCancelViewClick()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method

.method public setCancelViewClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public translationCancelView()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method

.method public updateCancelView(FI)V
    .registers 7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    invoke-static {v2}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    sub-float v1, p1, v0

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    sub-int/2addr v2, p2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    int-to-float v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_3a
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
