.class Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    new-instance v0, Lcom/miui/internal/hybrid/webkit/GeolocationPermissionsCallback;

    invoke-direct {v0, p2}, Lcom/miui/internal/hybrid/webkit/GeolocationPermissionsCallback;-><init>(Landroid/webkit/GeolocationPermissions$Callback;)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    new-instance p1, Lcom/miui/internal/hybrid/webkit/JsResult;

    invoke-direct {p1, p4}, Lcom/miui/internal/hybrid/webkit/JsResult;-><init>(Landroid/webkit/JsResult;)V

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {p0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->access$000(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result p0

    return p0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    new-instance p1, Lcom/miui/internal/hybrid/webkit/JsResult;

    invoke-direct {p1, p4}, Lcom/miui/internal/hybrid/webkit/JsResult;-><init>(Landroid/webkit/JsResult;)V

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {p0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->access$100(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result p0

    return p0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {p0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->access$200(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onProgressChanged(Lmiui/hybrid/HybridView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-static {p0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->access$300(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/internal/hybrid/webkit/ValueCallback;

    invoke-direct {v0, p1}, Lcom/miui/internal/hybrid/webkit/ValueCallback;-><init>(Landroid/webkit/ValueCallback;)V

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-virtual {p0, v0, p2, p3}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
