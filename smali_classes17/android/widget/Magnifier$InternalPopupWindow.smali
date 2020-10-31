.class Landroid/widget/Magnifier$InternalPopupWindow;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalPopupWindow"
.end annotation


# static fields
.field private static final SURFACE_Z:I = 0x5


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapRenderNode:Landroid/graphics/RenderNode;

.field private mCallback:Landroid/widget/Magnifier$Callback;

.field private mContentHeight:I

.field private final mContentWidth:I

.field private mCurrentContent:Landroid/graphics/Bitmap;

.field private final mDisplay:Landroid/view/Display;

.field private mFirstDraw:Z

.field private mFrameDrawScheduled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsFishEyeStyle:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMagnifierUpdater:Ljava/lang/Runnable;

.field private mMeshHeight:I

.field private mMeshLeft:[F

.field private mMeshRight:[F

.field private mMeshWidth:I

.field private final mOffsetX:I

.field private final mOffsetY:I

.field private final mOverlay:Landroid/graphics/drawable/Drawable;

.field private final mOverlayRenderNode:Landroid/graphics/RenderNode;

.field private mPendingWindowPositionUpdate:Z

.field private final mRamp:I

.field private final mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mWindowPositionX:I

.field private mWindowPositionY:I

.field private mZoom:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceControl;IIFIFFLandroid/graphics/drawable/Drawable;Landroid/os/Handler;Ljava/lang/Object;Landroid/widget/Magnifier$Callback;Z)V
    .registers 31

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p14

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    move-object/from16 v7, p2

    iput-object v7, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    move-object/from16 v8, p10

    iput-object v8, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v9, p12

    iput-object v9, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    move-object/from16 v10, p13

    iput-object v10, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    iput v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iput v3, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    move/from16 v11, p6

    iput v11, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    move/from16 v12, p7

    iput v12, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    const v0, 0x3f866666    # 1.05f

    mul-float v13, v4, v0

    float-to-int v13, v13

    iput v13, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v2

    mul-int/lit8 v0, v0, 0x2

    add-int v14, v3, v0

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v15, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v15, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const/4 v0, -0x3

    invoke-virtual {v15, v0}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string/jumbo v15, "magnifier surface"

    invoke-virtual {v0, v15}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v15, 0x4

    invoke-virtual {v0, v15}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    move-object/from16 v15, p3

    invoke-virtual {v0, v15}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v7, "InternalPopupWindow"

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    iget-object v7, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    new-instance v0, Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v7, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    const-string/jumbo v8, "magnifier renderer"

    move-object/from16 v9, p1

    invoke-direct {v0, v9, v8, v7}, Landroid/view/ThreadedRenderer$SimpleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    const-string/jumbo v0, "magnifier content"

    invoke-direct {v1, v0, v4, v5}, Landroid/widget/Magnifier$InternalPopupWindow;->createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    const-string/jumbo v0, "magnifier overlay"

    invoke-direct {v1, v0, v5}, Landroid/widget/Magnifier$InternalPopupWindow;->createRenderNodeForOverlay(Ljava/lang/String;F)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier$InternalPopupWindow;->setupOverlay()V

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v7

    :try_start_b4
    invoke-virtual {v7}, Landroid/graphics/RecordingCanvas;->enableZ()V

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v7, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v7}, Landroid/graphics/RecordingCanvas;->disableZ()V

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v7, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v7}, Landroid/graphics/RecordingCanvas;->disableZ()V
    :try_end_c7
    .catchall {:try_start_b4 .. :try_end_c7} :catchall_fa

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    nop

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz v0, :cond_e4

    iget v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v8, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    :cond_e4
    move-object/from16 v2, p11

    iput-object v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$t9Cn2sIi2LBUhAVikvRPKKoAwIU;

    invoke-direct {v0, v1}, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$t9Cn2sIi2LBUhAVikvRPKKoAwIU;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;)V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    iput-boolean v6, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    if-eqz v6, :cond_f9

    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier$InternalPopupWindow;->createMeshMatrixForFishEyeEffect()V

    :cond_f9
    return-void

    :catchall_fa
    move-exception v0

    move-object/from16 v2, p11

    iget-object v8, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v8}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RenderNode;->endRecording()V

    throw v0
.end method

