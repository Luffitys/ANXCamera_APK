.class Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/webkit/WebViewClient;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    # getter for: Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;
    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$100(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    # getter for: Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;
    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$000(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    # getter for: Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;
    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$500(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    # getter for: Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;
    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$600(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7

    new-instance v0, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;

    invoke-direct {v0, p2}, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;-><init>(Landroid/webkit/SslErrorHandler;)V

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    # getter for: Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;
    invoke-static {v1}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$400(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    # getter for: Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;
    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$200(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v1, 0x0

    goto :goto_13

    :cond_e
    new-instance v1, Lcom/miui/internal/hybrid/webkit/WebResourceResponce;

    invoke-direct {v1, v0}, Lcom/miui/internal/hybrid/webkit/WebResourceResponce;-><init>(Lmiui/hybrid/HybridResourceResponse;)V

    :goto_13
    return-object v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    # getter for: Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;
    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$300(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
