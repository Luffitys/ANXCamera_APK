.class public Lcom/android/camera/dualvideo/render/RenderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;


# static fields
.field private static final TAG:Ljava/lang/String; = "RenderManager"


# instance fields
.field private mBlurRect:Landroid/graphics/Rect;

.field private mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

.field private mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mIsComposeSwitching:Z

.field mJpegCallback:Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;

.field private mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

.field private mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private final mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

.field private mNeedRecording:Z

.field private mNeedUpdateBlurTex:Z

.field private final mRecordRenderHandler:Landroid/util/SparseArray;

.field private mRenderHandler:Landroid/os/Handler;

.field private mRenderHandlerThread:Landroid/os/HandlerThread;

.field private final mRenderLock:Ljava/lang/Object;

.field private mResources:Landroid/content/res/Resources;

.field private mSkipFrame:I

.field private final mSnapAnimDualVideoTimer:Lcom/android/camera/dualvideo/render/DualVideoTimer;

.field private mSnapOrientation:I

.field private final mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSnapReader:Ljava/util/ArrayList;

.field private mSnapRenderHandler:Ljava/util/ArrayList;

.field public mStatCaptureTimes:I

.field private mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field private mSubFrameReady:Z

.field private mSubPreviewSize:Landroid/util/Size;

.field private mSubSurface:Landroid/view/Surface;

