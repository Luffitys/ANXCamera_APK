.class Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    new-instance v1, Lcom/miui/internal/hybrid/webkit/GeolocationPermissionsCallback;

    invoke-direct {v1, p2}, Lcom/miui/internal/hybrid/webkit/GeolocationPermissionsCallback;-><init>(Landroid/webkit/GeolocationPermissions$Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 8

    new-instance v0, Lcom/miui/internal/hybrid/webkit/JsResult;

    invoke-direct {v0, p4}, Lcom/miui/internal/hybrid/webkit/JsResult;-><init>(Landroid/webkit/JsResult;)V

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    # getter for: Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;
    invoke-static {v1}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->access$000(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result v1

    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 8

    new-instance v0, Lcom/miui/internal/hybrid/webkit/JsResult;

    invoke-direct {v0, p4}, Lcom/miui/internal/hybrid/webkit/JsResult;-><init>(Landroid/webkit/JsResult;)V

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    # getter for: Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;
    invoke-static {v1}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->access$100(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    # getter for: Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;
    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->access$200(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onProgressChanged(Lmiui/hybrid/HybridView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    # getter for: Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;
    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->access$300(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/miui/internal/hybrid/webkit/ValueCallback;

    invoke-direct {v0, p1}, Lcom/miui/internal/hybrid/webkit/ValueCallback;-><init>(Landroid/webkit/ValueCallback;)V

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lcom/miui/internal/hybrid/webkit/WebChromeClient;

    invoke-virtual {v1, v0, p2, p3}, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
