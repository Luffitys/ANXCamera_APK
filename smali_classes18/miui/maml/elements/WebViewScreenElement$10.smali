.class Lmiui/maml/elements/WebViewScreenElement$10;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/WebViewScreenElement;->finishWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WebViewScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/WebViewScreenElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement$10;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$10;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/WebViewScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getViewManager()Lmiui/maml/util/MamlViewManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement$10;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    # getter for: Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lmiui/maml/elements/WebViewScreenElement;->access$100(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/maml/util/MamlViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$10;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    const/4 v1, 0x0

    # setter for: Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z
    invoke-static {v0, v1}, Lmiui/maml/elements/WebViewScreenElement;->access$202(Lmiui/maml/elements/WebViewScreenElement;Z)Z

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$10;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    # getter for: Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z
    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->access$500(Lmiui/maml/elements/WebViewScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$10;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    # getter for: Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->access$100(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    goto :goto_34

    :cond_29
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$10;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    # getter for: Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->access$100(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_34
    return-void
.end method
