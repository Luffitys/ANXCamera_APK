.class Lmiui/util/ProximitySensorWrapper$2;
.super Landroid/os/Handler;
.source "ProximitySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ProximitySensorWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ProximitySensorWrapper;


# direct methods
.method constructor <init>(Lmiui/util/ProximitySensorWrapper;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/ProximitySensorWrapper$2;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    if-eq v0, v1, :cond_8

    goto :goto_15

    :cond_8
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper$2;->this$0:Lmiui/util/ProximitySensorWrapper;

    const/4 v1, 0x0

    # invokes: Lmiui/util/ProximitySensorWrapper;->notifyListeners(Z)V
    invoke-static {v0, v1}, Lmiui/util/ProximitySensorWrapper;->access$300(Lmiui/util/ProximitySensorWrapper;Z)V

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper$2;->this$0:Lmiui/util/ProximitySensorWrapper;

    # invokes: Lmiui/util/ProximitySensorWrapper;->notifyListeners(Z)V
    invoke-static {v0, v1}, Lmiui/util/ProximitySensorWrapper;->access$300(Lmiui/util/ProximitySensorWrapper;Z)V

    nop

    :goto_15
    return-void
.end method
