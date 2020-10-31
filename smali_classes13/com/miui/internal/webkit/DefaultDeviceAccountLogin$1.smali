.class Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;
.super Landroid/os/Handler;
.source "DefaultDeviceAccountLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;-><init>(Landroid/app/Activity;Lcom/miui/internal/hybrid/provider/AbsWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;


# direct methods
.method constructor <init>(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    # invokes: Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->showLoginProgress()V
    invoke-static {v0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->access$000(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V

    goto :goto_1e

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    # invokes: Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->dismissDialog()V
    invoke-static {v0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->access$100(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V

    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    # getter for: Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;
    invoke-static {v0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->access$200(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    :cond_1e
    :goto_1e
    return-void
.end method
