.class public Lcom/miui/internal/webkit/WebViewWrapper;
.super Lcom/miui/internal/hybrid/webkit/WebView;
.source "WebViewWrapper.java"


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/webkit/WebView;-><init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V

    iput-object p1, p0, Lcom/miui/internal/webkit/WebViewWrapper;->mWebView:Landroid/webkit/WebView;

    return-void
.end method
