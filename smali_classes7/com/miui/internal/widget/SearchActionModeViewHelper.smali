.class public Lcom/miui/internal/widget/SearchActionModeViewHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ANIMATION_DURATION:I = 0x190


# instance fields
.field private mSearchContainer:Landroid/view/ViewGroup;

.field private mTextCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private shouldHideCancelText()Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getAnimatedPaddingHorizontal(Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->shouldHideCancelText()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lmiui/R$dimen;->search_mode_bg_padding:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getAnimatedPaddingTop(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/miui/internal/R$dimen;->search_mode_bg_padding_top:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public initView(Landroid/view/ViewGroup;)V
    .locals 3

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

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method public obtainInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    new-instance p0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lmiui/animation/utils/EaseManager$EaseStyle;->setFactors([F)Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-static {p0}, Lmiui/animation/utils/EaseManager;->getInterpolator(Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public performCancelViewClick()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method

.method public setCancelViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public translationCancelView()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method

.method public updateCancelView(FI)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    invoke-static {v2}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-float v1, p1, v0

    :cond_0
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

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float p1, p2

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeViewHelper;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