.method static synthetic access$1900(Landroid/widget/Magnifier$InternalPopupWindow;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContentFactors(IF)V

    return-void
.end method

.method static synthetic access$2400(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->drawOverlay()V

    return-void
.end method

.method static synthetic access$2500(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/widget/Magnifier$Callback;
    .registers 2

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/widget/Magnifier$Callback;)Landroid/widget/Magnifier$Callback;
    .registers 2

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    return-void
.end method

.method static synthetic access$2800(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private createMeshMatrixForFishEyeEffect()V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    const/4 v1, 0x6

    iput v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int v2, v0, v0

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x6

    add-int/2addr v3, v0

    mul-int/2addr v2, v3

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    add-int v2, v0, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v0

    mul-int/2addr v2, v1

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->fillMeshMatrix()V

    return-void
.end method

.method private createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/graphics/RenderNode;
    .registers 12

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setElevation(F)Z

    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    const v3, -0xff0100

    :try_start_3c
    invoke-virtual {v2, v3}, Landroid/graphics/RecordingCanvas;->drawColor(I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_44

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    nop

    return-object v0

    :catchall_44
    move-exception v3

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    throw v3
.end method

.method private createRenderNodeForOverlay(Ljava/lang/String;F)Landroid/graphics/RenderNode;
    .registers 11

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    return-object v0
.end method

.method private doDraw()V
    .registers 20

    move-object/from16 v7, p0

    iget-object v8, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_5
    iget-object v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_f

    monitor-exit v8

    return-void

    :cond_f
    iget-object v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    iget v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v2, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_106

    move-object v5, v0

    :try_start_1a
    iget-object v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-boolean v3, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_fd

    const/4 v4, 0x0

    if-eqz v3, :cond_9c

    :try_start_34
    iget v3, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    int-to-float v3, v3

    iget v6, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v6, v9

    int-to-float v6, v6

    iget v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    div-float/2addr v6, v9

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    float-to-int v3, v3

    new-instance v6, Landroid/graphics/Rect;

    sub-int v9, v0, v3

    invoke-direct {v6, v3, v4, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget v10, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    iget v11, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v12, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    sub-int/2addr v11, v12

    iget v12, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-direct {v9, v10, v4, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v15, v9

    iget-object v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v9, v6, v15, v2}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v9, v4, v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    iget v11, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    iget v12, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget-object v13, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v5

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/RecordingCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    iget-object v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    sub-int v10, v0, v3

    invoke-static {v9, v10, v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    iget v11, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    iget v12, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget-object v13, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v5

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/RecordingCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    :try_end_97
    .catchall {:try_start_34 .. :try_end_97} :catchall_98

    goto :goto_af

    :catchall_98
    move-exception v0

    move-object v12, v5

    goto/16 :goto_ff

    :cond_9c
    :try_start_9c
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v10, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-direct {v6, v4, v4, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v9, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v9, v3, v6, v2}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_af
    .catchall {:try_start_9c .. :try_end_af} :catchall_fd

    :goto_af
    :try_start_af
    iget-object v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    nop

    iget-boolean v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    if-nez v0, :cond_c2

    iget-boolean v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    if-eqz v0, :cond_be

    goto :goto_c2

    :cond_be
    const/4 v0, 0x0

    move v11, v4

    move-object v12, v5

    goto :goto_e8

    :cond_c2
    :goto_c2
    iget-boolean v6, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    iput-boolean v4, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    iget-boolean v3, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    iput-boolean v4, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    iget v0, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    iget v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    move v9, v1

    new-instance v10, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;

    move-object v1, v10

    move-object/from16 v2, p0

    move v11, v4

    move v4, v0

    move-object v12, v5

    move v5, v9

    invoke-direct/range {v1 .. v6}, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$qfjMrDJVvOQUv9_kKVdpLzbaJ-A;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZ)V

    move-object v1, v10

    iget-boolean v2, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    if-nez v2, :cond_e7

    iget-object v2, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v4, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v4, v0, v9}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightCenter(Landroid/view/Display;II)V

    :cond_e7
    move-object v0, v1

    :goto_e8
    iput-boolean v11, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    monitor-exit v8
    :try_end_eb
    .catchall {:try_start_af .. :try_end_eb} :catchall_106

    iget-object v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v1, v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->draw(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    iget-object v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz v1, :cond_fc

    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    iget-object v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    invoke-interface {v1}, Landroid/widget/Magnifier$Callback;->onOperationComplete()V

    :cond_fc
    return-void

    :catchall_fd
    move-exception v0

    move-object v12, v5

    :goto_ff
    :try_start_ff
    iget-object v1, v7, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    nop

    throw v0

    :catchall_106
    move-exception v0

    monitor-exit v8
    :try_end_108
    .catchall {:try_start_ff .. :try_end_108} :catchall_106

    throw v0
.end method

.method private drawOverlay()V
    .registers 6

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    :try_start_a
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_20

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    nop

    return-void

    :catchall_20
    move-exception v1

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    throw v1
.end method

.method private fillMeshMatrix()V
    .registers 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget v1, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    int-to-float v2, v2

    iget v3, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    div-float v3, v2, v3

    sub-float v4, v2, v3

    const/4 v5, 0x0

    :goto_15
    iget v6, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v7, v7, 0x2

    iget v8, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int/lit8 v9, v8, 0x1

    mul-int/2addr v7, v9

    if-ge v5, v7, :cond_71

    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v7, v7, 0x2

    rem-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    iget-object v9, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    int-to-float v10, v7

    iget v11, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    int-to-float v12, v11

    mul-float/2addr v10, v12

    int-to-float v12, v6

    div-float/2addr v10, v12

    aput v10, v9, v5

    iget-object v10, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    int-to-float v12, v11

    sub-float v12, v1, v12

    mul-int/2addr v11, v7

    div-int/2addr v11, v6

    int-to-float v11, v11

    add-float/2addr v12, v11

    aput v12, v10, v5

    div-int/lit8 v11, v5, 0x2

    add-int/lit8 v12, v6, 0x1

    div-int/2addr v11, v12

    int-to-float v12, v7

    mul-float/2addr v12, v4

    int-to-float v13, v6

    div-float/2addr v12, v13

    add-float/2addr v12, v3

    sub-float v13, v2, v12

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-int/lit8 v15, v5, 0x1

    int-to-float v14, v11

    mul-float/2addr v14, v12

    int-to-float v0, v8

    div-float/2addr v14, v0

    add-float/2addr v14, v13

    aput v14, v9, v15

    int-to-float v0, v7

    mul-float/2addr v0, v4

    int-to-float v6, v6

    div-float/2addr v0, v6

    sub-float v0, v2, v0

    sub-float v6, v2, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    add-int/lit8 v9, v5, 0x1

    int-to-float v14, v11

    mul-float/2addr v14, v0

    int-to-float v8, v8

    div-float/2addr v14, v8

    add-float/2addr v14, v6

    aput v14, v10, v9

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    goto :goto_15

    :cond_71
    return-void
.end method

.method public static synthetic lambda$t9Cn2sIi2LBUhAVikvRPKKoAwIU(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->doDraw()V

    return-void
.end method

.method private requestUpdate()V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    return-void
.end method

.method private setupOverlay()V
    .registers 3

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->drawOverlay()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/widget/Magnifier$InternalPopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/Magnifier$InternalPopupWindow$1;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private updateContentFactors(IF)V
    .registers 10

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    if-ne v0, p1, :cond_b

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    if-ge v0, p1, :cond_9b

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setSurface(Landroid/view/Surface;)V

    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    const/4 v6, 0x0

    move-object v1, v0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v4, v2

    add-int v5, v3, p1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v0}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v4, v2

    add-int v5, v3, p1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v0}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v1

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v1

    :try_start_73
    invoke-virtual {v1}, Landroid/graphics/RecordingCanvas;->enableZ()V

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v1}, Landroid/graphics/RecordingCanvas;->disableZ()V

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v1}, Landroid/graphics/RecordingCanvas;->disableZ()V
    :try_end_86
    .catchall {:try_start_73 .. :try_end_86} :catchall_90

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    goto :goto_9b

    :catchall_90
    move-exception v2

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v3}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    throw v2

    :cond_9b
    :goto_9b
    iput p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    iput p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->fillMeshMatrix()V

    return-void
.end method

.method private updateCurrentContentForTesting()V
    .registers 7

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_32

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v4, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_32
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->destroy()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2b
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public synthetic lambda$doDraw$0$Magnifier$InternalPopupWindow(ZIIZJ)V
    .registers 11

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v1, p5, p6}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1b
    if-eqz p4, :cond_2b

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2b
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public setContentPositionForNextDraw(II)V
    .registers 4

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    return-void
.end method

.method public updateContent(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    return-void
.end method
