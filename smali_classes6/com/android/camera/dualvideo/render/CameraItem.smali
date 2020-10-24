.class public Lcom/android/camera/dualvideo/render/CameraItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/dualvideo/render/CameraItemInterface;


# static fields
.field private static final HANDLER_OFFSET:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CameraItem"


# instance fields
.field private mAlpha:F

.field private final mDrawAttriList:Landroid/util/SparseArray;

.field private final mFaceFront:Z

.field private mIsAnimating:Z

.field private mIsPressedInSelectWindow:Z

.field private mIsVisible:Z

.field private mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field private final mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

.field private mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field private mSelectWindowFlagAlpha:F

.field private mSelectWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

.field private mSelectWindowFlagDstAlpha:F

.field private final mSelectWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field private mSelectedFrameAlpha:F

.field private mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

.field private mSelectedFrameDstAlpha:F

.field private mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

.field private mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;ZLcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mDrawAttriList:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInSelectWindow:Z

    iput-object p4, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-boolean p3, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mFaceFront:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    sget-object p1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/dualvideo/render/CameraItem;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInSelectWindow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->genPreviewAttri(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object p0

    return-object p0
.end method

.method private animShrink()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animShrink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItem"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    const/high16 v1, 0x43480000    # 200.0f

    const/4 v2, 0x6

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "animShrink"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    new-array v0, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v6, [Lmiuix/animation/base/AnimConfig;

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v8, v6, [F

    aput v1, v8, v5

    invoke-virtual {v7, v2, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v2, v6, [Lmiuix/animation/listener/TransitionListener;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    new-instance v0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    new-array v0, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v6, [Lmiuix/animation/base/AnimConfig;

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v8, v6, [F

    aput v1, v8, v5

    invoke-virtual {v7, v2, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v2, v6, [Lmiuix/animation/listener/TransitionListener;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private drawBlurCover(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 8

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->isFacingFront()Z

    move-result v1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    move-object v2, p0

    iget-object p0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, [F

    invoke-static {v7}, Lcom/android/camera/dualvideo/render/RenderUtil;->flipCenter([F)V

    new-instance p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v4, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget v5, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    iget v6, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII[F)V

    invoke-interface {p1, p0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawDarkCorner(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/LayoutType;->isSelectWindowType()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v4

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v5, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v6, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v3

    sub-int v8, v2, v3

    iget v9, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v10

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawExpand(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 8

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v3

    new-instance p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    add-int/lit8 v4, v1, 0xa

    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    add-int/lit8 v5, v0, 0xa

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, p0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawExpandAndShrinkHandler(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawSelectWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/render/CameraItem$2;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->drawExpand(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->drawShrink(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_0
    return-void
.end method

.method private drawGridLine(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_referenceline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->isPressedInSelectWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItem$2;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/16 v1, 0xc

    if-eq p0, v1, :cond_4

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_3
    const p0, 0x3eaaaaab

    invoke-static {p1, v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawHorizontalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    invoke-static {p1, v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawVerticalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    const p0, 0x3f2aaaab

    :goto_0
    invoke-static {p1, v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawHorizontalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    invoke-static {p1, v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawVerticalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    :cond_4
    return-void
.end method

.method private drawLabel(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7

    sget-object v0, Lcom/android/camera/dualvideo/render/CameraItem$2;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/4 v1, 0x5

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v0

    move-object v2, v0

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectWindowFlagAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexTransMatrix()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix([F)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexOrientation()I

    move-result v0

    const/16 v1, 0x65

    if-eqz v0, :cond_1

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_1

    const/16 v3, 0x10e

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    const v4, 0x40e8a3d7    # 7.27f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v5

    iget v5, v5, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    iget p0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    add-int/2addr v5, p0

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p0

    sub-int/2addr v5, p0

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p0

    sub-int v4, v5, p0

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    const v4, 0x412e8f5c    # 10.91f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    iget p0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    add-int/2addr v4, p0

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p0

    sub-int/2addr v4, p0

    const p0, 0x408b851f    # 4.36f

    invoke-static {p0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p0

    sub-int/2addr v4, p0

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    :goto_1
    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :goto_2
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawPreview(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectFrameAlpha()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectFrameAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v2

    new-instance v9, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    iget v4, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v5, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    sget v6, Lcom/android/camera/dualvideo/render/RenderUtil;->SELECT_FRAME_LINE_WIDTH:I

    iget v7, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    const/16 v8, -0x31ea

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(IIIII)V

    invoke-interface {v1, v9}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    iget v4, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v5, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    add-int/2addr v4, v5

    sget v13, Lcom/android/camera/dualvideo/render/RenderUtil;->SELECT_FRAME_LINE_WIDTH:I

    sub-int v11, v4, v13

    iget v12, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget v14, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    const/16 v15, -0x31ea

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(IIIII)V

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v4, v0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v6

    iget v7, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v8, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget v9, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    iget-object v4, v0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v10

    move-object v4, v3

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v4, v0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v12

    iget v13, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v4, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget v6, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    add-int/2addr v4, v6

    iget-object v6, v0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {v6, v5}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v6

    sub-int v14, v4, v6

    iget v15, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    iget-object v4, v0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v16

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    iget-object v3, v0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v6

    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v4, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v5, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    add-int/2addr v4, v5

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v5

    sub-int v7, v4, v5

    iget v4, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget v5, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v5

    sub-int v8, v4, v5

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v10

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    sget-object v3, Lcom/android/camera/dualvideo/render/CameraItem$2;->$SwitchMap$com$android$camera$dualvideo$util$SelectIndex:[I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/16 v4, 0x8

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/4 v4, 0x7

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v3

    move-object v5, v3

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    iget-object v0, v0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->gemAnimTexTransMatrix()[F

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix([F)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v3, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v4, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    add-int/2addr v3, v4

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v4

    sub-int v6, v3, v4

    iget v3, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget v2, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    add-int/2addr v3, v2

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v2

    sub-int v7, v3, v2

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    return-void
.end method

.method private drawShrink(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 8

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v3

    new-instance p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    add-int/lit8 v4, v1, 0xa

    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    add-int/lit8 v5, v0, 0xa

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, p0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private genPreviewAttri(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 9

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object p1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->isFacingFront()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrix(ZLcom/android/camera/dualvideo/render/LayoutType;)[F

    move-result-object v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    return-object v8
.end method

.method private restoreAnimShrink()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreAnimShrink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItem"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animShrink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v6, v0, [F

    const/high16 v7, 0x43480000    # 200.0f

    aput v7, v6, v3

    const/4 v7, 0x6

    invoke-virtual {v5, v7, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    aput-object p0, v0, v3

    invoke-virtual {v5, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-interface {v1, v2, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method public alphaInSelectWindowFlag(Z)V
    .locals 2

    new-instance v0, Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_0

    const/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/camera/dualvideo/render/EaseOutAnim;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowFlagDstAlpha:F

    return-void
.end method

.method public alphaInSelectedFrame(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/camera/dualvideo/render/EaseOutAnim;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameDstAlpha:F

    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->drawExpandAndShrinkHandler(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->drawDarkCorner(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->drawLabel(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->drawGridLine(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->drawBlurCover(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    return p0
.end method

.method public getHandleArea()Landroid/graphics/Rect;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/dualvideo/render/CameraItem$2;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mMiscTexManager:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    add-int/lit8 v3, v2, 0xa

    iget v4, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0xa

    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v3, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mDrawAttriList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    return-object p0
.end method

.method public getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public getSelectFrameAlpha()F
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameDstAlpha:F

    iput v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->getRatio()F

    move-result v0

    iget v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    iget p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameDstAlpha:F

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1
.end method

.method public getSelectWindowFlagAlpha()F
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowFlagAlpha:F

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowFlagDstAlpha:F

    iput v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowFlagAlpha:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->getRatio()F

    move-result v0

    iget v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowFlagAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    iget p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowFlagDstAlpha:F

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1
.end method

.method public getSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-object p0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->isPressedInSelectWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFacingFront()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mFaceFront:Z

    return p0
.end method

.method public isPressedInSelectWindow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInSelectWindow:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    return p0
.end method

.method public onKeyDown()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInSelectWindow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInSelectWindow:Z

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->animShrink()V

    const-string p0, "CameraItem"

    const-string v0, "onKeyDown: "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyUp()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInSelectWindow:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->restoreAnimShrink()V

    :cond_0
    const-string p0, "CameraItem"

    const-string v0, "onKeyUp: "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPreviewAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mDrawAttriList:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setComposeTypeWithAnimation: from: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraItem"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, -0x2

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {p1, v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/RegionHelper;)V

    const/4 p2, 0x1

    new-array v1, p2, [Lmiuix/animation/listener/TransitionListener;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    const/16 v1, 0x3e8

    if-eqz p3, :cond_1

    iput-boolean p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, p2, v2

    invoke-interface {p0, p3, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->animatePreview(I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectedTypeWithAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItem"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_1

    if-eq p1, v1, :cond_1

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->alphaInSelectedFrame(Z)V

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    :goto_2
    return-void
.end method

.method public setVisibilityWithAnim(ZZ)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    :goto_0
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p2, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, 0x6

    new-array v6, p2, [F

    int-to-float v0, v0

    aput v0, v6, v2

    invoke-virtual {v4, v5, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array p2, p2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lcom/android/camera/dualvideo/render/CameraItem$1;

    invoke-direct {v4, p0}, Lcom/android/camera/dualvideo/render/CameraItem$1;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    aput-object v4, p2, v2

    invoke-virtual {v0, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-interface {p1, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_4

    :cond_4
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    :goto_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderItem{mLastPreviewComposeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRenderComposeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m6patchComposeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mFaceFront:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAnimating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->genPreviewAttri(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object p1

    const/16 v0, 0x65

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->setPreviewAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;I)V

    return-void
.end method
