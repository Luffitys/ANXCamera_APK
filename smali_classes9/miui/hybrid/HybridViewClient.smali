.class public Lmiui/hybrid/HybridViewClient;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ASSET_PATH:Ljava/lang/String; = "hybrid/"

.field private static final VIRTUAL_PATH:Ljava/lang/String; = "android_asset/hybrid/"


# instance fields
.field private mManager:Lcom/miui/internal/hybrid/HybridManager;

.field private mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-direct {v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/HybridViewClient;->mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;

    return-void
.end method


# virtual methods
.method public onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lmiui/hybrid/HybridViewClient;->mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getWebView()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onPageFinished(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

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

    iget-object v0, p0, Lmiui/hybrid/HybridViewClient;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onPageChange()V

    invoke-virtual {p1, p2}, Lmiui/hybrid/HybridView;->setWebProvider(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridView;->setLoadingError(Z)V

    iget-object p0, p0, Lmiui/hybrid/HybridViewClient;->mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getWebView()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onPageStarted(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lmiui/hybrid/HybridView;->setLoadingError(Z)V

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->showReloadView()V

    return-void
.end method

.method public onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lmiui/hybrid/HybridViewClient;->mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getWebView()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/webkit/WebViewClientDelegate;->onReceivedLoginRequest(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Lmiui/hybrid/SslErrorHandler;->cancel()V

    return-void
.end method

.method public setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/HybridViewClient;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    return-void
.end method

.method public shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android_asset/hybrid/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v0, Lmiui/hybrid/HybridResourceResponse;

    iget-object p0, p0, Lmiui/hybrid/HybridViewClient;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hybrid/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p1, p1, p0}, Lmiui/hybrid/HybridResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :catch_0
    :cond_0
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lmiui/hybrid/HybridViewClient;->mWebViewClientDelegate:Lcom/miui/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getWebView()Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/webkit/WebViewClientDelegate;->shouldOverrideUrlLoading(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
