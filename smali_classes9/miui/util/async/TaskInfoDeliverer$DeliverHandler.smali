.class Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;
.super Landroid/os/Handler;
.source ""


# static fields
.field static final CONTINUE:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lmiui/util/async/TaskInfoDeliverer;

    invoke-static {p0}, Lmiui/util/async/TaskInfoDeliverer;->access$000(Lmiui/util/async/TaskInfoDeliverer;)V

    const/4 p0, 0x0

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void
.end method

.method public post(Lmiui/util/async/TaskInfoDeliverer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
