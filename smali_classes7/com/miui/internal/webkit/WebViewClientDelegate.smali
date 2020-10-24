.class public Lcom/miui/internal/webkit/WebViewClientDelegate;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FEATURE_ALL:I = -0x1

.field public static final FEATURE_AUTO_LOGIN:I = 0x2

.field public static final FEATURE_DEEP_LINK:I = 0x1


# instance fields
.field private mAccountLogin:Lcom/miui/internal/webkit/DeviceAccountLogin;

.field private mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

.field private mSupportAutoLogin:Z

.field private mSupportDeepLink:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_FINISHED:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/lit8 p2, p2, -0x1

    or-int/2addr p1, p2

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportDeepLink:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object p2, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_INPROGRESS:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_FINISHED:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iget-object p0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lcom/miui/internal/webkit/DeviceAccountLogin;

    invoke-virtual {p0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginPageFinished()V

    :cond_1
    return-void
.end method

.method public onPageStarted(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object p2, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_START:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_INPROGRESS:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object p1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    :cond_1
    return-void
.end method

.method public onReceivedLoginRequest(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/util/ContextHelper;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lcom/miui/internal/webkit/DeviceAccountLogin;

    if-nez v1, :cond_2

    new-instance v1, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-direct {v1, v0, p1}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;-><init>(Landroid/app/Activity;Lcom/miui/internal/hybrid/provider/AbsWebView;)V

    iput-object v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lcom/miui/internal/webkit/DeviceAccountLogin;

    :cond_2
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->canGoBack()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->goBack()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_START:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    iget-object p0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lcom/miui/internal/webkit/DeviceAccountLogin;

    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/webkit/DeviceAccountLogin;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z
    .locals 3

    iget-boolean p0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportDeepLink:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/miui/internal/util/UrlResolverHelper;->isMiUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p1, v1}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method
