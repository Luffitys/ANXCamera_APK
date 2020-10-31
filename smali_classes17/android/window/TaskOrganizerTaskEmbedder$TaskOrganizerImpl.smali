.class Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;
.super Landroid/window/TaskOrganizer;
.source "TaskOrganizerTaskEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskOrganizerTaskEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskOrganizerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/window/TaskOrganizerTaskEmbedder;


# direct methods
.method private constructor <init>(Landroid/window/TaskOrganizerTaskEmbedder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    invoke-direct {p0}, Landroid/window/TaskOrganizer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/window/TaskOrganizerTaskEmbedder;Landroid/window/TaskOrganizerTaskEmbedder$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;-><init>(Landroid/window/TaskOrganizerTaskEmbedder;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTaskAppeared$0$TaskOrganizerTaskEmbedder$TaskOrganizerImpl(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v0, v0, Landroid/window/TaskOrganizerTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/window/TaskEmbedder$Host;->onTaskBackgroundColorChanged(Landroid/window/TaskEmbedder;I)V

    return-void
.end method

.method public synthetic lambda$onTaskInfoChanged$1$TaskOrganizerTaskEmbedder$TaskOrganizerImpl(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v0, v0, Landroid/window/TaskOrganizerTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/window/TaskEmbedder$Host;->onTaskBackgroundColorChanged(Landroid/window/TaskEmbedder;I)V

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v0, v0, Landroid/window/TaskOrganizerTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v0, v0, Landroid/window/TaskOrganizerTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, v1}, Landroid/window/TaskEmbedder$Listener;->onBackPressedOnTaskRoot(I)V

    :cond_f
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 6

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    # setter for: Landroid/window/TaskOrganizerTaskEmbedder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {v0, p1}, Landroid/window/TaskOrganizerTaskEmbedder;->access$102(Landroid/window/TaskOrganizerTaskEmbedder;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    # setter for: Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;
    invoke-static {v0, v1}, Landroid/window/TaskOrganizerTaskEmbedder;->access$202(Landroid/window/TaskOrganizerTaskEmbedder;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerToken;

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    # setter for: Landroid/window/TaskOrganizerTaskEmbedder;->mTaskLeash:Landroid/view/SurfaceControl;
    invoke-static {v0, p2}, Landroid/window/TaskOrganizerTaskEmbedder;->access$302(Landroid/window/TaskOrganizerTaskEmbedder;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v0, v0, Landroid/window/TaskOrganizerTaskEmbedder;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    # getter for: Landroid/window/TaskOrganizerTaskEmbedder;->mTaskLeash:Landroid/view/SurfaceControl;
    invoke-static {v1}, Landroid/window/TaskOrganizerTaskEmbedder;->access$300(Landroid/window/TaskOrganizerTaskEmbedder;)Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v2, v2, Landroid/window/TaskOrganizerTaskEmbedder;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    # getter for: Landroid/window/TaskOrganizerTaskEmbedder;->mTaskLeash:Landroid/view/SurfaceControl;
    invoke-static {v1}, Landroid/window/TaskOrganizerTaskEmbedder;->access$300(Landroid/window/TaskOrganizerTaskEmbedder;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v1, v1, Landroid/window/TaskOrganizerTaskEmbedder;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    # getter for: Landroid/window/TaskOrganizerTaskEmbedder;->mPendingNotifyBoundsChanged:Z
    invoke-static {v0}, Landroid/window/TaskOrganizerTaskEmbedder;->access$400(Landroid/window/TaskOrganizerTaskEmbedder;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    invoke-virtual {v0}, Landroid/window/TaskOrganizerTaskEmbedder;->notifyBoundsChanged()V

    :cond_45
    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v0, v0, Landroid/window/TaskOrganizerTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    new-instance v1, Landroid/window/-$$Lambda$TaskOrganizerTaskEmbedder$TaskOrganizerImpl$18tjzvdxudjYJtLPS_3LO-6XhJU;

    invoke-direct {v1, p0, p1}, Landroid/window/-$$Lambda$TaskOrganizerTaskEmbedder$TaskOrganizerImpl$18tjzvdxudjYJtLPS_3LO-6XhJU;-><init>(Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Landroid/window/TaskEmbedder$Host;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v0, v0, Landroid/window/TaskOrganizerTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    if-eqz v0, :cond_62

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v0, v0, Landroid/window/TaskOrganizerTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-interface {v0, v1, v2}, Landroid/window/TaskEmbedder$Listener;->onTaskCreated(ILandroid/content/ComponentName;)V

    :cond_62
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    # getter for: Landroid/window/TaskOrganizerTaskEmbedder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {v0}, Landroid/window/TaskOrganizerTaskEmbedder;->access$100(Landroid/window/TaskOrganizerTaskEmbedder;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v0, v0, Landroid/window/TaskOrganizerTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    new-instance v1, Landroid/window/-$$Lambda$TaskOrganizerTaskEmbedder$TaskOrganizerImpl$lWy60hv4-xWQkR7DgDtDHy9IHHc;

    invoke-direct {v1, p0, p1}, Landroid/window/-$$Lambda$TaskOrganizerTaskEmbedder$TaskOrganizerImpl$lWy60hv4-xWQkR7DgDtDHy9IHHc;-><init>(Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Landroid/window/TaskEmbedder$Host;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    # getter for: Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;
    invoke-static {v0}, Landroid/window/TaskOrganizerTaskEmbedder;->access$200(Landroid/window/TaskOrganizerTaskEmbedder;)Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_34

    if-eqz p1, :cond_20

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    # getter for: Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;
    invoke-static {v0}, Landroid/window/TaskOrganizerTaskEmbedder;->access$200(Landroid/window/TaskOrganizerTaskEmbedder;)Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_20
    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v0, v0, Landroid/window/TaskOrganizerTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    iget-object v0, v0, Landroid/window/TaskOrganizerTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, v1}, Landroid/window/TaskEmbedder$Listener;->onTaskRemovalStarted(I)V

    :cond_2f
    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->this$0:Landroid/window/TaskOrganizerTaskEmbedder;

    # invokes: Landroid/window/TaskOrganizerTaskEmbedder;->resetTaskInfo()V
    invoke-static {v0}, Landroid/window/TaskOrganizerTaskEmbedder;->access$500(Landroid/window/TaskOrganizerTaskEmbedder;)V

    :cond_34
    return-void
.end method
