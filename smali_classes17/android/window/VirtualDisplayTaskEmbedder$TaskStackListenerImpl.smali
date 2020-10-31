.class Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;
.super Landroid/app/TaskStackListener;
.source "VirtualDisplayTaskEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/VirtualDisplayTaskEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/window/VirtualDisplayTaskEmbedder;


# direct methods
.method private constructor <init>(Landroid/window/VirtualDisplayTaskEmbedder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/window/VirtualDisplayTaskEmbedder;Landroid/window/VirtualDisplayTaskEmbedder$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;-><init>(Landroid/window/VirtualDisplayTaskEmbedder;)V

    return-void
.end method

.method private getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    invoke-virtual {v0}, Landroid/window/VirtualDisplayTaskEmbedder;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    iget-object v1, v1, Landroid/window/VirtualDisplayTaskEmbedder;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->getAllStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    return-object v2

    :cond_16
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    return-object v2
.end method


# virtual methods
.method public synthetic lambda$onTaskDescriptionChanged$0$VirtualDisplayTaskEmbedder$TaskStackListenerImpl(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    iget-object v0, v0, Landroid/window/VirtualDisplayTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/window/TaskEmbedder$Host;->onTaskBackgroundColorChanged(Landroid/window/TaskEmbedder;I)V

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    iget-object v0, v0, Landroid/window/VirtualDisplayTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    invoke-virtual {v0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_28

    :cond_f
    invoke-direct {p0}, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ne p1, v1, :cond_27

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    iget-object v1, v1, Landroid/window/VirtualDisplayTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    invoke-interface {v1, p1, p2}, Landroid/window/TaskEmbedder$Listener;->onTaskCreated(ILandroid/content/ComponentName;)V

    :cond_27
    return-void

    :cond_28
    :goto_28
    return-void
.end method

.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    invoke-virtual {v0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    invoke-virtual {v1}, Landroid/window/VirtualDisplayTaskEmbedder;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_14

    return-void

    :cond_14
    invoke-direct {p0}, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-ne v1, v2, :cond_34

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    iget-object v1, v1, Landroid/window/VirtualDisplayTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    new-instance v2, Landroid/window/-$$Lambda$VirtualDisplayTaskEmbedder$TaskStackListenerImpl$T5XvoM0ShYGPCBOY7qLgIslsK9g;

    invoke-direct {v2, p0, p1}, Landroid/window/-$$Lambda$VirtualDisplayTaskEmbedder$TaskStackListenerImpl$T5XvoM0ShYGPCBOY7qLgIslsK9g;-><init>(Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v1, v2}, Landroid/window/TaskEmbedder$Host;->post(Ljava/lang/Runnable;)Z

    :cond_34
    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    invoke-virtual {v0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    iget-object v0, v0, Landroid/window/VirtualDisplayTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    if-eqz v0, :cond_36

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    invoke-virtual {v1}, Landroid/window/VirtualDisplayTaskEmbedder;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_19

    goto :goto_36

    :cond_19
    invoke-direct {p0}, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_35

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-ne v1, v2, :cond_35

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    iget-object v1, v1, Landroid/window/VirtualDisplayTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v1, v2}, Landroid/window/TaskEmbedder$Listener;->onTaskMovedToFront(I)V

    :cond_35
    return-void

    :cond_36
    :goto_36
    return-void
.end method

.method public onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    iget-object v0, v0, Landroid/window/VirtualDisplayTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    invoke-virtual {v0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    invoke-virtual {v1}, Landroid/window/VirtualDisplayTaskEmbedder;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_19

    goto :goto_23

    :cond_19
    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->this$0:Landroid/window/VirtualDisplayTaskEmbedder;

    iget-object v0, v0, Landroid/window/VirtualDisplayTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, v1}, Landroid/window/TaskEmbedder$Listener;->onTaskRemovalStarted(I)V

    return-void

    :cond_23
    :goto_23
    return-void
.end method
