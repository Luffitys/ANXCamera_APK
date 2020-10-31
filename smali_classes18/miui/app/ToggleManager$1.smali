.class Lmiui/app/ToggleManager$1;
.super Landroid/os/Handler;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    goto :goto_1e

    :cond_c
    iget-object v0, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    # invokes: Lmiui/app/ToggleManager;->updateSyncToggle(Z)V
    invoke-static {v0, v1}, Lmiui/app/ToggleManager;->access$100(Lmiui/app/ToggleManager;Z)V

    goto :goto_1e

    :cond_18
    iget-object v0, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->verifyBluetoothState()V
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$000(Lmiui/app/ToggleManager;)V

    nop

    :goto_1e
    return-void
.end method
