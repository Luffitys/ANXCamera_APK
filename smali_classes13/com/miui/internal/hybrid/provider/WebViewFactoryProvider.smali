.class public Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;
.super Ljava/lang/Object;
.source "WebViewFactoryProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebChromeClient(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public createWebView(Landroid/content/Context;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebView;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public createWebViewClient(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)Lcom/miui/internal/hybrid/provider/AbsWebViewClient;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCookieManager()Lmiui/hybrid/CookieManager;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCookieSyncManager()Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
