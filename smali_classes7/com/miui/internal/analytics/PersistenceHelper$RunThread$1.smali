.class Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$1:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;


# direct methods
.method constructor <init>(Lcom/miui/internal/analytics/PersistenceHelper$RunThread;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;->this$1:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;->this$1:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;

    iget-object p0, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->this$0:Lcom/miui/internal/analytics/PersistenceHelper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/internal/analytics/Event;

    invoke-static {p0, p1}, Lcom/miui/internal/analytics/PersistenceHelper;->access$400(Lcom/miui/internal/analytics/PersistenceHelper;Lcom/miui/internal/analytics/Event;)V

    :goto_0
    return-void
.end method
