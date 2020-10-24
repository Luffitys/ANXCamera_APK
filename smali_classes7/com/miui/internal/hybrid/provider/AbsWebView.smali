.class public abstract Lcom/miui/internal/hybrid/provider/AbsWebView;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHybridView:Lmiui/hybrid/HybridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/provider/AbsWebView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/internal/hybrid/provider/AbsWebView;->mHybridView:Lmiui/hybrid/HybridView;

    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public canGoBack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canGoForward()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public clearCache(Z)V
    .locals 0

    return-void
.end method

.method public copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getBaseWebView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScale()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getSettings()Lmiui/hybrid/HybridSettings;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public goBack()V
    .locals 0

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reload()V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    return-void
.end method

.method public setWebChromeClient(Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;)V
    .locals 0

    return-void
.end method

.method public setWebViewClient(Lcom/miui/internal/hybrid/provider/AbsWebViewClient;)V
    .locals 0

    return-void
.end method
