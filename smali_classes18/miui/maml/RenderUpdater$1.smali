.class Lmiui/maml/RenderUpdater$1;
.super Ljava/lang/Object;
.source "RenderUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RenderUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/RenderUpdater;


# direct methods
.method constructor <init>(Lmiui/maml/RenderUpdater;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    const/4 v1, 0x0

    # setter for: Lmiui/maml/RenderUpdater;->mSignaled:Z
    invoke-static {v0, v1}, Lmiui/maml/RenderUpdater;->access$002(Lmiui/maml/RenderUpdater;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    # getter for: Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;
    invoke-static {v2}, Lmiui/maml/RenderUpdater;->access$100(Lmiui/maml/RenderUpdater;)Lmiui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lmiui/maml/ScreenElementRoot;->updateIfNeeded(J)J

    move-result-wide v3

    iput-wide v3, v2, Lmiui/maml/RenderUpdater;->mNextUpdateInterval:J

    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    iput-wide v0, v2, Lmiui/maml/RenderUpdater;->mLastUpdateTime:J

    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    iget-boolean v2, v2, Lmiui/maml/RenderUpdater;->mPendingRender:Z

    if-nez v2, :cond_50

    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    # getter for: Lmiui/maml/RenderUpdater;->mPaused:Z
    invoke-static {v2}, Lmiui/maml/RenderUpdater;->access$200(Lmiui/maml/RenderUpdater;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    # getter for: Lmiui/maml/RenderUpdater;->mSignaled:Z
    invoke-static {v2}, Lmiui/maml/RenderUpdater;->access$000(Lmiui/maml/RenderUpdater;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    iget-wide v2, v2, Lmiui/maml/RenderUpdater;->mNextUpdateInterval:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-gez v2, :cond_50

    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    # getter for: Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lmiui/maml/RenderUpdater;->access$400(Lmiui/maml/RenderUpdater;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    # getter for: Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;
    invoke-static {v3}, Lmiui/maml/RenderUpdater;->access$300(Lmiui/maml/RenderUpdater;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    iget-wide v4, v4, Lmiui/maml/RenderUpdater;->mNextUpdateInterval:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_50
    return-void
.end method
