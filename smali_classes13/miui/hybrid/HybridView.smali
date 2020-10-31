.class public Lmiui/hybrid/HybridView;
.super Landroid/widget/FrameLayout;
.source "HybridView.java"


# static fields
.field private static final PROGRESS_BAR_CIRCULAR:I = 0x1

.field private static final PROGRESS_BAR_HORIZONTAL:I = 0x2

.field private static final PROGRESS_BAR_NONE:I


# instance fields
.field private mBtnRetry:Landroid/widget/Button;

.field private mFactory:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

.field private mHorizontalProgressView:Lcom/miui/internal/hybrid/HybridProgressView;

.field private mLoadingError:Z

.field private mManager:Lcom/miui/internal/hybrid/HybridManager;

.field private mProgressBarStyle:I

.field private mProgressView:Lmiui/widget/ProgressBar;

.field private mPullable:Z

.field private mReloadView:Landroid/view/ViewGroup;

.field private mShowErrorPage:Z

.field private mTextProvider:Landroid/widget/TextView;

.field private mWebContainer:Lcom/miui/internal/hybrid/WebContainerView;

.field private mWebSettings:Lmiui/hybrid/HybridSettings;

.field private mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lmiui/R$styleable;->HybridViewStyle:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lmiui/R$styleable;->HybridViewStyle_hybridProgressBar:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiui/hybrid/HybridView;->mProgressBarStyle:I

    sget v2, Lmiui/R$styleable;->HybridViewStyle_hybridErrorPage:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/hybrid/HybridView;->mShowErrorPage:Z

    sget v2, Lmiui/R$styleable;->HybridViewStyle_hybridPullable:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/hybrid/HybridView;->mPullable:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lmiui/hybrid/HybridView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    sget v4, Lcom/miui/internal/R$layout;->hybrid_view_layout:I

    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-static {p1}, Lcom/miui/internal/hybrid/provider/WebViewFactory;->getProvider(Landroid/content/Context;)Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    move-result-object v4

    iput-object v4, p0, Lmiui/hybrid/HybridView;->mFactory:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {v4, p1, p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->createWebView(Landroid/content/Context;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object v4

    iput-object v4, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    sget v4, Lcom/miui/internal/R$id;->webContainer:I

    invoke-virtual {p0, v4}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/hybrid/WebContainerView;

    iput-object v4, p0, Lmiui/hybrid/HybridView;->mWebContainer:Lcom/miui/internal/hybrid/WebContainerView;

    iget-object v5, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v5}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getBaseWebView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/internal/hybrid/WebContainerView;->setWebView(Landroid/view/View;)V

    iget v4, p0, Lmiui/hybrid/HybridView;->mProgressBarStyle:I

    if-ne v4, v3, :cond_65

    sget v3, Lcom/miui/internal/R$id;->progress_circular:I

    invoke-virtual {p0, v3}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/ProgressBar;

    iput-object v3, p0, Lmiui/hybrid/HybridView;->mProgressView:Lmiui/widget/ProgressBar;

    goto :goto_72

    :cond_65
    const/4 v3, 0x2

    if-ne v4, v3, :cond_72

    sget v3, Lcom/miui/internal/R$id;->progress_horizontal:I

    invoke-virtual {p0, v3}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/hybrid/HybridProgressView;

    iput-object v3, p0, Lmiui/hybrid/HybridView;->mHorizontalProgressView:Lcom/miui/internal/hybrid/HybridProgressView;

    :cond_72
    :goto_72
    sget v3, Lcom/miui/internal/R$id;->hybrid_provider:I

    invoke-virtual {p0, v3}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/hybrid/HybridView;->mTextProvider:Landroid/widget/TextView;

    iget-boolean v4, p0, Lmiui/hybrid/HybridView;->mPullable:Z

    if-eqz v4, :cond_83

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_83
    return-void
.end method

.method static synthetic access$000(Lmiui/hybrid/HybridView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/hybrid/HybridView;->setReloadContentVisibility(I)V

    return-void
.end method

.method private setReloadContentVisibility(I)V
    .registers 5

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lmiui/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public canGoBack()Z
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public clearCache(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->clearCache(Z)V

    return-void
.end method

.method public copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->clear()V

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->destroy()V

    return-void
.end method

.method public drawWebView(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getContentHeight()I
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method getHybridManager()Lcom/miui/internal/hybrid/HybridManager;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Lmiui/hybrid/HybridSettings;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebSettings:Lmiui/hybrid/HybridSettings;

    if-nez v0, :cond_c

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getSettings()Lmiui/hybrid/HybridSettings;

    move-result-object v0

    iput-object v0, p0, Lmiui/hybrid/HybridView;->mWebSettings:Lmiui/hybrid/HybridSettings;

    :cond_c
    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebSettings:Lmiui/hybrid/HybridSettings;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWebView()Lcom/miui/internal/hybrid/provider/AbsWebView;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    return-object v0
.end method

.method public goBack()V
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->goBack()V

    return-void
.end method

.method hideReloadView()V
    .registers 3

    iget-boolean v0, p0, Lmiui/hybrid/HybridView;->mShowErrorPage:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public reload()V
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->reload()V

    return-void
.end method

.method public setHybridChromeClient(Lmiui/hybrid/HybridChromeClient;)V
    .registers 4

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridChromeClient;->setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mFactory:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->createWebChromeClient(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;

    move-result-object v0

    iget-object v1, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setWebChromeClient(Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;)V

    return-void
.end method

.method setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/HybridView;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    return-void
.end method

.method public setHybridViewClient(Lmiui/hybrid/HybridViewClient;)V
    .registers 4

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridViewClient;->setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mFactory:Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->createWebViewClient(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebViewClient;

    move-result-object v0

    iget-object v1, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setWebViewClient(Lcom/miui/internal/hybrid/provider/AbsWebViewClient;)V

    return-void
.end method

.method setLoadingError(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/hybrid/HybridView;->mLoadingError:Z

    return-void
.end method

.method setProgress(I)V
    .registers 6

    const/16 v0, 0x50

    if-le p1, v0, :cond_b

    iget-boolean v0, p0, Lmiui/hybrid/HybridView;->mLoadingError:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lmiui/hybrid/HybridView;->hideReloadView()V

    :cond_b
    const/16 v0, 0x64

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebContainer:Lcom/miui/internal/hybrid/WebContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/WebContainerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    iget-object v0, p0, Lmiui/hybrid/HybridView;->mProgressView:Lmiui/widget/ProgressBar;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mHorizontalProgressView:Lcom/miui/internal/hybrid/HybridProgressView;

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    iget v0, p0, Lmiui/hybrid/HybridView;->mProgressBarStyle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mProgressView:Lmiui/widget/ProgressBar;

    if-nez v0, :cond_2b

    return-void

    :cond_2b
    invoke-virtual {v0}, Lmiui/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_36

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mProgressView:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    :cond_36
    iget-object v0, p0, Lmiui/hybrid/HybridView;->mProgressView:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mProgressView:Lmiui/widget/ProgressBar;

    invoke-virtual {v0}, Lmiui/widget/ProgressBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_6e

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mProgressView:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v3}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    goto :goto_6e

    :cond_49
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6e

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mHorizontalProgressView:Lcom/miui/internal/hybrid/HybridProgressView;

    if-nez v0, :cond_51

    return-void

    :cond_51
    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_5c

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mHorizontalProgressView:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/HybridProgressView;->setVisibility(I)V

    :cond_5c
    iget-object v0, p0, Lmiui/hybrid/HybridView;->mHorizontalProgressView:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->setProgress(I)V

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mHorizontalProgressView:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_6e

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mHorizontalProgressView:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/hybrid/HybridProgressView;->setVisibility(I)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method setWebProvider(Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lmiui/hybrid/HybridView;->mTextProvider:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f

    :cond_16
    iget-object v2, p0, Lmiui/hybrid/HybridView;->mTextProvider:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/hybrid/HybridView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$string;->hybrid_provider:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2f
    return-void
.end method

.method showReloadView()V
    .registers 4

    iget-boolean v0, p0, Lmiui/hybrid/HybridView;->mShowErrorPage:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    if-nez v0, :cond_2b

    sget v0, Lcom/miui/internal/R$id;->webview_reload_stub:I

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmiui/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->reload:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lmiui/hybrid/HybridView;->mBtnRetry:Landroid/widget/Button;

    new-instance v2, Lmiui/hybrid/HybridView$1;

    invoke-direct {v2, p0}, Lmiui/hybrid/HybridView$1;-><init>(Lmiui/hybrid/HybridView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    iget-object v0, p0, Lmiui/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0, v1}, Lmiui/hybrid/HybridView;->setReloadContentVisibility(I)V

    iget-object v0, p0, Lmiui/hybrid/HybridView;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    return-void
.end method
