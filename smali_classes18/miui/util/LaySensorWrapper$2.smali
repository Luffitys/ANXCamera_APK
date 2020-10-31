.class Lmiui/util/LaySensorWrapper$2;
.super Landroid/os/Handler;
.source "LaySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/LaySensorWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/LaySensorWrapper;


# direct methods
.method constructor <init>(Lmiui/util/LaySensorWrapper;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/LaySensorWrapper$2;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_1e

    :cond_b
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$2;->this$0:Lmiui/util/LaySensorWrapper;

    # invokes: Lmiui/util/LaySensorWrapper;->notifyListeners(I)V
    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->access$400(Lmiui/util/LaySensorWrapper;I)V

    goto :goto_1e

    :cond_11
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$2;->this$0:Lmiui/util/LaySensorWrapper;

    # invokes: Lmiui/util/LaySensorWrapper;->notifyListeners(I)V
    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->access$400(Lmiui/util/LaySensorWrapper;I)V

    goto :goto_1e

    :cond_17
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$2;->this$0:Lmiui/util/LaySensorWrapper;

    const/4 v1, 0x0

    # invokes: Lmiui/util/LaySensorWrapper;->notifyListeners(I)V
    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->access$400(Lmiui/util/LaySensorWrapper;I)V

    nop

    :goto_1e
    return-void
.end method
