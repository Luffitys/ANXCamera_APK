.class Lcom/miui/internal/hybrid/HybridManager$JsInvocation;
.super Ljava/lang/Object;
.source "HybridManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/HybridManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsInvocation"
.end annotation


# instance fields
.field private mJsCallback:Ljava/lang/String;

.field private mResponse:Lmiui/hybrid/Response;

.field final synthetic this$0:Lcom/miui/internal/hybrid/HybridManager;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->this$0:Lcom/miui/internal/hybrid/HybridManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->mResponse:Lmiui/hybrid/Response;

    iput-object p3, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->mJsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->this$0:Lcom/miui/internal/hybrid/HybridManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->mResponse:Lmiui/hybrid/Response;

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->mJsCallback:Ljava/lang/String;

    # invokes: Lcom/miui/internal/hybrid/HybridManager;->buildCallbackJavascript(Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/miui/internal/hybrid/HybridManager;->access$200(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;->this$0:Lcom/miui/internal/hybrid/HybridManager;

    # getter for: Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;
    invoke-static {v1}, Lcom/miui/internal/hybrid/HybridManager;->access$300(Lcom/miui/internal/hybrid/HybridManager;)Lmiui/hybrid/HybridView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
