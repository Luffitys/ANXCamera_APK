.class public Lmiui/hybrid/HybridViewClient;
.super Ljava/lang/Object;
.source "HybridViewClient.java"


# static fields
.field private static final ASSET_PATH:Ljava/lang/String; = "hybrid/"

.field private static final VIRTUAL_PATH:Ljava/lang/String; = "android_asset/hybrid/"


# instance fields
.field private mManager:Lcom/miui/internal/hybrid/HybridManager;

.field private mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-direct {v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/HybridViewClient;->mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;

    return-void
.end method


# virtual methods
.method public onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1d
    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getWebView()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onPageFinished(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    new-instance v0, Lmiui/hybrid/PageContext;

    invoke-direct {v0}, Lmiui/hybrid/PageContext;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/hybrid/PageContext;->setId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lmiui/hybrid/PageContext;->setUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/hybrid/HybridViewClient;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v1, v0}, Lcom/miui/internal/hybrid/HybridManager;->setPageContext(Lmiui/hybrid/PageContext;)V

    iget-object v1, p0, Lmiui/hybrid/HybridViewClient;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v1}, Lcom/miui/internal/hybrid/HybridManager;->onPageChange()V

    invoke-virtual {p1, p2}, Lmiui/hybrid/HybridView;->setWebProvider(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiui/hybrid/HybridView;->setLoadingError(Z)V

    iget-object v1, p0, Lmiui/hybrid/HybridViewClient;->mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getWebView()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onPageStarted(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridView;->setLoadingError(Z)V

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->showReloadView()V

    return-void
.end method

.method public onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getWebView()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onReceivedLoginRequest(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p2}, Lmiui/hybrid/SslErrorHandler;->cancel()V

    return-void
.end method

.method public setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/HybridViewClient;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    return-void
.end method

.method public shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_50

    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "android_asset/hybrid/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_50

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_50

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_27
    new-instance v3, Lmiui/hybrid/HybridResourceResponse;

    iget-object v4, p0, Lmiui/hybrid/HybridViewClient;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v4}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hybrid/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4}, Lmiui/hybrid/HybridResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_4c} :catch_4e

    move-object v0, v3

    goto :goto_50

    :catch_4e
    move-exception v3

    const/4 v0, 0x0

    :cond_50
    :goto_50
    return-object v0
.end method

.method public shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getWebView()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/webkit/WebViewClientDelegate;->shouldOverrideUrlLoading(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