.field private mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mUpdateBlurConditionVar:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/render/DualVideoTimer;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/DualVideoTimer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapAnimDualVideoTimer:Lcom/android/camera/dualvideo/render/DualVideoTimer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubFrameReady:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSkipFrame:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedUpdateBlurTex:Z

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mUpdateBlurConditionVar:Landroid/os/ConditionVariable;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-direct {v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapOrientation:I

    iput v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    return-void
.end method

.method static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooO0O0(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic OooO0OO(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->setBackgroundColor(I)V

    return-void
.end method

.method private synthetic OooO0Oo(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubFrameReady:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSkipFrame:I

    const/4 v0, 0x1

    if-lez p1, :cond_0

    sget-object p1, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "sub frame skipped: "

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSkipFrame:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSkipFrame:I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "subFrameReady"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubFrameReady:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->enableContinuousRender(Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;->onSubImageAvailable()V

    return-void
.end method

.method static synthetic OooO0o(Ljava/util/List;Lcom/android/camera/module/encoder/RenderHandler;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Ljava/util/List;)V

    return-void
.end method

.method static synthetic OooO0oO(FFLcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 5

    const/16 v0, 0x65

    invoke-interface {p2, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    iget v1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    int-to-float v2, v1

    cmpl-float v2, p0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v4

    :goto_0
    iget v1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq p0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    return v3
.end method

.method private synthetic OooO0oo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x65

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/util/CameraTag;->SUB:Lcom/android/camera/dualvideo/util/CameraTag;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/util/CameraTag;->MAIN:Lcom/android/camera/dualvideo/util/CameraTag;

    goto :goto_0
.end method

.method static synthetic OooOO0(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooOO0O(FFLcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 5

    const/16 v0, 0x65

    invoke-interface {p2, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    iget v1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    int-to-float v2, v1

    cmpl-float v2, p0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v4

    :goto_0
    iget v1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq p0, p1, :cond_2

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    return v3
.end method

.method static synthetic OooOO0o(IILcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 0

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getHandleArea()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic OooOOO0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager$2;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->expandBottom()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->expandOrShrinkTop()V

    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic OooOOOO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooOOOo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic OooOOo0(Landroid/media/ImageReader;)V
    .locals 0

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->saveJpeg(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic OooOOoo(Ljava/lang/StringBuilder;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    const/16 v0, 0x65

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const-string v0, " id: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic OooOo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isFacingFront()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooOo0(Lcom/android/camera/dualvideo/render/CameraItemManager;)V
    .locals 1

    invoke-static {}, Lcom/android/camera/dualvideo/util/CameraIDManager;->getInstance()Lcom/android/camera/dualvideo/util/CameraIDManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/CameraIDManager;->get6PatchToIdMap()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->changeTexture(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method static synthetic OooOo00(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setSelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic OooOo0O(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isFacingFront()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooOo0o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 1

    const/16 v0, 0x65

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    return-object p0
.end method

.method static synthetic OooOoO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isFacingFront()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooOoO0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 1

    const/16 v0, 0x65

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    return-object p0
.end method

.method static synthetic OooOoOO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 1

    const/16 v0, 0x65

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    return-object p0
.end method

.method private synthetic OooOoo0(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->getRecordTypeBySelectType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method

.method private changeBottomIconBackground()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/OoooO;->OooO00o:Lcom/android/camera/dualvideo/render/OoooO;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->getActionProcess()Ljava/util/Optional;

    move-result-object p0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/dualvideo/render/OooooOO;->OooO00o:Lcom/android/camera/dualvideo/render/OooooOO;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/camera/dualvideo/render/OoooOo0;->OooO00o:Lcom/android/camera/dualvideo/render/OoooOo0;

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private drawBlur(Lcom/android/gallery3d/ui/GLCanvasImpl;Lcom/android/camera/CameraScreenNail;Landroid/graphics/Rect;[F)V
    .locals 7

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v0, p2

    move-object v1, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraScreenNail;->drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIII[F)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;->onRenderRequestNeeded()V

    return-void
.end method

.method private drawBottomMask(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->hasMiniPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    new-instance v6, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v4

    const/high16 v5, -0x1000000

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(IIIII)V

    invoke-interface {p1, v6}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_0
    return-void
.end method

.method private drawDualVideo(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubFrameReady:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mIsComposeSwitching:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->init(Lcom/android/gallery3d/ui/GLCanvas;Landroid/content/res/Resources;)V

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->initSubSurfaceTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    new-instance v0, Lcom/android/camera/dualvideo/render/CameraItemManager;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/dualvideo/render/CameraItemManager;-><init>(Lcom/android/camera/dualvideo/render/MiscTextureManager;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/gallery3d/ui/ExtTexture;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->drawForRecording()V

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->drawForPreview(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->drawBottomMask(Lcom/android/gallery3d/ui/GLCanvas;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->updateBlurTex(Lcom/android/gallery3d/ui/GLCanvas;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->waitVideoDrawFinish()V

    const/4 p0, 0x1

    return p0
.end method

.method private drawForPreview(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/OoooO00;->OooO00o:Lcom/android/camera/dualvideo/render/OoooO00;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/o0ooOOo;->OooO00o:Lcom/android/camera/dualvideo/render/o0ooOOo;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapAnimDualVideoTimer:Lcom/android/camera/dualvideo/render/DualVideoTimer;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/DualVideoTimer;->isValid()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    invoke-direct {p0, v2}, Lcom/android/camera/dualvideo/render/RenderManager;->shouldDrawBlur(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x66

    goto :goto_1

    :cond_1
    const/16 v4, 0x65

    :goto_1
    invoke-interface {v2, p1, v4}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;I)V

    const/16 v4, 0x67

    invoke-interface {v2, p1, v4}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/render/LayoutType;->isSelectWindowType()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x68

    invoke-interface {v2, p1, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;I)V

    const/16 v3, 0x69

    invoke-interface {v2, p1, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;I)V

    const/16 v3, 0x6a

    invoke-interface {v2, p1, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getAlpha()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    invoke-direct {p0, v1}, Lcom/android/camera/dualvideo/render/RenderManager;->shouldDrawBlur(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x6b

    invoke-interface {v1, p1, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->draw(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :cond_3
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private drawForRecording()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableListForRecord()Ljava/util/List;

    move-result-object v0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/dualvideo/render/OoooOOO;

    invoke-direct {v3, v0}, Lcom/android/camera/dualvideo/render/OoooOOO;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/encoder/RenderHandler;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-static {v1}, Lcom/android/camera/dualvideo/util/CameraTag;->getTagByIndex(I)Lcom/android/camera/dualvideo/util/CameraTag;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getFullTypeRecordAttri(Lcom/android/camera/dualvideo/util/CameraTag;)Lcom/android/camera/effect/draw_mode/DrawAttribute;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v3, v1}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-virtual {v3}, Lcom/android/camera/module/encoder/RenderHandler;->waitDrawFinish()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    return-void
.end method

.method private findSubPreviewSize()Landroid/util/Size;
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/util/CameraTag;->SUB:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/camera/dualvideo/render/RenderUtil;->FRONT_PREVIEW:Landroid/util/Size;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/camera/dualvideo/render/RenderUtil;->BACK_PREVIEW:Landroid/util/Size;

    return-object p0
.end method

.method private getActionProcess()Ljava/util/Optional;
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private getRecordTypeBySelectType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/render/ooOO;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/render/ooOO;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/OooO0Oo;->OooO00o:Lcom/android/camera/dualvideo/render/OooO0Oo;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method private handleExpandOrShrink(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/camera/dualvideo/render/Oooooo0;

    invoke-direct {v2, v0, p1}, Lcom/android/camera/dualvideo/render/Oooooo0;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/camera/dualvideo/render/o00Ooo;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/render/o00Ooo;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private initSubSurfaceTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "initSubSurfaceTexture: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->createSubCameraSurfaceIfNeed()Landroid/view/Surface;

    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ExtTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method

.method private prepareForCapture(Landroid/opengl/EGLContext;)V
    .locals 5

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/render/Ooooo0o;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/render/Ooooo0o;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sget-object v4, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/camera/module/encoder/RenderHandler;->createHandler(Ljava/lang/String;II)Lcom/android/camera/module/encoder/RenderHandler;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/camera/module/encoder/RenderHandler;->setEglContext(Landroid/opengl/EGLContext;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private printTexId(Ljava/util/List;)V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " tex id:  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/camera/dualvideo/render/OoooO0;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/render/OoooO0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    sget-object p1, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printTexId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseRecordingRelated()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v1}, Lcom/android/camera/module/encoder/RenderHandler;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/dualvideo/render/o00oO0O;->OooO00o:Lcom/android/camera/dualvideo/render/o00oO0O;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/dualvideo/render/oo000o;->OooO00o:Lcom/android/camera/dualvideo/render/oo000o;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method private releaseRenderHandlerThread()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private releaseSurfaceTexture()V
    .locals 3

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseSurfaceTexture: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/android/gallery3d/ui/GLCanvas;->deleteSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :goto_0
    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurface:Landroid/view/Surface;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->releaseRenderHandlerThread()V

    return-void
.end method

.method private saveJpeg(Landroid/media/Image;)V
    .locals 7

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "saveJpeg: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    mul-int v6, v5, v0

    sub-int/2addr v2, v6

    div-int v5, v2, v5

    add-int/2addr v5, v0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v3, v3, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v0

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapOrientation:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v1, p1, v0, v2}, Lcom/android/camera/Util;->appendExifToBitmap(Landroid/graphics/Bitmap;Ljava/io/OutputStream;ILandroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mJpegCallback:Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;->onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldDrawBlur(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mIsComposeSwitching:Z

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/LayoutType;->isSelectWindowType()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/LayoutType;->isSelectWindowType()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startHandlerThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dual video handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/camera/dualvideo/render/RenderManager$1;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/dualvideo/render/RenderManager$1;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandler:Landroid/os/Handler;

    return-void
.end method

.method private switchSelectIndex()V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/OoooOoO;->OooO00o:Lcom/android/camera/dualvideo/render/OoooOoO;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateBlurTex(Lcom/android/gallery3d/ui/GLCanvas;Ljava/util/List;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedUpdateBlurTex:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getVisibleRenderList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/OooO00o;->OooO00o:Lcom/android/camera/dualvideo/render/OooO00o;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBlurTex: contain front: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/camera/dualvideo/render/o00Oo0;->OooO00o:Lcom/android/camera/dualvideo/render/o00Oo0;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/android/camera/dualvideo/render/OoooOOo;->OooO00o:Lcom/android/camera/dualvideo/render/OoooOOo;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-static {p1, v0, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v4, Lcom/android/camera/dualvideo/render/o0OoOo0;->OooO00o:Lcom/android/camera/dualvideo/render/o0OoOo0;

    invoke-interface {p2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    sget-object v4, Lcom/android/camera/dualvideo/render/o00O0O;->OooO00o:Lcom/android/camera/dualvideo/render/o00O0O;

    invoke-virtual {p2, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-static {p1, v0, p2}, Lcom/android/camera/dualvideo/render/RenderUtil;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {p2, v2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/ui/RawTexture;

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/RenderUtil;->blurTex(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {p2, v3}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v3, Lcom/android/camera/dualvideo/render/OoooOoo;->OooO00o:Lcom/android/camera/dualvideo/render/OoooOoo;

    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    sget-object v3, Lcom/android/camera/dualvideo/render/OoooO0O;->OooO00o:Lcom/android/camera/dualvideo/render/OoooO0O;

    invoke-virtual {p2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-static {p1, v0, p2}, Lcom/android/camera/dualvideo/render/RenderUtil;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {p2, v2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p2

    :goto_0
    check-cast p2, Lcom/android/gallery3d/ui/RawTexture;

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/RenderUtil;->blurTex(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedUpdateBlurTex:Z

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mUpdateBlurConditionVar:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private updateSelectDataWhenRenderLayoutChanged()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/render/Ooooooo;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/render/Ooooooo;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private waitVideoDrawFinish()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v1}, Lcom/android/camera/module/encoder/RenderHandler;->waitDrawFinish()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO0oo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO0o0(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO0Oo(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public synthetic OooOOO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooOOO0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooOOo(Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooOOo0(Landroid/media/ImageReader;)V

    return-void
.end method

.method public synthetic OooOoo(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooOoo0(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    return-void
.end method

.method public captureVideoSnapshot(Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;ILandroid/hardware/camera2/CaptureResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mJpegCallback:Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;

    iput-object p3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapAnimDualVideoTimer:Lcom/android/camera/dualvideo/render/DualVideoTimer;

    const-wide/16 v2, 0x3c

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/dualvideo/render/DualVideoTimer;->init(J)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapOrientation:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapOrientation:I

    :goto_0
    iget p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    return-void
.end method

.method public createSubCameraSurfaceIfNeed()Landroid/view/Surface;
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->startHandlerThread()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "createSubCameraSurfaceIfNeed: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->findSubPreviewSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubPreviewSize:Landroid/util/Size;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/android/camera/dualvideo/render/OooooO0;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/render/OooooO0;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;)V

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubPreviewSize:Landroid/util/Size;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->findSubPreviewSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->findSubPreviewSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubPreviewSize:Landroid/util/Size;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubFrameReady:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->handleExpandOrShrink(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;->onLayoutTypeChanged()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->changeBottomIconBackground()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->updateSelectDataWhenRenderLayoutChanged()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->hasMiniPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->updateMiniWindowLocation(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->is6PatchWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->selectItem(Landroid/view/MotionEvent;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public enableContinuousRender(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableContinuousRender: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mIsComposeSwitching:Z

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->switchTexture()V

    return-void
.end method

.method public getCameraItemManager()Lcom/android/camera/dualvideo/render/CameraItemManager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    return-object p0
.end method

.method public getIdByPosition(FF)I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getVisibleRenderList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/camera/dualvideo/render/OooooOo;

    invoke-direct {v2, p1, p2}, Lcom/android/camera/dualvideo/render/OooooOo;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/camera/dualvideo/render/Ooooo00;

    invoke-direct {p2, p0}, Lcom/android/camera/dualvideo/render/Ooooo00;-><init>(Lcom/android/camera/dualvideo/render/RenderManager;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getProcessorType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getRenderComposeTypeByPosition(FF)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/render/OoooooO;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/dualvideo/render/OoooooO;-><init>(FF)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/OooO0Oo;->OooO00o:Lcom/android/camera/dualvideo/render/OooO0Oo;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public hasMiniComposeType()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/Oooooo;->OooO00o:Lcom/android/camera/dualvideo/render/Oooooo;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isProcessorReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    return p0
.end method

.method public isSwitching()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mIsComposeSwitching:Z

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isZoomEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/OoooOO0;->OooO00o:Lcom/android/camera/dualvideo/render/OoooOO0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public onDrawFrame(Lcom/android/gallery3d/ui/GLCanvasImpl;Lcom/android/camera/CameraScreenNail;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->clearBuffer()V

    const/16 v0, 0x10

    new-array v3, v0, [F

    invoke-virtual {p2}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string p1, "onDrawFrame: display rect is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mBlurRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mBlurRect:Landroid/graphics/Rect;

    :cond_1
    new-instance v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p2}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-virtual {p0, p1, v8}, Lcom/android/camera/dualvideo/render/RenderManager;->onDrawFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mBlurRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/dualvideo/render/RenderManager;->drawBlur(Lcom/android/gallery3d/ui/GLCanvasImpl;Lcom/android/camera/CameraScreenNail;Landroid/graphics/Rect;[F)V

    :cond_2
    return-void
.end method

.method public onDrawFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z
    .locals 0

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->drawDualVideo(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mIsComposeSwitching:Z

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;->onRenderRequestNeeded()V

    :cond_0
    return p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "release: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubFrameReady:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSkipFrame:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mJpegCallback:Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->releaseRecordingRelated()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->releaseSurfaceTexture()V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->release()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetFrameReady()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSubFrameReady:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSkipFrame:I

    return-void
.end method

.method public setListener(Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mListener:Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->setTexTransDegree(I)V

    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public startRecording(Landroid/opengl/EGLContext;Landroid/util/SparseArray;)V
    .locals 9

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "startRecording: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapReader:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mSnapRenderHandler:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/dualvideo/util/Assert;->check(Z)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    sget-object v6, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    sget-object v7, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    sget-object v8, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/camera/module/encoder/RenderHandler;->createHandler(Ljava/lang/String;II)Lcom/android/camera/module/encoder/RenderHandler;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v2}, Lcom/android/camera/module/encoder/RenderHandler;->setEglContext(Landroid/opengl/EGLContext;Ljava/lang/Object;Z)V

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRecordRenderHandler:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->prepareForCapture(Landroid/opengl/EGLContext;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopRecording()V
    .locals 3

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "stopRecording: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedRecording:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mJpegCallback:Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->releaseRecordingRelated()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public switch6patch2preview()V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "switch6patch2preview: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mIsComposeSwitching:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->triggerUpdateBlurTex()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->switch6patch2preview()V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->printRenderList()V

    :cond_0
    return-void
.end method

.method public switchPreviewTo6Patch()V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "switchPreviewTo6Patch: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mIsComposeSwitching:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->triggerUpdateBlurTex()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->switchPreviewTo6Patch()V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->printRenderList()V

    :cond_0
    return-void
.end method

.method public switchTexture()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/o000oOoO;->OooO00o:Lcom/android/camera/dualvideo/render/o000oOoO;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public switchTopBottom()Z
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "switchTopBottom: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mCameraItemManager:Lcom/android/camera/dualvideo/render/CameraItemManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->switchTopBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->switchSelectIndex()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->updateSelectDataWhenRenderLayoutChanged()V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public triggerUpdateBlurTex()V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderManager;->TAG:Ljava/lang/String;

    const-string v1, "triggerUpdateBlurTex: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedUpdateBlurTex:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mUpdateBlurConditionVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mNeedUpdateBlurTex:Z

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mUpdateBlurConditionVar:Landroid/os/ConditionVariable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    return-void
.end method
