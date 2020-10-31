.class Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;
.super Landroid/os/Handler;
.source "MiuiFaceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/MiuiFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/content/Context;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Looper;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_20

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleMessage  callback what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x105

    if-eq v0, v1, :cond_78

    packed-switch v0, :pswitch_data_80

    goto :goto_7e

    :pswitch_2a
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/miuiface/Miuiface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendRemovedResult(Landroid/hardware/miuiface/Miuiface;I)V
    invoke-static {v0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$2200(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V

    goto :goto_7e

    :pswitch_36
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendErrorResult(JII)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$2100(Landroid/hardware/miuiface/MiuiFaceManagerImpl;JII)V

    goto :goto_7e

    :pswitch_48
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # invokes: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendAuthenticatedFailed()V
    invoke-static {v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$2000(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V

    goto :goto_7e

    :pswitch_4e
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/miuiface/Miuiface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendAuthenticatedSucceeded(Landroid/hardware/miuiface/Miuiface;I)V
    invoke-static {v0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1900(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V

    goto :goto_7e

    :pswitch_5a
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendAcquiredResult(JII)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1800(Landroid/hardware/miuiface/MiuiFaceManagerImpl;JII)V

    goto :goto_7e

    :pswitch_6c
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/miuiface/Miuiface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendEnrollResult(Landroid/hardware/miuiface/Miuiface;I)V
    invoke-static {v0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1700(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V

    goto :goto_7e

    :cond_78
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # invokes: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendLockoutReset()V
    invoke-static {v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$2300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V

    nop

    :goto_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0xc9
        :pswitch_6c
        :pswitch_5a
        :pswitch_4e
        :pswitch_48
        :pswitch_36
        :pswitch_2a
    .end packed-switch
.end method
