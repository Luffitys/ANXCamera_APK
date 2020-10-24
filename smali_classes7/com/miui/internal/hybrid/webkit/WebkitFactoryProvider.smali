.class public Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;
.super Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;
.source ""


# instance fields
.field private mCookieManager:Lmiui/hybrid/CookieManager;

.field private mCookieSyncManager:Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebChromeClient(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;
    .locals 0

    new-instance p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)V

    return-object p0
.end method

.method public createWebView(Landroid/content/Context;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebView;
    .locals 0

    new-instance p0, Lcom/miui/internal/hybrid/webkit/WebView;

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebView;-><init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V

    return-object p0
.end method

.method public createWebViewClient(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebViewClient;
    .locals 0

    new-instance p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;-><init>(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)V

    return-object p0
.end method

.method public getCookieManager()Lmiui/hybrid/CookieManager;
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieManager:Lmiui/hybrid/CookieManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;-><init>(Landroid/webkit/CookieManager;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieManager:Lmiui/hybrid/CookieManager;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieManager:Lmiui/hybrid/CookieManager;

    return-object p0
.end method

.method public getCookieSyncManager()Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieSyncManager:Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/internal/hybrid/webkit/CookieSyncManagerDelegate;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/webkit/CookieSyncManagerDelegate;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieSyncManager:Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieSyncManager:Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;

    return-object p0
.end method
