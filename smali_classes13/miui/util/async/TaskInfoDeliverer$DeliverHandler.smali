.class Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;
.super Landroid/os/Handler;
.source "TaskInfoDeliverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/TaskInfoDeliverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeliverHandler"
.end annotation


# static fields
.field static final CONTINUE:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/util/async/TaskInfoDeliverer;

    # invokes: Lmiui/util/async/TaskInfoDeliverer;->processAllDelivery()V
    invoke-static {v0}, Lmiui/util/async/TaskInfoDeliverer;->access$000(Lmiui/util/async/TaskInfoDeliverer;)V

    const/4 v1, 0x0

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void
.end method

.method public post(Lmiui/util/async/TaskInfoDeliverer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
