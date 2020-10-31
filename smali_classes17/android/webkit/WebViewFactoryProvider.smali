.class public interface abstract Landroid/webkit/WebViewFactoryProvider;
.super Ljava/lang/Object;
.source "WebViewFactoryProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactoryProvider$Statics;
    }
.end annotation


# virtual methods
.method public abstract createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;
.end method

.method public abstract getCookieManager()Landroid/webkit/CookieManager;
.end method

.method public abstract getGeolocationPermissions()Landroid/webkit/GeolocationPermissions;
.end method

.method public getPacProcessor()Landroid/webkit/PacProcessor;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getServiceWorkerController()Landroid/webkit/ServiceWorkerController;
.end method

.method public abstract getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;
.end method

.method public abstract getTokenBindingService()Landroid/webkit/TokenBindingService;
.end method

.method public abstract getTracingController()Landroid/webkit/TracingController;
.end method

.method public abstract getWebIconDatabase()Landroid/webkit/WebIconDatabase;
.end method

.method public abstract getWebStorage()Landroid/webkit/WebStorage;
.end method

.method public abstract getWebViewClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
.end method
