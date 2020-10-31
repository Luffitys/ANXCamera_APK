.class public abstract Lmiui/hybrid/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowFileSchemeCookies()Z
    .registers 1

    invoke-static {}, Lmiui/hybrid/CookieManager;->getInstance()Lmiui/hybrid/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hybrid/CookieManager;->allowFileSchemeCookiesImpl()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lmiui/hybrid/CookieManager;
    .registers 1

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/hybrid/provider/WebViewFactory;->getProvider(Landroid/content/Context;)Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->getCookieManager()Lmiui/hybrid/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method public static setAcceptFileSchemeCookies(Z)V
    .registers 2

    invoke-static {}, Lmiui/hybrid/CookieManager;->getInstance()Lmiui/hybrid/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/hybrid/CookieManager;->setAcceptFileSchemeCookiesImpl(Z)V

    return-void
.end method


# virtual methods
.method public acceptCookie()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected allowFileSchemeCookiesImpl()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCookies()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public removeAllCookie()V
    .registers 1

    return-void
.end method

.method public removeExpiredCookie()V
    .registers 1

    return-void
.end method

.method public removeSessionCookie()V
    .registers 1

    return-void
.end method

.method public setAcceptCookie(Z)V
    .registers 2

    return-void
.end method

.method protected setAcceptFileSchemeCookiesImpl(Z)V
    .registers 2

    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
