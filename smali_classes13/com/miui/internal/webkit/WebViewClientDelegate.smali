.class public Lcom/miui/internal/webkit/WebViewClientDelegate;
.super Ljava/lang/Object;
.source "WebViewClientDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;
    }
.end annotation


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
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/webkit/WebViewClientDelegate;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_FINISHED:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    and-int v0, p1, p2

    not-int v1, p2

    and-int/lit8 v1, v1, -0x1

    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    move v1, v3

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    iput-boolean v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportDeepLink:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1d

    move v2, v3

    :cond_1d
    iput-boolean v2, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object v1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_INPROGRESS:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_FINISHED:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iget-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lcom/miui/internal/webkit/DeviceAccountLogin;

    invoke-virtual {v0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginPageFinished()V

    :cond_14
    return-void
.end method

.method public onPageStarted(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    iget-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object v1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_START:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    if-ne v0, v1, :cond_f

    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_INPROGRESS:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    :cond_f
    return-void
.end method

.method public onReceivedLoginRequest(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/util/ContextHelper;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lcom/miui/internal/webkit/DeviceAccountLogin;

    if-nez v1, :cond_1b

    new-instance v1, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-direct {v1, v0, p1}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;-><init>(Landroid/app/Activity;Lcom/miui/internal/hybrid/provider/AbsWebView;)V

    iput-object v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lcom/miui/internal/webkit/DeviceAccountLogin;

    :cond_1b
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->goBack()V

    goto :goto_3c

    :cond_2b
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3c

    :cond_2f
    sget-object v1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_START:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mLoginState:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lcom/miui/internal/webkit/DeviceAccountLogin;

    invoke-virtual {v1, p2, p3, p4}, Lcom/miui/internal/webkit/DeviceAccountLogin;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/miui/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z
    .registers 9

    iget-boolean v0, p0, Lcom/miui/internal/webkit/WebViewClientDelegate;->mSupportDeepLink:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {p2}, Lcom/miui/internal/util/UrlResolverHelper;->isMiUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v2, v3}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_2b

    return v1

    :cond_2b
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_32

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_32
    const/4 v1, 0x1

    return v1

    :cond_34
    return v1
.end method
