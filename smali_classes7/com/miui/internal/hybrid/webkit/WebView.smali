.class public Lcom/miui/internal/hybrid/webkit/WebView;
.super Lcom/miui/internal/hybrid/provider/AbsWebView;
.source ""


# instance fields
.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebView;-><init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V

    new-instance p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/miui/internal/hybrid/provider/AbsWebView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p0

    return p0
.end method

.method public canGoForward()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p0

    return p0
.end method

.method public clearCache(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void
.end method

.method public copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;
    .locals 1

    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    return-object v0
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBaseWebView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public getContentHeight()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getScale()F
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result p0

    return p0
.end method

.method public getSettings()Lmiui/hybrid/HybridSettings;
    .locals 1

    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebSettings;

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/webkit/WebSettings;-><init>(Landroid/webkit/WebSettings;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public goBack()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public reload()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public setWebChromeClient(Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->getWebChromeClient()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Lcom/miui/internal/hybrid/provider/AbsWebViewClient;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->getWebViewClient()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebViewClient;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
