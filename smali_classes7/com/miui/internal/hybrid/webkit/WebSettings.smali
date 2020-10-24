.class public Lcom/miui/internal/hybrid/webkit/WebSettings;
.super Lmiui/hybrid/HybridSettings;
.source ""


# instance fields
.field private mWebSettings:Landroid/webkit/WebSettings;


# direct methods
.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0

    invoke-direct {p0}, Lmiui/hybrid/HybridSettings;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    return-void
.end method


# virtual methods
.method public getUserAgentString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    return-void
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    return-void
.end method

.method public setCacheMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    return-void
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    return-void
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    return-void
.end method

.method public setTextZoom(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method
