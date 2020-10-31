.class Lmiui/contentcatcher/InterceptorProxy$2;
.super Ljava/lang/Object;
.source "InterceptorProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/contentcatcher/InterceptorProxy;->setWebView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/contentcatcher/InterceptorProxy;

.field final synthetic val$isLoad:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/contentcatcher/InterceptorProxy;ZLandroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lmiui/contentcatcher/InterceptorProxy$2;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    iput-boolean p2, p0, Lmiui/contentcatcher/InterceptorProxy$2;->val$isLoad:Z

    iput-object p3, p0, Lmiui/contentcatcher/InterceptorProxy$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-boolean v0, p0, Lmiui/contentcatcher/InterceptorProxy$2;->val$isLoad:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$2;->val$view:Landroid/view/View;

    invoke-static {}, Lmiui/contentcatcher/sdk/WebViewDetector;->getInstance()Lmiui/contentcatcher/sdk/WebViewDetector;

    move-result-object v1

    const-string v2, "MiWebViewDetector"

    invoke-static {v0, v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->initWebViewJsInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$2;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    # getter for: Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;
    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->access$000(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$2;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    # getter for: Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;
    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->access$000(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/InterceptorProxy$2;->val$view:Landroid/view/View;

    iget-boolean v2, p0, Lmiui/contentcatcher/InterceptorProxy$2;->val$isLoad:Z

    invoke-interface {v0, v1, v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->setWebView(Landroid/view/View;Z)V

    :cond_24
    return-void
.end method
