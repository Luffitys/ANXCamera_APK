.class Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;


# direct methods
.method constructor <init>(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-static {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->access$000(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-static {p1}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->access$100(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V

    iget-object p0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->this$0:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-static {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->access$200(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
