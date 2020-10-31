.class Landroid/widget/TranslationPresenter;
.super Ljava/lang/Object;
.source "TranslationPresenter.java"


# instance fields
.field private mAboveHandle:Z

.field private mContext:Landroid/content/Context;

.field private mCopyright:Landroid/widget/TextView;

.field private mDefaultPaddingBottom:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mExtraInfo:Landroid/view/View;

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mMore:Landroid/widget/TextView;

.field private mPaddingOffset:I

.field private mProgressBar:Lmiui/widget/ProgressBar;

.field private mScrollContainer:Landroid/view/View;

.field private mScrollView:Landroid/view/View;

.field private mTextContainer:Landroid/view/View;

.field private mTranslationPanel:Landroid/view/View;

.field private mTranslations:Landroid/widget/TextView;

.field private mWord:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v0, 0x110900c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110900b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110900c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x11090056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110900c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110900c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mMore:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110600d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110600d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110600d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mDefaultPaddingBottom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110600d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mPaddingOffset:I

    return-void
.end method

.method static synthetic access$000(Landroid/widget/TranslationPresenter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public setAboveHandle(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    return-void
.end method

.method public setInProgress()V
    .registers 7

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Landroid/widget/TranslationPresenter;->mDefaultPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    add-int/2addr v4, v2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, v3

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    if-eqz v4, :cond_64

    const/16 v4, 0xc

    goto :goto_66

    :cond_64
    const/16 v4, 0xa

    :goto_66
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updatePanel(Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 15

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_15a

    invoke-virtual {p1}, Lcom/miui/translationservice/provider/TranslationResult;->getStatus()I

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_15a

    :cond_17
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/translationservice/provider/TranslationResult;->getSymbols()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/translationservice/provider/TranslationResult$Symbol;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getWordSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "]\r\n"

    const-string v8, "["

    if-nez v6, :cond_58

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getWordSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :cond_58
    if-nez v5, :cond_72

    invoke-virtual {v4}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhEn()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_72

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhEn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :cond_72
    if-nez v5, :cond_8b

    invoke-virtual {v4}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhAm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhAm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8b
    invoke-virtual {v4}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getParts()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    :goto_90
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_ec

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/translationservice/provider/TranslationResult$Part;

    invoke-virtual {v8}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getPart()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b7

    const-string v9, "("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getPart()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b7
    invoke-virtual {v8}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getMeans()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    :goto_bc
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_e9

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_e1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-eq v7, v11, :cond_e1

    const-string v11, "\r\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e6

    :cond_e1
    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e6
    add-int/lit8 v10, v10, 0x1

    goto :goto_bc

    :cond_e9
    add-int/lit8 v7, v7, 0x1

    goto :goto_90

    :cond_ec
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2f

    :cond_f0
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/translationservice/provider/TranslationResult;->getCopyright()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_114

    iget-object v5, p0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_114
    invoke-virtual {p1}, Lcom/miui/translationservice/provider/TranslationResult;->getDetailLink()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_134

    iget-object v7, p0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Landroid/widget/TranslationPresenter;->mMore:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Landroid/widget/TranslationPresenter;->mMore:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/TranslationPresenter$1;

    invoke-direct {v8, p0, v5, p1}, Landroid/widget/TranslationPresenter$1;-><init>(Landroid/widget/TranslationPresenter;Ljava/lang/String;Lcom/miui/translationservice/provider/TranslationResult;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_134
    iget-object v7, p0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v4, :cond_142

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v9, p0, Landroid/widget/TranslationPresenter;->mPaddingOffset:I

    sub-int/2addr v8, v9

    goto :goto_144

    :cond_142
    iget v8, p0, Landroid/widget/TranslationPresenter;->mDefaultPaddingBottom:I

    :goto_144
    iget-object v9, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    iget-object v11, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    iget-object v12, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1a8

    :cond_15a
    :goto_15a
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x110e019e

    if-nez p1, :cond_175

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a8

    :cond_175
    invoke-virtual {p1}, Lcom/miui/translationservice/provider/TranslationResult;->getStatus()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_191

    iget-object v2, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a8

    :cond_191
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    const v3, 0x110e019d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1a8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v6, v4, v2

    iget-object v7, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    const/high16 v8, -0x80000000

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v9, p0, Landroid/widget/TranslationPresenter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    iget-object v7, p0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    sub-int v9, v4, v2

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, p0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    iget-object v10, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v7

    iget-object v11, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v9, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v9, p0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    iget-object v10, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v3

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v9, v8

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v10, p0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    if-eqz v10, :cond_23b

    const/16 v10, 0xc

    goto :goto_23d

    :cond_23b
    const/16 v10, 0xa

    :goto_23d
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v9, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setLeft(I)V

    iget-object v9, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    iget-boolean v10, p0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    if-eqz v10, :cond_254

    iget v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v1, v5, v1

    :cond_254
    invoke-virtual {v9, v1}, Landroid/view/View;->setTop(I)V

    return-void
.end method
