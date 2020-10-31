.class public Landroid/window/TaskOrganizerTaskEmbedder;
.super Landroid/window/TaskEmbedder;
.source "TaskOrganizerTaskEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TaskOrgTaskEmbedder"


# instance fields
.field private mPendingNotifyBoundsChanged:Z

.field private mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskLeash:Landroid/view/SurfaceControl;

.field private mTaskOrganizer:Landroid/window/TaskOrganizer;

.field private mTaskToken:Landroid/window/WindowContainerToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/window/TaskEmbedder$Host;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/window/TaskEmbedder;-><init>(Landroid/content/Context;Landroid/window/TaskEmbedder$Host;)V

    return-void
.end method

.method static synthetic access$100(Landroid/window/TaskOrganizerTaskEmbedder;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method static synthetic access$102(Landroid/window/TaskOrganizerTaskEmbedder;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    iput-object p1, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1
.end method

.method static synthetic access$200(Landroid/window/TaskOrganizerTaskEmbedder;)Landroid/window/WindowContainerToken;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method static synthetic access$202(Landroid/window/TaskOrganizerTaskEmbedder;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerToken;
    .registers 2

    iput-object p1, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;

    return-object p1
.end method

.method static synthetic access$300(Landroid/window/TaskOrganizerTaskEmbedder;)Landroid/view/SurfaceControl;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$302(Landroid/window/TaskOrganizerTaskEmbedder;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 2

    iput-object p1, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskLeash:Landroid/view/SurfaceControl;

    return-object p1
.end method

.method static synthetic access$400(Landroid/window/TaskOrganizerTaskEmbedder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mPendingNotifyBoundsChanged:Z

    return v0
.end method

.method static synthetic access$500(Landroid/window/TaskOrganizerTaskEmbedder;)V
    .registers 1

    invoke-direct {p0}, Landroid/window/TaskOrganizerTaskEmbedder;->resetTaskInfo()V

    return-void
.end method

.method private getTaskId()I
    .registers 2

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskOrgTaskEmbedder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetTaskInfo()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskLeash:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    invoke-direct {p0}, Landroid/window/TaskOrganizerTaskEmbedder;->getTaskId()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public notifyBoundsChanged()V
    .registers 4

    invoke-super {p0}, Landroid/window/TaskEmbedder;->notifyBoundsChanged()V

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mPendingNotifyBoundsChanged:Z

    return-void

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mPendingNotifyBoundsChanged:Z

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v1}, Landroid/window/TaskEmbedder$Host;->getScreenBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_1c

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_1f

    :cond_1c
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1f
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-static {v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public onInitialize()Z
    .registers 3

    new-instance v0, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;-><init>(Landroid/window/TaskOrganizerTaskEmbedder;Landroid/window/TaskOrganizerTaskEmbedder$1;)V

    iput-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/window/TaskOrganizer;->registerOrganizer(I)V

    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/window/TaskOrganizer;->setInterceptBackPressedOnTaskRoot(Z)V

    invoke-super {p0}, Landroid/window/TaskEmbedder;->onInitialize()Z

    move-result v0

    return v0
.end method

.method protected onRelease()Z
    .registers 2

    invoke-virtual {p0}, Landroid/window/TaskOrganizerTaskEmbedder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {v0}, Landroid/window/TaskOrganizer;->unregisterOrganizer()V

    invoke-direct {p0}, Landroid/window/TaskOrganizerTaskEmbedder;->resetTaskInfo()V

    const/4 v0, 0x1

    return v0
.end method

.method public performBackPress()V
    .registers 1

    return-void
.end method

.method protected prepareActivityOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .registers 3

    invoke-super {p0, p1}, Landroid/window/TaskEmbedder;->prepareActivityOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    return-object p1
.end method

.method public start()V
    .registers 5

    invoke-super {p0}, Landroid/window/TaskEmbedder;->start()V

    invoke-virtual {p0}, Landroid/window/TaskOrganizerTaskEmbedder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-static {v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    invoke-direct {p0}, Landroid/window/TaskOrganizerTaskEmbedder;->getTaskId()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/window/TaskEmbedder$Listener;->onTaskVisibilityChanged(IZ)V

    :cond_2b
    return-void
.end method

.method public stop()V
    .registers 5

    invoke-super {p0}, Landroid/window/TaskEmbedder;->stop()V

    invoke-virtual {p0}, Landroid/window/TaskOrganizerTaskEmbedder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-static {v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/window/TaskOrganizerTaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    invoke-direct {p0}, Landroid/window/TaskOrganizerTaskEmbedder;->getTaskId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/window/TaskEmbedder$Listener;->onTaskVisibilityChanged(IZ)V

    :cond_2b
    return-void
.end method
