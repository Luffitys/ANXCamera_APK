.class Lmiui/slide/SlideCoverListener$H;
.super Landroid/os/Handler;
.source "SlideCoverListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCoverListener;


# direct methods
.method public constructor <init>(Lmiui/slide/SlideCoverListener;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/slide/SlideCoverListener$H;->this$0:Lmiui/slide/SlideCoverListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    goto :goto_14

    :pswitch_6
    iget-object v0, p0, Lmiui/slide/SlideCoverListener$H;->this$0:Lmiui/slide/SlideCoverListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lmiui/slide/SlideCoverListener;->updateSystemStatus(I)V
    invoke-static {v0, v1}, Lmiui/slide/SlideCoverListener;->access$1100(Lmiui/slide/SlideCoverListener;I)V

    goto :goto_14

    :pswitch_e
    iget-object v0, p0, Lmiui/slide/SlideCoverListener$H;->this$0:Lmiui/slide/SlideCoverListener;

    # invokes: Lmiui/slide/SlideCoverListener;->handleDispatchMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lmiui/slide/SlideCoverListener;->access$1000(Lmiui/slide/SlideCoverListener;Landroid/os/Message;)V

    nop

    :goto_14
    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x64
        :pswitch_e
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
