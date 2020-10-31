.class Landroid/hardware/miuiface/BiometricClient$MyHandler;
.super Landroid/os/Handler;
.source "BiometricClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/BiometricClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/BiometricClient;


# direct methods
.method public constructor <init>(Landroid/hardware/miuiface/BiometricClient;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":handleMessage main what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    goto :goto_4e

    :pswitch_30
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    # invokes: Landroid/hardware/miuiface/BiometricClient;->handle_sendService(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/hardware/miuiface/BiometricClient;->access$700(Landroid/hardware/miuiface/BiometricClient;Landroid/os/Message;)V

    goto :goto_4e

    :pswitch_3a
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/hardware/miuiface/BiometricClient;->handle_getServiceVersion(I)V
    invoke-static {v0, v1}, Landroid/hardware/miuiface/BiometricClient;->access$600(Landroid/hardware/miuiface/BiometricClient;I)V

    goto :goto_4e

    :pswitch_42
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # invokes: Landroid/hardware/miuiface/BiometricClient;->handle_releaseService()V
    invoke-static {v0}, Landroid/hardware/miuiface/BiometricClient;->access$400(Landroid/hardware/miuiface/BiometricClient;)V

    goto :goto_4e

    :pswitch_48
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # invokes: Landroid/hardware/miuiface/BiometricClient;->handle_startService()V
    invoke-static {v0}, Landroid/hardware/miuiface/BiometricClient;->access$500(Landroid/hardware/miuiface/BiometricClient;)V

    nop

    :goto_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1388
        :pswitch_48
        :pswitch_42
        :pswitch_3a
        :pswitch_30
    .end packed-switch
.end method
