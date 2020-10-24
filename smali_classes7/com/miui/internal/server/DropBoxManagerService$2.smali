.class Lcom/miui/internal/server/DropBoxManagerService$2;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/miui/internal/server/DropBoxManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/server/DropBoxManagerService$2;->this$0:Lcom/miui/internal/server/DropBoxManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/server/DropBoxManagerService$2;->this$0:Lcom/miui/internal/server/DropBoxManagerService;

    invoke-static {p0}, Lcom/miui/internal/server/DropBoxManagerService;->access$100(Lcom/miui/internal/server/DropBoxManagerService;)Landroid/content/Context;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v0, "miui.permission.READ_LOGS"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
