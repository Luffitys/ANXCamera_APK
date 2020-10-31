.class public Lcom/miui/internal/hybrid/webkit/WebChromeClient;
.super Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;
    }
.end annotation


# direct methods
.method public constructor <init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object v0
.end method


# virtual methods
.method public getWebChromeClient()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;-><init>(Lcom/miui/internal/hybrid/webkit/WebChromeClient;)V

    return-object v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/hybrid/HybridChromeClient;->onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/hybrid/HybridChromeClient;->onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Lmiui/hybrid/HybridView;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridChromeClient;->onProgressChanged(Lmiui/hybrid/HybridView;I)V

    return-void
.end method

.method public onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridChromeClient;->onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/hybrid/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/hybrid/HybridChromeClient;->openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
