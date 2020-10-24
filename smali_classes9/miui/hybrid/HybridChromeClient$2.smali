.class Lmiui/hybrid/HybridChromeClient$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lmiui/hybrid/HybridChromeClient;

.field final synthetic val$result:Lmiui/hybrid/JsResult;


# direct methods
.method constructor <init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/HybridChromeClient$2;->this$0:Lmiui/hybrid/HybridChromeClient;

    iput-object p2, p0, Lmiui/hybrid/HybridChromeClient$2;->val$result:Lmiui/hybrid/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lmiui/hybrid/HybridChromeClient$2;->val$result:Lmiui/hybrid/JsResult;

    invoke-virtual {p0}, Lmiui/hybrid/JsResult;->cancel()V

    return-void
.end method
