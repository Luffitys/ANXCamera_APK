.class public Lcom/miui/internal/hybrid/webkit/WebChromeClient;
.super Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;
.source ""


# direct methods
.method public constructor <init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method


# virtual methods
.method public getWebChromeClient()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;-><init>(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)V

    return-object v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {p0, p1, p2}, Lmiui/hybrid/HybridChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/hybrid/HybridChromeClient;->onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result p0

    return p0
.end method

.method public onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/hybrid/HybridChromeClient;->onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result p0

    return p0
.end method

.method public onProgressChanged(Lmiui/hybrid/HybridView;I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {p0, p1, p2}, Lmiui/hybrid/HybridChromeClient;->onProgressChanged(Lmiui/hybrid/HybridView;I)V

    return-void
.end method

.method public onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {p0, p1, p2}, Lmiui/hybrid/HybridChromeClient;->onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/hybrid/HybridChromeClient;->openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
