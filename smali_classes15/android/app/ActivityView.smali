.class public Landroid/app/ActivityView;
.super Landroid/view/ViewGroup;
.source "ActivityView.java"

# interfaces
.implements Landroid/window/TaskEmbedder$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityView$StateCallbackAdapter;,
        Landroid/app/ActivityView$SurfaceCallback;,
        Landroid/app/ActivityView$StateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityView"


# instance fields
.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mOpened:Z

.field private final mScreenSurfaceMatrix:Landroid/graphics/Matrix;

.field private final mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private final mTapExcludeRegion:Landroid/graphics/Region;

.field private mTaskEmbedder:Landroid/window/TaskEmbedder;

.field private final mTmpArray:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWindowPosition:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZZ)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZZZ)V
    .registers 14

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityView;->mWindowPosition:Landroid/graphics/Point;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/ActivityView;->mTmpArray:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityView;->mScreenSurfaceMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityView;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/app/ActivityView;->useTaskOrganizer()Z

    move-result v0

    if-eqz v0, :cond_3f

    new-instance v0, Landroid/window/TaskOrganizerTaskEmbedder;

    invoke-direct {v0, p1, p0}, Landroid/window/TaskOrganizerTaskEmbedder;-><init>(Landroid/content/Context;Landroid/window/TaskEmbedder$Host;)V

    iput-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    goto :goto_46

    :cond_3f
    new-instance v0, Landroid/window/VirtualDisplayTaskEmbedder;

    invoke-direct {v0, p1, p0, p4, p5}, Landroid/window/VirtualDisplayTaskEmbedder;-><init>(Landroid/content/Context;Landroid/window/TaskEmbedder$Host;ZZ)V

    iput-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    :goto_46
    new-instance v0, Landroid/view/SurfaceView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    iput-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-super {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->setUseAlpha()V

    new-instance v0, Landroid/app/ActivityView$SurfaceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityView$SurfaceCallback;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V

    iput-object v0, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityView;->mOpened:Z

    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/ActivityView;)Landroid/window/TaskEmbedder;
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ActivityView;)Landroid/view/SurfaceView;
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/ActivityView;Landroid/view/SurfaceControl;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityView;->initTaskEmbedder(Landroid/view/SurfaceControl;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/app/ActivityView;)Landroid/view/SurfaceControl$Transaction;
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method private initTaskEmbedder(Landroid/view/SurfaceControl;)Z
    .registers 4

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0, p1}, Landroid/window/TaskEmbedder;->initialize(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "ActivityView"

    const-string v1, "Failed to initialize ActivityView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private performRelease()V
    .registers 3

    iget-boolean v0, p0, Landroid/app/ActivityView;->mOpened:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0}, Landroid/window/TaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0}, Landroid/window/TaskEmbedder;->release()V

    :cond_1d
    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/window/TaskEmbedder;->setListener(Landroid/window/TaskEmbedder$Listener;)V

    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityView;->mOpened:Z

    return-void
.end method


# virtual methods
.method public canReceivePointerEvents()Z
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->canReceivePointerEvents()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-direct {p0}, Landroid/app/ActivityView;->performRelease()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    :cond_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0, p1}, Landroid/window/TaskEmbedder;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public getAlpha()F
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getCornerRadius()F
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public getPositionInWindow()Landroid/graphics/Point;
    .registers 5

    iget-object v0, p0, Landroid/app/ActivityView;->mTmpArray:[I

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->getLocationInWindow([I)V

    iget-object v0, p0, Landroid/app/ActivityView;->mWindowPosition:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/app/ActivityView;->mTmpArray:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Landroid/app/ActivityView;->mWindowPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScreenBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/app/ActivityView;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScreenToTaskMatrix()Landroid/graphics/Matrix;
    .registers 5

    iget-object v0, p0, Landroid/app/ActivityView;->mTmpArray:[I

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->getLocationOnScreen([I)V

    iget-object v0, p0, Landroid/app/ActivityView;->mScreenSurfaceMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/app/ActivityView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroid/app/ActivityView;->mScreenSurfaceMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/app/ActivityView;->mTmpArray:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroid/app/ActivityView;->mScreenSurfaceMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getSurfaceClipBounds(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getTapExcludeRegion()Landroid/graphics/Region;
    .registers 8

    invoke-virtual {p0}, Landroid/app/ActivityView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/app/ActivityView;->canReceivePointerEvents()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/app/ActivityView;->getPositionInWindow()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView;->mTapExcludeRegion:Landroid/graphics/Region;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/app/ActivityView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/app/ActivityView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Region;->set(IIII)Z

    invoke-virtual {p0}, Landroid/app/ActivityView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v2, p0, Landroid/app/ActivityView;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-interface {v1, v2, p0}, Landroid/view/ViewParent;->subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V

    :cond_32
    goto :goto_38

    :cond_33
    iget-object v0, p0, Landroid/app/ActivityView;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    :goto_38
    iget-object v0, p0, Landroid/app/ActivityView;->mTapExcludeRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0}, Landroid/window/TaskEmbedder;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualDisplayId()I
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0}, Landroid/window/TaskEmbedder;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/IWindow;
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->getWindow()Landroid/view/IWindow;

    move-result-object v0

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .registers 10

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    return-void
.end method

.method public onLocationChanged()V
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0}, Landroid/window/TaskEmbedder;->notifyBoundsChanged()V

    return-void
.end method

.method public onTaskBackgroundColorChanged(Landroid/window/TaskEmbedder;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setResizeBackgroundColor(I)V

    :cond_7
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public performBackPress()V
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0}, Landroid/window/TaskEmbedder;->performBackPress()V

    return-void
.end method

.method public release()V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityView;->performRelease()V

    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_a
    return-void
.end method

.method public setCallback(Landroid/app/ActivityView$StateCallback;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_9

    iget-object v1, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v1, v0}, Landroid/window/TaskEmbedder;->setListener(Landroid/window/TaskEmbedder$Listener;)V

    return-void

    :cond_9
    iget-object v1, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    new-instance v2, Landroid/app/ActivityView$StateCallbackAdapter;

    invoke-direct {v2, p0, p1, v0}, Landroid/app/ActivityView$StateCallbackAdapter;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$StateCallback;Landroid/app/ActivityView$1;)V

    invoke-virtual {v1, v2}, Landroid/window/TaskEmbedder;->setListener(Landroid/window/TaskEmbedder$Listener;)V

    return-void
.end method

.method public setCornerRadius(F)V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0, p1}, Landroid/window/TaskEmbedder;->setForwardedInsets(Landroid/graphics/Insets;)V

    return-void
.end method

.method public setSurfaceClipBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSurfaceClippingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0, p1}, Landroid/window/TaskEmbedder;->startActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .registers 5

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/TaskEmbedder;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0, p1}, Landroid/window/TaskEmbedder;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskEmbedder;->startActivity(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/app/ActivityView;->mTaskEmbedder:Landroid/window/TaskEmbedder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/TaskEmbedder;->startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected useTaskOrganizer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
