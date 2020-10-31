.class public Lmiui/maml/RendererController;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lmiui/maml/FramerateTokenList$FramerateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RendererController$EmptyListener;,
        Lmiui/maml/RendererController$Listener;,
        Lmiui/maml/RendererController$ISelfUpdateRenderable;,
        Lmiui/maml/RendererController$IRenderable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"

.field private static final MAX_MSG_COUNT:I = 0x3


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:J

.field private mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private mFramerateTokenList:Lmiui/maml/FramerateTokenList;

.field private mInited:Z

.field private mLastUpdateSystemTime:J

.field private mListener:Lmiui/maml/RendererController$Listener;

.field private mLock:[B

.field private mMsgLock:Ljava/lang/Object;

.field private mMsgQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedReset:Z

.field private mPendingRender:Z

.field private mReadRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfPaused:Z

.field private mShouldUpdate:Z

.field private mTouchX:F

.field private mTouchY:F

.field private mWriteRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteRunnableQueueLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    new-instance v0, Lmiui/maml/FramerateTokenList;

    invoke-direct {v0}, Lmiui/maml/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/maml/RendererController;->mLock:[B

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/maml/RendererController;->mFrameTime:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmiui/maml/RendererController;->mTouchX:F

    iput v0, p0, Lmiui/maml/RendererController;->mTouchY:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    new-instance v0, Lmiui/maml/FramerateTokenList;

    invoke-direct {v0, p0}, Lmiui/maml/FramerateTokenList;-><init>(Lmiui/maml/FramerateTokenList$FramerateChangeListener;)V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    return-void
.end method

.method private runRunnables()V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mNeedReset:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    iput-object v2, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    iput-object v1, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_2b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_25

    iget-object v2, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_25
    iget-object v1, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2e

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1

    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public addFramerateController(Lmiui/maml/elements/FramerateController;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .registers 3

    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v0, p1}, Lmiui/maml/FramerateTokenList;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public final doRender()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->doRender()V

    :cond_a
    return-void
.end method

.method public final doneRender()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    return-void
.end method

.method public finish()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_55

    if-eqz v1, :cond_20

    :try_start_d
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->finish()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_55

    goto :goto_20

    :catch_13
    move-exception v1

    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "RendererController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_55

    :try_start_23
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-eqz v2, :cond_3b

    :goto_27
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_3b

    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_27

    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_52

    :try_start_3c
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_55

    :try_start_3f
    iget-object v2, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_4f

    const/4 v1, 0x0

    :try_start_46
    iput-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_55

    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v0}, Lmiui/maml/FramerateTokenList;->clear()V

    return-void

    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_55

    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw v2

    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw v1
.end method

.method public forceUpdate()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->forceUpdate()V

    :cond_7
    invoke-static {}, Lmiui/maml/RenderVsyncUpdater;->getInstance()Lmiui/maml/RenderVsyncUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater;->forceUpdate()V

    return-void
.end method

.method public final getMessage()Landroid/view/MotionEvent;
    .registers 4

    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v2, :cond_e

    :goto_d
    goto :goto_17

    :cond_e
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    goto :goto_d

    :goto_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public final hasInited()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    return v0
.end method

.method public final hasMessage()Z
    .registers 4

    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v2, :cond_e

    :cond_d
    goto :goto_17

    :cond_e
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v1, 0x1

    :goto_17
    monitor-exit v0

    return v1

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public final hasRunnable()Z
    .registers 3

    iget-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public init()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_25

    if-eqz v1, :cond_20

    :try_start_d
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->init()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_25

    goto :goto_20

    :catch_13
    move-exception v1

    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "RendererController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z

    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public final isSelfPaused()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    return v0
.end method

.method public onFrameRateChage(FF)V
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    :cond_8
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .registers 5

    const-string v0, "RendererController"

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v1, :cond_24

    :try_start_9
    invoke-interface {v1, p1}, Lmiui/maml/RendererController$Listener;->onHover(Landroid/view/MotionEvent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_19
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_24

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .registers 5

    const-string v0, "RendererController"

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v1, :cond_24

    :try_start_9
    invoke-interface {v1, p1}, Lmiui/maml/RendererController$Listener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_19
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_24

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    return-void
.end method

.method public final pendingRender()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    return v0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, p0, Lmiui/maml/RendererController;->mTouchX:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_29

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lmiui/maml/RendererController;->mTouchY:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3a

    :cond_29
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lmiui/maml/RendererController;->mTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lmiui/maml/RendererController;->mTouchY:F

    :cond_3a
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_69

    const/4 v1, 0x0

    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v2, :cond_5e

    move-object v1, v4

    goto :goto_5f

    :cond_5e
    goto :goto_4a

    :cond_5f
    :goto_5f
    if-eqz v1, :cond_69

    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_6e

    invoke-virtual {p0}, Lmiui/maml/RendererController;->forceUpdate()V

    return-void

    :catchall_6e
    move-exception v1

    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 4

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    invoke-virtual {p0}, Lmiui/maml/RendererController;->requestUpdate()V

    return-void

    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1

    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "postRunnable null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V
    .registers 5

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    invoke-virtual {p0}, Lmiui/maml/RendererController;->requestUpdate()V

    return-void

    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "postRunnable null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFramerateController(Lmiui/maml/elements/FramerateController;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeToken(Lmiui/maml/FramerateTokenList$FramerateToken;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v0, p1}, Lmiui/maml/FramerateTokenList;->removeToken(Lmiui/maml/FramerateTokenList$FramerateToken;)V

    return-void
.end method

.method public final requestUpdate()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    invoke-virtual {p0}, Lmiui/maml/RendererController;->forceUpdate()V

    return-void
.end method

.method public selfPause()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v1, :cond_18

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->pause()V

    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    return-void

    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public selfResume()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->resume()V

    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    invoke-static {}, Lmiui/maml/RenderVsyncUpdater;->getInstance()Lmiui/maml/RenderVsyncUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater;->onResume()V

    return-void

    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public setListener(Lmiui/maml/RendererController$Listener;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    return-void
.end method

.method public setNeedReset(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/RendererController;->mNeedReset:Z

    return-void
.end method

.method public tick(J)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_18

    :try_start_7
    invoke-interface {v0, p1, p2}, Lmiui/maml/RendererController$Listener;->tick(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_18

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RendererController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_18
    iput-wide p1, p0, Lmiui/maml/RendererController;->mLastUpdateSystemTime:J

    return-void
.end method

.method public triggerUpdate()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->triggerUpdate()V

    :cond_7
    invoke-static {}, Lmiui/maml/RenderVsyncUpdater;->getInstance()Lmiui/maml/RenderVsyncUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater;->triggerUpdate()V

    return-void
.end method

.method public update(J)J
    .registers 8

    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->updateFramerate(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v2

    iget-boolean v3, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    if-eqz v3, :cond_e

    if-eqz v2, :cond_36

    :cond_e
    invoke-direct {p0}, Lmiui/maml/RendererController;->runRunnables()V

    invoke-virtual {p0}, Lmiui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {p0, v3}, Lmiui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_24

    :cond_21
    invoke-virtual {p0, v3}, Lmiui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    :cond_24
    :goto_24
    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->tick(J)V

    invoke-virtual {p0}, Lmiui/maml/RendererController;->doRender()V

    iget-boolean v4, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    if-nez v4, :cond_34

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v4

    if-eqz v4, :cond_36

    :cond_34
    const-wide/16 v0, 0x0

    :cond_36
    return-wide v0
.end method

.method public final updateFramerate(J)J
    .registers 10

    const-wide v0, 0x7fffffffffffffffL

    iget-object v2, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_22

    iget-object v4, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/FramerateController;

    invoke-virtual {v4, p1, p2}, Lmiui/maml/elements/FramerateController;->updateFramerate(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_1f

    move-wide v0, v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_22
    iget-object v3, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v3}, Lmiui/maml/FramerateTokenList;->getFramerate()F

    move-result v3

    iget v4, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_4e

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3b

    cmpg-float v4, v3, v5

    if-gez v4, :cond_3b

    invoke-virtual {p0}, Lmiui/maml/RendererController;->requestUpdate()V

    :cond_3b
    iput v3, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_47

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v4, v3

    float-to-long v4, v4

    goto :goto_4c

    :cond_47
    const-wide v4, 0x7fffffffffffffffL

    :goto_4c
    iput-wide v4, p0, Lmiui/maml/RendererController;->mFrameTime:J

    :cond_4e
    iget-wide v4, p0, Lmiui/maml/RendererController;->mFrameTime:J

    cmp-long v6, v4, v0

    if-gez v6, :cond_55

    goto :goto_56

    :cond_55
    move-wide v4, v0

    :goto_56
    return-wide v4
.end method

.method public updateIfNeeded(J)J
    .registers 10

    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->updateFramerate(J)J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/maml/RendererController;->mFrameTime:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-gez v6, :cond_16

    iget-wide v4, p0, Lmiui/maml/RendererController;->mLastUpdateSystemTime:J

    sub-long v4, p1, v4

    sub-long v4, v2, v4

    goto :goto_17

    :cond_16
    nop

    :goto_17
    move-wide v2, v4

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v4

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_35

    iget-boolean v5, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    if-nez v5, :cond_35

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v5

    if-nez v5, :cond_35

    if-eqz v4, :cond_2f

    goto :goto_35

    :cond_2f
    cmp-long v5, v2, v0

    if-gez v5, :cond_64

    move-wide v0, v2

    goto :goto_64

    :cond_35
    :goto_35
    iget-boolean v5, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    if-eqz v5, :cond_3b

    if-eqz v4, :cond_64

    :cond_3b
    invoke-direct {p0}, Lmiui/maml/RendererController;->runRunnables()V

    invoke-virtual {p0}, Lmiui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    move-result-object v5

    if-eqz v5, :cond_51

    invoke-virtual {v5}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual {p0, v5}, Lmiui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_51

    :cond_4e
    invoke-virtual {p0, v5}, Lmiui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    :cond_51
    :goto_51
    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->tick(J)V

    invoke-virtual {p0}, Lmiui/maml/RendererController;->doRender()V

    iget-boolean v6, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    if-nez v6, :cond_61

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v6

    if-eqz v6, :cond_63

    :cond_61
    const-wide/16 v0, 0x0

    :cond_63
    nop

    :cond_64
    :goto_64
    return-wide v0
.end method
