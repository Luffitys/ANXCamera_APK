.class Lmiui/slide/SlideCoverEventManager$H;
.super Landroid/os/Handler;
.source "SlideCoverEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCoverEventManager;


# direct methods
.method public constructor <init>(Lmiui/slide/SlideCoverEventManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$H;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_1c

    :pswitch_6
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$H;->this$0:Lmiui/slide/SlideCoverEventManager;

    # invokes: Lmiui/slide/SlideCoverEventManager;->handleBindSliderView()V
    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$1200(Lmiui/slide/SlideCoverEventManager;)V

    goto :goto_1c

    :pswitch_c
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$H;->this$0:Lmiui/slide/SlideCoverEventManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    # invokes: Lmiui/slide/SlideCoverEventManager;->onActivityChanged(Lcom/android/internal/os/SomeArgs;)V
    invoke-static {v0, v1}, Lmiui/slide/SlideCoverEventManager;->access$1100(Lmiui/slide/SlideCoverEventManager;Lcom/android/internal/os/SomeArgs;)V

    goto :goto_1c

    :pswitch_16
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$H;->this$0:Lmiui/slide/SlideCoverEventManager;

    # invokes: Lmiui/slide/SlideCoverEventManager;->initOtherInfo()V
    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$1000(Lmiui/slide/SlideCoverEventManager;)V

    nop

    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x64
        :pswitch_16
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
