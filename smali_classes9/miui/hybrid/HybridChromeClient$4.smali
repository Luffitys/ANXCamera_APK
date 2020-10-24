.class Lmiui/hybrid/HybridChromeClient$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lmiui/hybrid/HybridChromeClient;

.field final synthetic val$result:Lmiui/hybrid/JsResult;


# direct methods
.method constructor <init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/HybridChromeClient$4;->this$0:Lmiui/hybrid/HybridChromeClient;

    iput-object p2, p0, Lmiui/hybrid/HybridChromeClient$4;->val$result:Lmiui/hybrid/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lmiui/hybrid/HybridChromeClient$4;->val$result:Lmiui/hybrid/JsResult;

    invoke-virtual {p0}, Lmiui/hybrid/JsResult;->confirm()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
