.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;
.implements Landroid/view/ViewRootImpl$CastProjectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_POSITION:Z = false

.field private static final TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private lastCastModeOpen:Z

.field private mAlreadySetCastMode:Z

.field private mAttachedToWindow:Z

.field mBackgroundColor:I

.field mBackgroundControl:Landroid/view/SurfaceControl;

.field private mBlurCurrent:Z

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field mClipSurfaceToBounds:Z

.field mCornerRadius:F

.field mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

.field private mDisableBackgroundLayer:Z

.field mDrawFinished:Z

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field mHaveFrame:Z

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWindowVisibility:Z

.field final mLocation:[I

.field private final mMatrixValues:[F

.field private mParentSurfaceGenerationId:I

.field private mPendingReportDraws:I

.field private mPositionListener:Landroid/graphics/RenderNode$PositionUpdateListener;

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field private mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field mRoundedViewportPaint:Landroid/graphics/Paint;

.field private volatile mRtHandlingPositionUpdates:Z

.field private volatile mRtReleaseSurfaces:Z

.field private mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mScreenMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

.field final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSubLayer:I

.field final mSurface:Landroid/view/Surface;

.field mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field final mSurfaceControlLock:Ljava/lang/Object;

.field mSurfaceCreated:Z

.field private mSurfaceFlags:I

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field mSurfaceHeight:I

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field mSurfaceWidth:I

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field final mTmpRect:Landroid/graphics/Rect;

.field private mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field mUseAlpha:Z

.field mViewVisibility:Z

.field mVisible:Z

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowStopped:Z

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .registers 12

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, -0x2

    iput v2, p0, Landroid/view/SurfaceView;->mSubLayer:I

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtReleaseSurfaces:Z

    new-instance v2, Landroid/view/-$$Lambda$PYGleuqIeCxjTD1pJqqx1opFv1g;

    invoke-direct {v2, p0}, Landroid/view/-$$Lambda$PYGleuqIeCxjTD1pJqqx1opFv1g;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v2, Landroid/view/-$$Lambda$SurfaceView$w68OV7dB_zKVNsA-r0IrAUtyWas;

    invoke-direct {v2, p0}, Landroid/view/-$$Lambda$SurfaceView$w68OV7dB_zKVNsA-r0IrAUtyWas;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    const/4 v3, 0x4

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    const/high16 v4, -0x1000000

    iput v4, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    iput-boolean v1, p0, Landroid/view/SurfaceView;->lastCastModeOpen:Z

    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mScreenMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/view/SurfaceView;->mMatrixValues:[F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    new-instance v1, Landroid/view/SurfaceView$1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/graphics/RenderNode$PositionUpdateListener;

    new-instance v1, Landroid/view/SurfaceView$2;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v2, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/graphics/RenderNode$PositionUpdateListener;

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    iput-boolean p5, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    return-void
.end method

.method static synthetic access$002(Landroid/view/SurfaceView;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    return p1
.end method

.method static synthetic access$100(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/SurfaceView;Landroid/graphics/Rect;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/SurfaceView;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRtReleaseSurfaces:Z

    return v0
.end method

.method static synthetic access$402(Landroid/view/SurfaceView;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/view/SurfaceView;->mRtReleaseSurfaces:Z

    return p1
.end method

.method static synthetic access$500(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Landroid/view/SurfaceView;)Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method static synthetic access$602(Landroid/view/SurfaceView;Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;)Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;
    .registers 2

    iput-object p1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    return-object p1
.end method

.method private applySurfaceTransforms(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;J)V
    .registers 15

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_19

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isDrawingToBLASTTransaction()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getRenderSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p2, p1, v1, p4, p5}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;

    :cond_19
    iget v5, p3, Landroid/graphics/Rect;->left:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float v7, v1, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float v8, v1, v2

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScaleRT(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v1, :cond_3e

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_3e
    return-void
.end method

.method private clearSurfaceViewPort(Landroid/graphics/Canvas;)V
    .registers 11

    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_39

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_1b
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget v7, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    iget-object v8, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_3f

    :cond_39
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_3f
    return-void
.end method

.method private getFixedAlpha()F
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v1, :cond_13

    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gtz v1, :cond_11

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_13

    :cond_11
    move v1, v0

    goto :goto_15

    :cond_13
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_15
    return v1
.end method

.method private getRemoteAccessibilityEmbeddedConnection()Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .registers 4

    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    nop

    invoke-direct {p0}, Landroid/view/SurfaceView;->getRemoteAccessibilityEmbeddedConnection()Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-void

    :cond_16
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Landroid/view/SurfaceView;->setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V

    nop

    :try_start_1b
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAccessibilityViewId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->associateEmbeddedHierarchy(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/view/SurfaceView;->setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2c} :catch_2d

    goto :goto_44

    :catch_2d
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while associateEmbeddedHierarchy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SurfaceView"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateScreenMatrixForEmbeddedHierarchy()V

    return-void
.end method

.method private isAboveParent()Z
    .registers 2

    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static synthetic lambda$SyyzxOgxKwZMRgiiTGcRYbOU5JY(Landroid/view/SurfaceView;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method public static synthetic lambda$TWz4D2u33ZlAmRtgKzbqqDue3iM(Landroid/view/SurfaceView;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method private notifySurfaceDestroyed()V
    .registers 6

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->forceScopedDisconnect()V

    :cond_27
    return-void
.end method

.method private onDrawFinished()V
    .registers 2

    new-instance v0, Landroid/view/-$$Lambda$SurfaceView$TWz4D2u33ZlAmRtgKzbqqDue3iM;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$SurfaceView$TWz4D2u33ZlAmRtgKzbqqDue3iM;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private performDrawFinished()V
    .registers 4

    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    :cond_1a
    :goto_1a
    iget v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    goto :goto_4b

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "finished drawing but no pending report draw (extra call to draw completion runnable?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    return-void
.end method

.method private releaseSurfaces()V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtReleaseSurfaces:Z

    monitor-exit v0

    return-void

    :cond_15
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_23
    iget-object v1, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    :cond_30
    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;->initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_14

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    :cond_14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_17
    return-void
.end method

.method private setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    .registers 13

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isDrawingToBLASTTransaction()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getBLASTSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    goto :goto_11

    :cond_f
    iget-object v2, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    :goto_11
    nop

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object v3, p0

    move-object v5, v2

    move-object v6, p1

    move-wide v7, p2

    invoke-direct/range {v3 .. v8}, Landroid/view/SurfaceView;->applySurfaceTransforms(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;J)V

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/view/SurfaceView;->applyChildSurfaceTransaction_renderWorker(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;J)V

    if-nez v1, :cond_25

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_25
    return-void
.end method

.method private setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->disassociateEmbeddedHierarchy()V

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->unlinkToDeath()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    :cond_15
    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    new-instance v0, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;-><init>(Landroid/view/SurfaceView;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->linkToDeath()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    :cond_23
    goto :goto_3b

    :catch_24
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while setRemoteEmbeddedConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void
.end method

.method private setWindowStopped(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method private updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    return-object p1
.end method

.method private updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v1, :cond_17

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    if-nez v1, :cond_17

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1c
    return-void
.end method

.method private updateOpaqueFlag()V
    .registers 2

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_15

    :cond_f
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_15
    return-void
.end method

.method private updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private updateRequestedVisibility()V
    .registers 2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    return-void
.end method

.method private updateScreenMatrixForEmbeddedHierarchy()V
    .registers 5

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_7f

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_7f

    :cond_47
    nop

    :try_start_48
    invoke-direct {p0}, Landroid/view/SurfaceView;->getRemoteAccessibilityEmbeddedConnection()Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    move-result-object v0

    if-nez v0, :cond_4f

    return-void

    :cond_4f
    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/view/SurfaceView;->mMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {v0}, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mMatrixValues:[F

    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->setScreenMatrix([F)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_66} :catch_67

    goto :goto_7e

    :catch_67
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while setScreenMatrix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7e
    return-void

    :cond_7f
    :goto_7f
    return-void
.end method

.method private updateSurfaceAlpha()V
    .registers 13

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v1, :cond_32

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_32

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " updateSurfaceAlpha: translucent color is not supported for a surface placed z-below."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v1, :cond_37

    return-void

    :cond_37
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-nez v1, :cond_3e

    return-void

    :cond_3e
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_43

    return-void

    :cond_43
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v8, :cond_82

    invoke-virtual {v8}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_4e

    goto :goto_82

    :cond_4e
    invoke-direct {p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v9

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    cmpl-float v2, v9, v2

    if-eqz v2, :cond_81

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->useBLAST()Z

    move-result v10

    new-instance v11, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;

    move-object v2, v11

    move-object v3, p0

    move v4, v10

    move-object v5, v1

    move-object v6, v8

    move v7, v9

    invoke-direct/range {v2 .. v7}, Landroid/view/-$$Lambda$SurfaceView$DKSyxzWn62XKbC15Dh1hMSfxKQg;-><init>(Landroid/view/SurfaceView;ZLandroid/view/ViewRootImpl;Landroid/view/Surface;F)V

    invoke-virtual {v1, v11}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->damageInParent()V

    goto :goto_7f

    :cond_74
    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_7f
    iput v9, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    :cond_81
    return-void

    :cond_82
    :goto_82
    return-void
.end method


# virtual methods
.method protected applyChildSurfaceTransaction_renderWorker(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;J)V
    .registers 5

    return-void
.end method

.method public castModeChanged()V
    .registers 1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_13

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    :cond_13
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 13

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_48

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_b

    goto :goto_48

    :cond_b
    const/4 v0, 0x1

    iget v1, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_17

    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    goto :goto_3e

    :cond_17
    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    if-lez v1, :cond_3e

    if-lez v2, :cond_3e

    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int v8, v4, v1

    add-int v9, v3, v2

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    move v6, v4

    move v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_3e
    :goto_3e
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v0, 0x0

    :cond_47
    return v0

    :cond_48
    :goto_48
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public getCornerRadius()F
    .registers 2

    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    return v0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getHostToken()Landroid/os/IBinder;
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public getImportantForAccessibility()I
    .registers 3

    invoke-super {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    if-eqz v1, :cond_d

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x1

    return v1

    :cond_d
    :goto_d
    return v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceRenderPosition()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isFixedSize()Z
    .registers 3

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public isZOrderedOnTop()Z
    .registers 2

    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic lambda$new$0$SurfaceView()Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return v1
.end method

.method public synthetic lambda$setZOrderedOnTop$2$SurfaceView(ZLandroid/view/ViewRootImpl;Landroid/view/Surface;J)V
    .registers 10

    if-eqz p1, :cond_7

    :try_start_2
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getBLASTSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    goto :goto_c

    :cond_7
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :goto_c
    nop

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_33

    :try_start_10
    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_1b

    goto :goto_2e

    :cond_1b
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    if-nez p1, :cond_29

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getRenderSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p4, p5}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;

    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_30

    :try_start_2a
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_33

    goto :goto_4f

    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v1

    return-void

    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    :try_start_32
    throw v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_33

    :catch_33
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setZOrderOnTop RT: Exception during surface transaction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceView"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4f
    return-void
.end method

.method public synthetic lambda$updateSurfaceAlpha$1$SurfaceView(ZLandroid/view/ViewRootImpl;Landroid/view/Surface;FJ)V
    .registers 11

    if-eqz p1, :cond_7

    :try_start_2
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getBLASTSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    goto :goto_c

    :cond_7
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :goto_c
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_35

    :try_start_f
    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_17

    monitor-exit v1

    return-void

    :cond_17
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_1d

    monitor-exit v1

    return-void

    :cond_1d
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-nez p1, :cond_2d

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getRenderSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;

    :cond_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_32

    :try_start_2e
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_35

    goto :goto_51

    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_35} :catch_35

    :catch_35
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateSurfaceAlpha RT: Exception during surface transaction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceView"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_51
    return-void
.end method

.method notifyDrawFinished()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    :cond_9
    iget v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addCastProjectionCallback(Landroid/view/ViewRootImpl$CastProjectionCallback;)V

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1e

    move v0, v2

    :cond_1e
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_3e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeCastProjectionCallback(Landroid/view/ViewRootImpl$CastProjectionCallback;)V

    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_25
    :goto_25
    iget v2, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v2, :cond_2d

    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    goto :goto_25

    :cond_2d
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    invoke-direct {p0}, Landroid/view/SurfaceView;->releaseSurfaces()V

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    :cond_3f
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    nop

    invoke-direct {p0}, Landroid/view/SurfaceView;->getRemoteAccessibilityEmbeddedConnection()Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->getLeashToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/os/IBinder;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_a

    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_e

    :cond_a
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    :goto_e
    nop

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_18

    invoke-static {v2, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    goto :goto_1c

    :cond_18
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    :goto_1c
    nop

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSetSurfacePositionAndScaleRT(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .registers 15

    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method public requestUpdateSurfacePositionAndScale()V
    .registers 8

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v5, v5

    div-float v5, v0, v5

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v6, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v6, v6

    div-float v6, v0, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScaleRT(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateSurfaceAlpha()V

    return-void
.end method

.method public setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_13

    :cond_12
    move-object v2, v0

    :goto_13
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_28

    if-eqz v2, :cond_28

    iget-object v3, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    goto :goto_36

    :cond_28
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0, p1}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_36
    :goto_36
    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_18
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_50

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_32

    :cond_29
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_32
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {v0, p0}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    new-instance v3, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v4, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :cond_50
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4

    iput p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1e
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public setEnableSurfaceClipping(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return v0
.end method

.method public setProtected(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_f

    :cond_9
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_f
    return-void
.end method

.method public setResizeBackgroundColor(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public setSecure(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_f

    :cond_9
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_f
    return-void
.end method

.method public setUseAlpha()V
    .registers 2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateSurfaceAlpha()V

    :cond_a
    return-void
.end method

.method public setVisibility(I)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    :goto_a
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    iget-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v3, :cond_17

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_17

    move v0, v1

    :cond_17
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v2, :cond_25

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->setProjectionModeChanged(Z)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_25
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x2

    :goto_5
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    return-void
.end method

.method public setZOrderOnTop(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    return-void
.end method

.method public setZOrderedOnTop(ZZ)Z
    .registers 9

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x2

    :goto_5
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_b

    return v2

    :cond_b
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-nez p2, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-nez v1, :cond_16

    return v2

    :cond_16
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_38

    :cond_28
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->useBLAST()Z

    move-result v4

    new-instance v5, Landroid/view/-$$Lambda$SurfaceView$LV-kXr5_jITlrRhkV6FsfMSbnO8;

    invoke-direct {v5, p0, v4, v1, v3}, Landroid/view/-$$Lambda$SurfaceView$LV-kXr5_jITlrRhkV6FsfMSbnO8;-><init>(Landroid/view/SurfaceView;ZLandroid/view/ViewRootImpl;Landroid/view/Surface;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return v2

    :cond_38
    :goto_38
    return v2
.end method

.method public surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    return-void
.end method

.method public surfaceDestroyed()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/SurfaceView;->setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V

    return-void
.end method

.method public surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    :cond_b
    return-void
.end method

.method protected updateSurface()V
    .registers 30

    move-object/from16 v8, p0

    const-string v0, "SurfaceView.updateSurface"

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v9

    if-nez v9, :cond_10

    return-void

    :cond_10
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4fc

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_4fc

    :cond_1e
    iget-object v10, v9, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v10, :cond_27

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v10}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    :cond_27
    iget-boolean v1, v8, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    const-string v2, "UPDATE "

    const-string v11, "SurfaceView"

    const/4 v12, 0x1

    if-eqz v1, :cond_36

    iget-boolean v1, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    iget-boolean v3, v8, Landroid/view/SurfaceView;->lastCastModeOpen:Z

    if-eq v1, v3, :cond_74

    :cond_36
    iget-boolean v1, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    iput-boolean v1, v8, Landroid/view/SurfaceView;->lastCastModeOpen:Z

    iput-boolean v12, v8, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsCastMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_68

    iget-boolean v4, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setCastLayer(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_68
    iget-object v3, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_71

    iget-boolean v4, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setCastLayer(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_71
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_74
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getProjectionModeChanged()Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_107

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_a7

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_a7

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-nez v1, :cond_98

    goto :goto_a7

    :cond_98
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    goto :goto_a8

    :cond_a7
    :goto_a7
    const/4 v1, -0x1

    :goto_a8
    nop

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_107

    const/4 v3, 0x5

    if-ne v1, v3, :cond_107

    invoke-virtual {v9, v13}, Landroid/view/ViewRootImpl;->setProjectionModeChanged(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsProjectionMode = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v4, 0x1000000

    if-eqz v3, :cond_ef

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v3

    if-eqz v3, :cond_ea

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_ef

    :cond_ea
    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v13}, Landroid/view/SurfaceControl$Transaction;->setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_ef
    :goto_ef
    iget-object v3, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_104

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v3

    if-eqz v3, :cond_ff

    iget-object v3, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_104

    :cond_ff
    iget-object v3, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v13}, Landroid/view/SurfaceControl$Transaction;->setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_104
    :goto_104
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_107
    iget v1, v8, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-gtz v1, :cond_10f

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    :cond_10f
    move v14, v1

    iget v1, v8, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-gtz v1, :cond_118

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    :cond_118
    move v15, v1

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v7

    iget v1, v8, Landroid/view/SurfaceView;->mFormat:I

    iget v2, v8, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v1, v2, :cond_125

    move v1, v12

    goto :goto_126

    :cond_125
    move v1, v13

    :goto_126
    move/from16 v16, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v8, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/util/MiuiMultiWindowAdapter;->getSurfaceViewVisable(Landroid/view/SurfaceView;Landroid/content/res/Resources;ILjava/lang/String;)V

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v2, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v1, v2, :cond_141

    move v1, v12

    goto :goto_142

    :cond_141
    move v1, v13

    :goto_142
    move/from16 v17, v1

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_14c

    move v1, v12

    goto :goto_14d

    :cond_14c
    move v1, v13

    :goto_14d
    move/from16 v18, v1

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_157

    if-nez v16, :cond_157

    if-eqz v17, :cond_15d

    :cond_157
    iget-boolean v1, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v1, :cond_15d

    move v1, v12

    goto :goto_15e

    :cond_15d
    move v1, v13

    :goto_15e
    move/from16 v19, v1

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v1, v14, :cond_16b

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v1, v15, :cond_169

    goto :goto_16b

    :cond_169
    move v1, v13

    goto :goto_16c

    :cond_16b
    :goto_16b
    move v1, v12

    :goto_16c
    move/from16 v20, v1

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v2, v8, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v1, v2, :cond_176

    move v1, v12

    goto :goto_177

    :cond_176
    move v1, v13

    :goto_177
    move/from16 v21, v1

    const/16 v22, 0x0

    iget-object v1, v8, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v8, v1}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    iget v1, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v2, v8, Landroid/view/SurfaceView;->mLocation:[I

    aget v3, v2, v13

    if-ne v1, v3, :cond_191

    iget v1, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    aget v2, v2, v12

    if-eq v1, v2, :cond_18f

    goto :goto_191

    :cond_18f
    move v1, v13

    goto :goto_192

    :cond_191
    :goto_191
    move v1, v12

    :goto_192
    move/from16 v23, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iget-object v2, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_1af

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    iget-object v2, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_1ad

    goto :goto_1af

    :cond_1ad
    move v1, v13

    goto :goto_1b0

    :cond_1af
    :goto_1af
    move v1, v12

    :goto_1b0
    move/from16 v24, v1

    if-nez v19, :cond_1cb

    if-nez v16, :cond_1cb

    if-nez v20, :cond_1cb

    if-nez v17, :cond_1cb

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v1, :cond_1c0

    if-nez v18, :cond_1cb

    :cond_1c0
    if-nez v21, :cond_1cb

    if-nez v23, :cond_1cb

    if-eqz v24, :cond_1c7

    goto :goto_1cb

    :cond_1c7
    move/from16 v28, v7

    goto/16 :goto_4fb

    :cond_1cb
    :goto_1cb
    iget-object v1, v8, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v8, v1}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    :try_start_1d0
    iget-boolean v1, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v1, v8, Landroid/view/SurfaceView;->mVisible:Z

    move/from16 v25, v1

    iget-object v1, v8, Landroid/view/SurfaceView;->mLocation:[I

    aget v1, v1, v13

    iput v1, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v2, v8, Landroid/view/SurfaceView;->mLocation:[I

    aget v2, v2, v12

    iput v2, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v14, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v15, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v2, v8, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v2, v8, Landroid/view/SurfaceView;->mFormat:I

    iget-boolean v2, v8, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v2, v8, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    iget-object v2, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_20e} :catch_4f3

    if-eqz v10, :cond_21b

    :try_start_210
    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_215} :catch_216

    goto :goto_21b

    :catch_216
    move-exception v0

    move/from16 v28, v7

    goto/16 :goto_4f6

    :cond_21b
    :goto_21b
    :try_start_21b
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object v6, v1

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_229} :catch_4f3

    if-eqz v19, :cond_2c6

    :try_start_22b
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v1, v8, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/view/SurfaceControl$Builder;

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v2, v3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget v3, v8, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_262

    move v3, v12

    goto :goto_263

    :cond_262
    move v3, v13

    :goto_263
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget v3, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v4, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget v3, v8, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getBoundsLayer()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget v3, v8, Landroid/view/SurfaceView;->mSurfaceFlags:I

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v2, Landroid/view/SurfaceControl$Builder;

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v2, v3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Background for -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;
    :try_end_2c5
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_2c5} :catch_216

    goto :goto_2cb

    :cond_2c6
    :try_start_2c6
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2cb

    return-void

    :cond_2cb
    :goto_2cb
    nop

    const/16 v26, 0x0

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2d3
    .catch Ljava/lang/Exception; {:try_start_2c6 .. :try_end_2d3} :catch_4f3

    if-nez v25, :cond_2d7

    move v0, v12

    goto :goto_2d8

    :cond_2d7
    move v0, v13

    :goto_2d8
    :try_start_2d8
    iput-boolean v0, v8, Landroid/view/SurfaceView;->mDrawingStopped:Z
    :try_end_2da
    .catchall {:try_start_2d8 .. :try_end_2da} :catchall_4e5

    if-nez v19, :cond_2ee

    :try_start_2dc
    iget v0, v8, Landroid/view/SurfaceView;->mParentSurfaceGenerationId:I

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->getGenerationId()I

    move-result v1
    :try_end_2e4
    .catchall {:try_start_2dc .. :try_end_2e4} :catchall_2e7

    if-ne v0, v1, :cond_2f3

    goto :goto_2ee

    :catchall_2e7
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v28, v7

    goto/16 :goto_4ea

    :cond_2ee
    :goto_2ee
    :try_start_2ee
    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8, v0}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2f3
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    iput v0, v8, Landroid/view/SurfaceView;->mParentSurfaceGenerationId:I

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mViewVisibility:Z
    :try_end_2fd
    .catchall {:try_start_2ee .. :try_end_2fd} :catchall_4e5

    if-eqz v0, :cond_307

    :try_start_2ff
    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_306
    .catchall {:try_start_2ff .. :try_end_306} :catchall_2e7

    goto :goto_30e

    :cond_307
    :try_start_307
    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_30e
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;
    :try_end_310
    .catchall {:try_start_307 .. :try_end_310} :catchall_4e5

    if-eqz v0, :cond_319

    :try_start_312
    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-direct {v8, v0, v1}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_319
    .catchall {:try_start_312 .. :try_end_319} :catchall_2e7

    :cond_319
    :try_start_319
    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8, v0}, Landroid/view/SurfaceView;->updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8, v0}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mUseAlpha:Z
    :try_end_325
    .catchall {:try_start_319 .. :try_end_325} :catchall_4e5

    if-eqz v0, :cond_330

    :try_start_327
    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iput v7, v8, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    :cond_330
    if-nez v20, :cond_358

    if-nez v19, :cond_358

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-nez v0, :cond_339

    goto :goto_358

    :cond_339
    if-nez v24, :cond_345

    if-nez v23, :cond_345

    if-eqz v17, :cond_340

    goto :goto_345

    :cond_340
    move-object/from16 v27, v6

    move/from16 v28, v7

    goto :goto_3a3

    :cond_345
    :goto_345
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->useBLAST()Z

    move-result v0

    if-eqz v0, :cond_353

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->setUseBLASTSyncTransaction()V
    :try_end_34e
    .catchall {:try_start_327 .. :try_end_34e} :catchall_2e7

    move-object/from16 v27, v6

    move/from16 v28, v7

    goto :goto_3a3

    :cond_353
    move-object/from16 v27, v6

    move/from16 v28, v7

    goto :goto_3a3

    :cond_358
    :goto_358
    :try_start_358
    iget-object v2, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v12, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I
    :try_end_378
    .catchall {:try_start_358 .. :try_end_378} :catchall_4e5

    int-to-float v12, v12

    div-float v12, v1, v12

    move-object/from16 v1, p0

    move-object/from16 v27, v6

    move v6, v0

    move/from16 v28, v7

    move v7, v12

    :try_start_383
    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScaleRT(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_398

    iget-object v0, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_398

    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3a3

    :cond_398
    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :goto_3a3
    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v8, Landroid/view/SurfaceView;->mCornerRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-eqz v20, :cond_3bb

    if-nez v19, :cond_3bb

    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_3bb
    iget-object v0, v8, Landroid/view/SurfaceView;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateScreenMatrixForEmbeddedHierarchy()V

    if-nez v20, :cond_3c7

    if-eqz v19, :cond_3c9

    :cond_3c7
    const/16 v22, 0x1

    :cond_3c9
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v13, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v13, v0, Landroid/graphics/Rect;->top:I

    if-nez v10, :cond_3e0

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3f8

    :cond_3e0
    iget v0, v10, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :goto_3f8
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v8, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne v2, v0, :cond_40b

    iget v2, v8, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq v2, v1, :cond_409

    goto :goto_40b

    :cond_409
    move v2, v13

    goto :goto_40c

    :cond_40b
    :goto_40b
    const/4 v2, 0x1

    :goto_40c
    move/from16 v26, v2

    iput v0, v8, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v1, v8, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_412
    .catchall {:try_start_383 .. :try_end_412} :catchall_4e3

    :try_start_412
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_417
    .catch Ljava/lang/Exception; {:try_start_412 .. :try_end_417} :catch_4f1

    nop

    if-eqz v25, :cond_423

    :try_start_41a
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_423

    const/4 v0, 0x1

    goto :goto_424

    :catchall_420
    move-exception v0

    goto/16 :goto_4d4

    :cond_423
    move v0, v13

    :goto_424
    or-int v22, v22, v0

    const/4 v0, 0x0

    move/from16 v1, v19

    iget-boolean v2, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v2, :cond_438

    if-nez v1, :cond_433

    if-nez v25, :cond_438

    if-eqz v17, :cond_438

    :cond_433
    iput-boolean v13, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    :cond_438
    if-eqz v19, :cond_441

    iget-object v2, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    :cond_441
    if-eqz v20, :cond_458

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_458

    iget-object v2, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->createFrom(Landroid/view/SurfaceControl;)V

    :cond_458
    if-eqz v25, :cond_4c6

    iget-object v2, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4c6

    iget-boolean v2, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v2, :cond_484

    if-nez v1, :cond_46a

    if-eqz v17, :cond_484

    :cond_46a
    const/4 v2, 0x1

    iput-boolean v2, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    iput-boolean v2, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    if-nez v0, :cond_476

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    move-object v0, v2

    :cond_476
    array-length v2, v0

    move v3, v13

    :goto_478
    if-ge v3, v2, :cond_484

    aget-object v4, v0, v3

    iget-object v5, v8, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_478

    :cond_484
    if-nez v19, :cond_48e

    if-nez v16, :cond_48e

    if-nez v20, :cond_48e

    if-nez v17, :cond_48e

    if-eqz v26, :cond_4a5

    :cond_48e
    if-nez v0, :cond_495

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    move-object v0, v2

    :cond_495
    array-length v2, v0

    move v3, v13

    :goto_497
    if-ge v3, v2, :cond_4a5

    aget-object v4, v0, v3

    iget-object v5, v8, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v6, v8, Landroid/view/SurfaceView;->mFormat:I

    invoke-interface {v4, v5, v6, v14, v15}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_497

    :cond_4a5
    if-eqz v22, :cond_4c6

    if-nez v0, :cond_4ae

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    move-object v0, v2

    :cond_4ae
    iget v2, v8, Landroid/view/SurfaceView;->mPendingReportDraws:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v8, Landroid/view/SurfaceView;->mPendingReportDraws:I

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->drawPending()V

    new-instance v2, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v3, Landroid/view/-$$Lambda$SurfaceView$SyyzxOgxKwZMRgiiTGcRYbOU5JY;

    invoke-direct {v3, v8}, Landroid/view/-$$Lambda$SurfaceView$SyyzxOgxKwZMRgiiTGcRYbOU5JY;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {v2, v3}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    :try_end_4c6
    .catchall {:try_start_41a .. :try_end_4c6} :catchall_420

    :cond_4c6
    :try_start_4c6
    iput-boolean v13, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4d3

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_4d3

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->releaseSurfaces()V

    :cond_4d3
    goto :goto_4fb

    :goto_4d4
    iput-boolean v13, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_4e1

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v1, :cond_4e1

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->releaseSurfaces()V

    :cond_4e1
    nop

    throw v0

    :catchall_4e3
    move-exception v0

    goto :goto_4ea

    :catchall_4e5
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v28, v7

    :goto_4ea
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    throw v0
    :try_end_4f1
    .catch Ljava/lang/Exception; {:try_start_4c6 .. :try_end_4f1} :catch_4f1

    :catch_4f1
    move-exception v0

    goto :goto_4f6

    :catch_4f3
    move-exception v0

    move/from16 v28, v7

    :goto_4f6
    const-string v1, "Exception configuring surface"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4fb
    return-void

    :cond_4fc
    :goto_4fc
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->releaseSurfaces()V

    return-void
.end method
