.class Landroid/media/tv/tuner/Tuner$EventHandler;
.super Landroid/os/Handler;
.source "Tuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/Tuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/tuner/Tuner;


# direct methods
.method private constructor <init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    goto :goto_3b

    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/tuner/filter/Filter;

    invoke-virtual {v0}, Landroid/media/tv/tuner/filter/Filter;->getCallback()Landroid/media/tv/tuner/filter/FilterCallback;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Landroid/media/tv/tuner/filter/Filter;->getCallback()Landroid/media/tv/tuner/filter/FilterCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/Filter;I)V

    goto :goto_3b

    :cond_1d
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    # getter for: Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;
    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->access$400(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    # getter for: Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->access$500(Landroid/media/tv/tuner/Tuner;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    # getter for: Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->access$500(Landroid/media/tv/tuner/Tuner;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/tuner/-$$Lambda$Tuner$EventHandler$O98cW0HuxUDT27bFMy40ViHTsqc;

    invoke-direct {v1, p0}, Landroid/media/tv/tuner/-$$Lambda$Tuner$EventHandler$O98cW0HuxUDT27bFMy40ViHTsqc;-><init>(Landroid/media/tv/tuner/Tuner$EventHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public synthetic lambda$handleMessage$0$Tuner$EventHandler()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    # getter for: Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;
    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->access$400(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-interface {v0, v1}, Landroid/media/tv/tuner/Tuner$OnResourceLostListener;->onResourceLost(Landroid/media/tv/tuner/Tuner;)V

    return-void
.end method
