.class public Lmiui/maml/elements/WebViewScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "WebViewScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/WebViewScreenElement$MamlInterface;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML WebViewScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "WebView"

.field private static final USE_NETWORK_ALL:I = 0x2

.field private static final USE_NETWORK_WIFI:I = 0x1


# instance fields
.field private mCachePage:Z

.field private mCurUrl:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mUriFormatter:Lmiui/maml/util/TextFormatter;

.field private mUseNetwork:I

.field private mUseNetworkExp:Lmiui/maml/data/Expression;

.field private mViewAdded:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWindowContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const/4 v0, 0x2

    iput v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mWindowContext:Landroid/content/Context;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mWindowContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lmiui/maml/elements/WebViewScreenElement$1;

    invoke-direct {v2, p0}, Lmiui/maml/elements/WebViewScreenElement$1;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lmiui/maml/elements/WebViewScreenElement$2;

    invoke-direct {v2, p0}, Lmiui/maml/elements/WebViewScreenElement$2;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    const-string v1, "userAgent"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_4f
    iget-object v3, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;-><init>(Lmiui/maml/elements/WebViewScreenElement;Lmiui/maml/elements/WebViewScreenElement$1;)V

    const-string v5, "maml"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string v4, "uriExp"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    new-instance v5, Lmiui/maml/util/TextFormatter;

    const-string v6, "uri"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6, v4}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    iput-object v5, p0, Lmiui/maml/elements/WebViewScreenElement;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    const-string v5, "cachePage"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    const-string v5, "useNetwork"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string v6, "all"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_aa

    goto :goto_bc

    :cond_aa
    const-string v0, "wifi"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    iput v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    goto :goto_be

    :cond_b5
    invoke-static {v3, v5}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lmiui/maml/data/Expression;

    goto :goto_be

    :cond_bc
    :goto_bc
    iput v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    :goto_be
    return-void
.end method

.method static synthetic access$100(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/WebViewScreenElement;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    return v0
.end method

.method static synthetic access$202(Lmiui/maml/elements/WebViewScreenElement;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/elements/WebViewScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/WebViewScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lmiui/maml/elements/WebViewScreenElement;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    return v0
.end method

.method private canUseNetwork()Z
    .registers 4

    iget v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    if-ne v0, v1, :cond_14

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private final finishWebView()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$10;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$10;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final initWebView()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    if-eqz v0, :cond_12

    :cond_8
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$9;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$9;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method private pauseWebView(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$8;

    invoke-direct {v1, p0, p1}, Lmiui/maml/elements/WebViewScreenElement$8;-><init>(Lmiui/maml/elements/WebViewScreenElement;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v1, :cond_d

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x1

    :cond_d
    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v2, :cond_19

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private final updateView()V
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getAbsoluteLeft()F

    move-result v0

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setX(F)V

    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getAbsoluteTop()F

    move-result v1

    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setY(F)V

    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v2}, Lmiui/maml/elements/WebViewScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_25
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected doTick(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAML WebViewScreenElement"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lmiui/maml/elements/WebViewScreenElement;->loadUrl(Ljava/lang/String;)V

    :cond_30
    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->updateView()V

    return-void
.end method

.method public finish()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->finishWebView()V

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    :cond_d
    return-void
.end method

.method public goBack()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$6;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$6;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    :cond_e
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getViewManager()Lmiui/maml/util/MamlViewManager;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->initWebView()V

    goto :goto_21

    :cond_1a
    const-string v0, "MAML WebViewScreenElement"

    const-string v1, "ViewManager must be set before init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUrl canceled due to useNetwork setting."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAML WebViewScreenElement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$3;

    invoke-direct {v1, p0, p1}, Lmiui/maml/elements/WebViewScreenElement$3;-><init>(Lmiui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onVisibilityChange(Z)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    move v0, p1

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v2, Lmiui/maml/elements/WebViewScreenElement$7;

    invoke-direct {v2, p0, v0}, Lmiui/maml/elements/WebViewScreenElement$7;-><init>(Lmiui/maml/elements/WebViewScreenElement;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V

    :cond_b
    return-void
.end method

.method public reload()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$5;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$5;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V

    :cond_b
    return-void
.end method

.method public runjs(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$4;

    invoke-direct {v1, p0, p1}, Lmiui/maml/elements/WebViewScreenElement$4;-><init>(Lmiui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
