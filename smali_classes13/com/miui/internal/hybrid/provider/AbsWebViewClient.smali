.class public abstract Lcom/miui/internal/hybrid/provider/AbsWebViewClient;
.super Ljava/lang/Object;
.source "AbsWebViewClient.java"


# instance fields
.field protected mHybridView:Lmiui/hybrid/HybridView;

.field protected mHybridViewClient:Lmiui/hybrid/HybridViewClient;


# direct methods
.method public constructor <init>(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    iput-object p2, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-void
.end method


# virtual methods
.method public getWebViewClient()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    return-void
.end method

.method public onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    return-void
.end method

.method public shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
