.class public Landroid/view/ScrollCaptureClient;
.super Landroid/view/IScrollCaptureClient$Stub;
.source "ScrollCaptureClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScrollCaptureClient$DelayedAction;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ScrollCaptureClient"


# instance fields
.field private final mCloseGuard:Landroid/util/CloseGuard;

.field private mController:Landroid/view/IScrollCaptureController;

.field private final mHandler:Landroid/os/Handler;

.field private final mPositionInWindow:Landroid/graphics/Point;

.field private final mScrollBounds:Landroid/graphics/Rect;

.field private mSelectedTarget:Landroid/view/ScrollCaptureTarget;

.field private mSession:Landroid/view/ScrollCaptureSession;

.field protected mSurface:Landroid/view/Surface;

.field private mTimeoutAction:Landroid/view/ScrollCaptureClient$DelayedAction;

.field private mTimeoutMillis:I


# direct methods
.method public constructor <init>(Landroid/view/ScrollCaptureTarget;Landroid/view/IScrollCaptureController;)V
    .registers 6

    invoke-direct {p0}, Landroid/view/IScrollCaptureClient$Stub;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/ScrollCaptureClient;->mTimeoutMillis:I

    const-string v0, "<selectedTarget> must non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "<controller> must non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string/jumbo v1, "target.getScrollBounds() must be non-null to construct a client"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/view/ScrollCaptureClient;->mSelectedTarget:Landroid/view/ScrollCaptureTarget;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Landroid/view/ScrollCaptureClient;->mScrollBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getPositionInWindow()Landroid/graphics/Point;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v1, p0, Landroid/view/ScrollCaptureClient;->mPositionInWindow:Landroid/graphics/Point;

    iput-object p2, p0, Landroid/view/ScrollCaptureClient;->mController:Landroid/view/IScrollCaptureController;

    new-instance v1, Landroid/util/CloseGuard;

    invoke-direct {v1}, Landroid/util/CloseGuard;-><init>()V

    iput-object v1, p0, Landroid/view/ScrollCaptureClient;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ScrollCaptureClient$1;

    invoke-direct {v2, p0, p1}, Landroid/view/ScrollCaptureClient$1;-><init>(Landroid/view/ScrollCaptureClient;Landroid/view/ScrollCaptureTarget;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private cancelTimeout()Z
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mTimeoutAction:Landroid/view/ScrollCaptureClient$DelayedAction;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ScrollCaptureClient$DelayedAction;->cancel()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private checkConnected()V
    .registers 3

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mSelectedTarget:Landroid/view/ScrollCaptureTarget;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mController:Landroid/view/IScrollCaptureController;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has been disconnected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkStarted()V
    .registers 3

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mSession:Landroid/view/ScrollCaptureSession;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Capture session has not been started!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doShutdown()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mController:Landroid/view/IScrollCaptureController;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mController:Landroid/view/IScrollCaptureController;

    invoke-interface {v0}, Landroid/view/IScrollCaptureController;->onConnectionClosed()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_f
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Landroid/view/ScrollCaptureClient;->disconnect()V

    throw v0

    :catch_f
    move-exception v0

    :cond_10
    :goto_10
    invoke-virtual {p0}, Landroid/view/ScrollCaptureClient;->disconnect()V

    nop

    return-void
.end method

.method private isStarted()Z
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mController:Landroid/view/IScrollCaptureController;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mSelectedTarget:Landroid/view/ScrollCaptureTarget;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static synthetic lambda$0-SRlg7x7JtQystMp7lzoCyGfOY(Landroid/view/ScrollCaptureClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->onStartCaptureCompleted()V

    return-void
.end method

.method public static synthetic lambda$Epfw54HmxmekAnuTbczAITVw7Dg(Landroid/view/ScrollCaptureClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->onStartCaptureTimeout()V

    return-void
.end method

.method public static synthetic lambda$GYYbruHV0KM9iR0K-qw9FSo1ra8(Landroid/view/ScrollCaptureClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->onEndCaptureCompleted()V

    return-void
.end method

.method public static synthetic lambda$ViSKCOfqcLht-jEVL0NThLc_K9A(Landroid/view/ScrollCaptureClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->onEndCaptureTimeout()V

    return-void
.end method

.method public static synthetic lambda$cg6Nc5a-WzAiBUwgRjGwyrOr1MQ(Landroid/view/ScrollCaptureClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->onRequestImageTimeout()V

    return-void
.end method

.method private onEndCaptureCompleted()V
    .registers 2

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->cancelTimeout()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->doShutdown()V

    :cond_9
    return-void
.end method

.method private onEndCaptureTimeout()V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->doShutdown()V

    return-void
.end method

.method private onRequestImageTimeout()V
    .registers 1

    invoke-virtual {p0}, Landroid/view/ScrollCaptureClient;->endCapture()V

    return-void
.end method

.method private onStartCaptureCompleted()V
    .registers 3

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->cancelTimeout()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/-$$Lambda$ScrollCaptureClient$9ZUY_FVuYBZWGLMdk-bSi5wu7zg;

    invoke-direct {v1, p0}, Landroid/view/-$$Lambda$ScrollCaptureClient$9ZUY_FVuYBZWGLMdk-bSi5wu7zg;-><init>(Landroid/view/ScrollCaptureClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method private onStartCaptureTimeout()V
    .registers 1

    invoke-virtual {p0}, Landroid/view/ScrollCaptureClient;->endCapture()V

    return-void
.end method

.method private scheduleTimeout(JLjava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mTimeoutAction:Landroid/view/ScrollCaptureClient$DelayedAction;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/ScrollCaptureClient$DelayedAction;->cancel()Z

    :cond_7
    new-instance v0, Landroid/view/ScrollCaptureClient$DelayedAction;

    iget-object v1, p0, Landroid/view/ScrollCaptureClient;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/view/ScrollCaptureClient$DelayedAction;-><init>(Landroid/os/Handler;JLjava/lang/Runnable;)V

    iput-object v0, p0, Landroid/view/ScrollCaptureClient;->mTimeoutAction:Landroid/view/ScrollCaptureClient$DelayedAction;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .registers 3

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mSession:Landroid/view/ScrollCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/ScrollCaptureSession;->disconnect()V

    iput-object v1, p0, Landroid/view/ScrollCaptureClient;->mSession:Landroid/view/ScrollCaptureSession;

    :cond_a
    iput-object v1, p0, Landroid/view/ScrollCaptureClient;->mSelectedTarget:Landroid/view/ScrollCaptureTarget;

    iput-object v1, p0, Landroid/view/ScrollCaptureClient;->mController:Landroid/view/IScrollCaptureController;

    return-void
.end method

.method public endCapture()V
    .registers 4

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Landroid/view/ScrollCaptureClient;->mTimeoutMillis:I

    int-to-long v0, v0

    new-instance v2, Landroid/view/-$$Lambda$ScrollCaptureClient$ViSKCOfqcLht-jEVL0NThLc_K9A;

    invoke-direct {v2, p0}, Landroid/view/-$$Lambda$ScrollCaptureClient$ViSKCOfqcLht-jEVL0NThLc_K9A;-><init>(Landroid/view/ScrollCaptureClient;)V

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ScrollCaptureClient;->scheduleTimeout(JLjava/lang/Runnable;)V

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/-$$Lambda$ScrollCaptureClient$OoPpYradNVuARe3t3TP2xK3X9iI;

    invoke-direct {v1, p0}, Landroid/view/-$$Lambda$ScrollCaptureClient$OoPpYradNVuARe3t3TP2xK3X9iI;-><init>(Landroid/view/ScrollCaptureClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f

    :cond_1c
    invoke-virtual {p0}, Landroid/view/ScrollCaptureClient;->disconnect()V

    :goto_1f
    return-void
.end method

.method public getTimeoutAction()Landroid/view/ScrollCaptureClient$DelayedAction;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mTimeoutAction:Landroid/view/ScrollCaptureClient$DelayedAction;

    return-object v0
.end method

.method public synthetic lambda$endCapture$4$ScrollCaptureClient()V
    .registers 3

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mSelectedTarget:Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    new-instance v1, Landroid/view/-$$Lambda$ScrollCaptureClient$GYYbruHV0KM9iR0K-qw9FSo1ra8;

    invoke-direct {v1, p0}, Landroid/view/-$$Lambda$ScrollCaptureClient$GYYbruHV0KM9iR0K-qw9FSo1ra8;-><init>(Landroid/view/ScrollCaptureClient;)V

    invoke-interface {v0, v1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureEnd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onRequestImageCompleted$3$ScrollCaptureClient(JLandroid/graphics/Rect;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mController:Landroid/view/IScrollCaptureController;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IScrollCaptureController;->onCaptureBufferSent(JLandroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->doShutdown()V

    :goto_a
    return-void
.end method

.method public synthetic lambda$onStartCaptureCompleted$1$ScrollCaptureClient()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mController:Landroid/view/IScrollCaptureController;

    invoke-interface {v0}, Landroid/view/IScrollCaptureController;->onCaptureStarted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->doShutdown()V

    :goto_a
    return-void
.end method

.method public synthetic lambda$requestImage$2$ScrollCaptureClient(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mSelectedTarget:Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureClient;->mSession:Landroid/view/ScrollCaptureSession;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1, v2}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic lambda$startCapture$0$ScrollCaptureClient()V
    .registers 4

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mSelectedTarget:Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureClient;->mSession:Landroid/view/ScrollCaptureSession;

    new-instance v2, Landroid/view/-$$Lambda$ScrollCaptureClient$0-SRlg7x7JtQystMp7lzoCyGfOY;

    invoke-direct {v2, p0}, Landroid/view/-$$Lambda$ScrollCaptureClient$0-SRlg7x7JtQystMp7lzoCyGfOY;-><init>(Landroid/view/ScrollCaptureClient;)V

    invoke-interface {v0, v1, v2}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Ljava/lang/Runnable;)V

    return-void
.end method

.method onRequestImageCompleted(JLandroid/graphics/Rect;)V
    .registers 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->cancelTimeout()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/view/ScrollCaptureClient;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/-$$Lambda$ScrollCaptureClient$jB-gZzHC6CVXS20ua5gOXB2VBpE;

    invoke-direct {v2, p0, p1, p2, v0}, Landroid/view/-$$Lambda$ScrollCaptureClient$jB-gZzHC6CVXS20ua5gOXB2VBpE;-><init>(Landroid/view/ScrollCaptureClient;JLandroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public requestImage(Landroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->checkConnected()V

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->checkStarted()V

    iget v0, p0, Landroid/view/ScrollCaptureClient;->mTimeoutMillis:I

    int-to-long v0, v0

    new-instance v2, Landroid/view/-$$Lambda$ScrollCaptureClient$cg6Nc5a-WzAiBUwgRjGwyrOr1MQ;

    invoke-direct {v2, p0}, Landroid/view/-$$Lambda$ScrollCaptureClient$cg6Nc5a-WzAiBUwgRjGwyrOr1MQ;-><init>(Landroid/view/ScrollCaptureClient;)V

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ScrollCaptureClient;->scheduleTimeout(JLjava/lang/Runnable;)V

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/-$$Lambda$ScrollCaptureClient$rf3BkY5f-J7V42O_dMJLA1rnVkM;

    invoke-direct {v1, p0, p1}, Landroid/view/-$$Lambda$ScrollCaptureClient$rf3BkY5f-J7V42O_dMJLA1rnVkM;-><init>(Landroid/view/ScrollCaptureClient;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTimeoutMillis(I)V
    .registers 2

    iput p1, p0, Landroid/view/ScrollCaptureClient;->mTimeoutMillis:I

    return-void
.end method

.method public startCapture(Landroid/view/Surface;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient;->checkConnected()V

    iput-object p1, p0, Landroid/view/ScrollCaptureClient;->mSurface:Landroid/view/Surface;

    iget v0, p0, Landroid/view/ScrollCaptureClient;->mTimeoutMillis:I

    int-to-long v0, v0

    new-instance v2, Landroid/view/-$$Lambda$ScrollCaptureClient$Epfw54HmxmekAnuTbczAITVw7Dg;

    invoke-direct {v2, p0}, Landroid/view/-$$Lambda$ScrollCaptureClient$Epfw54HmxmekAnuTbczAITVw7Dg;-><init>(Landroid/view/ScrollCaptureClient;)V

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ScrollCaptureClient;->scheduleTimeout(JLjava/lang/Runnable;)V

    new-instance v0, Landroid/view/ScrollCaptureSession;

    iget-object v1, p0, Landroid/view/ScrollCaptureClient;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/view/ScrollCaptureClient;->mScrollBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ScrollCaptureClient;->mPositionInWindow:Landroid/graphics/Point;

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/view/ScrollCaptureSession;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureClient;)V

    iput-object v0, p0, Landroid/view/ScrollCaptureClient;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v0, p0, Landroid/view/ScrollCaptureClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/-$$Lambda$ScrollCaptureClient$Wx8q2o_h2xkFAIBvHcSi3uj-Sm0;

    invoke-direct {v1, p0}, Landroid/view/-$$Lambda$ScrollCaptureClient$Wx8q2o_h2xkFAIBvHcSi3uj-Sm0;-><init>(Landroid/view/ScrollCaptureClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureClient{, session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/ScrollCaptureClient;->mSession:Landroid/view/ScrollCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/ScrollCaptureClient;->mSelectedTarget:Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clientCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/ScrollCaptureClient;->mController:Landroid/view/IScrollCaptureController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
