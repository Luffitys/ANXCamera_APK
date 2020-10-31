.class public Lcom/miui/internal/hybrid/webkit/WebViewClient;
.super Lcom/miui/internal/hybrid/provider/AbsWebViewClient;
.source "WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;
    }
.end annotation


# direct methods
.method public constructor <init>(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;-><init>(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object v0
.end method


# virtual methods
.method public getWebViewClient()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;-><init>(Lcom/miui/internal/hybrid/webkit/WebViewClient;)V

    return-object v0
.end method

.method public onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridViewClient;->onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/hybrid/HybridViewClient;->onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/hybrid/HybridViewClient;->onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/hybrid/HybridViewClient;->onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/hybrid/HybridViewClient;->onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridViewClient;->shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridViewClient;->shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
