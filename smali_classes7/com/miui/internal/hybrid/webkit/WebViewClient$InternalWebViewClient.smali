.class Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/webkit/WebViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {p0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$100(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {p0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$000(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {p0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$500(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {p0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$600(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    new-instance p1, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;

    invoke-direct {p1, p2}, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;-><init>(Landroid/webkit/SslErrorHandler;)V

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {p0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$400(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {p0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$200(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/internal/hybrid/webkit/WebResourceResponce;

    invoke-direct {p1, p0}, Lcom/miui/internal/hybrid/webkit/WebResourceResponce;-><init>(Lmiui/hybrid/HybridResourceResponse;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {p0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->access$300(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
