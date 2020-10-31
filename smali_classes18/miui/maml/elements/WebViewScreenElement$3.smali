.class Lmiui/maml/elements/WebViewScreenElement$3;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/WebViewScreenElement;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WebViewScreenElement;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement$3;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    iput-object p2, p0, Lmiui/maml/elements/WebViewScreenElement$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$3;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    # getter for: Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->access$100(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
