.class Landroid/webkit/WebViewInjector;
.super Ljava/lang/Object;
.source "WebViewInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initEgretLoader(Landroid/webkit/WebView;Landroid/content/Context;)V
    .registers 4

    new-instance v0, Lorg/egret/plugin/mi/runtime/EgretLoader;

    invoke-direct {v0, p1}, Lorg/egret/plugin/mi/runtime/EgretLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "GameEngine"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    return-void
.end method
