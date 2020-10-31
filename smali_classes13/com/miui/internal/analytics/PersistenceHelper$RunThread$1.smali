.class Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;
.super Landroid/os/Handler;
.source "PersistenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;


# direct methods
.method constructor <init>(Lcom/miui/internal/analytics/PersistenceHelper$RunThread;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;->this$1:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_11

    :cond_6
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;->this$1:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;

    iget-object v0, v0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->this$0:Lcom/miui/internal/analytics/PersistenceHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/internal/analytics/Event;

    # invokes: Lcom/miui/internal/analytics/PersistenceHelper;->writeEventImp(Lcom/miui/internal/analytics/Event;)V
    invoke-static {v0, v1}, Lcom/miui/internal/analytics/PersistenceHelper;->access$400(Lcom/miui/internal/analytics/PersistenceHelper;Lcom/miui/internal/analytics/Event;)V

    :goto_11
    return-void
.end method
