.class public Lcom/android/camera/zoommap/RegionHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MARGIN:I

.field private static final TAG:Ljava/lang/String; = "RegionHelper"

.field public static final TARGET_X:Ljava/lang/String; = "TARGET_X"

.field public static final TARGET_Y:Ljava/lang/String; = "TARGET_Y"


# instance fields
.field private mConfigX:Lmiuix/animation/base/AnimConfig;

.field private mConfigY:Lmiuix/animation/base/AnimConfig;

.field private mIsCinematicAspectRatio:Z

.field private mIsHovering:Z

.field private mMapView:Landroid/view/View;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mSpeedX:F

.field private mSpeedY:F

.field private mTranslationX:I

.field private mTranslationXMax:I

.field private mTranslationXMid:I

.field private mTranslationXMin:I

.field private mTranslationY:I

.field private mTranslationYMax:I

.field private mTranslationYMid:I

.field private mTranslationYMin:I

.field private mWindowSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x4168cccd    # 14.55f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/util/Size;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsHovering:Z

    iput-object p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    iput-boolean p3, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsCinematicAspectRatio:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p3

    const/4 v1, 0x4

    if-eqz p3, :cond_0

    move p1, v1

    :cond_0
    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    sget p3, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p1, p3

    neg-int p1, p1

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    iget-boolean p3, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsCinematicAspectRatio:Z

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    :cond_2
    iput v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMax:I

    iget p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMid:I

    iput v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMin:I

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sget p3, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    sget p2, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMax:I

    iget p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMin:I

    add-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMid:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mTranslationYMin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMin:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mTranslationYMax "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMax:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegionHelper"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/zoommap/RegionHelper;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mSpeedX:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/zoommap/RegionHelper;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mSpeedY:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/zoommap/RegionHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/camera/zoommap/RegionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/zoommap/RegionHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/zoommap/RegionHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/camera/zoommap/RegionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    return p1
.end method


# virtual methods
.method public getPipWindowDefaultLocation()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget v1, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsCinematicAspectRatio:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    add-int/2addr v1, v2

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-direct {v2, v0, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public initAnimConfig()V
    .locals 7

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const/4 v2, 0x1

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lcom/android/camera/zoommap/RegionHelper$1;

    invoke-direct {v5, p0}, Lcom/android/camera/zoommap/RegionHelper$1;-><init>(Lcom/android/camera/zoommap/RegionHelper;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mConfigX:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lcom/android/camera/zoommap/RegionHelper$2;

    invoke-direct {v3, p0}, Lcom/android/camera/zoommap/RegionHelper$2;-><init>(Lcom/android/camera/zoommap/RegionHelper;)V

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mConfigY:Lmiuix/animation/base/AnimConfig;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mSpeedX:F

    iput v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mSpeedY:F

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "TARGET_X"

    aput-object v1, v0, v6

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object v4, p0, Lcom/android/camera/zoommap/RegionHelper;->mConfigX:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v6

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "TARGET_Y"

    aput-object v1, v0, v6

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mConfigY:Lmiuix/animation/base/AnimConfig;

    aput-object p0, v2, v6

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public initTranslation()V
    .locals 2

    const-string v0, "RegionHelper"

    const-string v1, "initTranslation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    iput v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    iget-object v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public isHovering()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsHovering:Z

    return p0
.end method

.method public moveToEdge()Z
    .locals 13

    iget-boolean v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsCinematicAspectRatio:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    iget v3, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    sub-int/2addr v3, v0

    sget v4, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    const/high16 v4, -0x3b060000    # -2000.0f

    const/high16 v5, 0x44fa0000    # 2000.0f

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    sub-int/2addr v2, v0

    sget v0, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    mul-int/2addr v0, v6

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    sub-int/2addr v2, v0

    :goto_1
    move v0, v7

    goto :goto_4

    :cond_1
    iget v2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    sget v3, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    add-int/2addr v3, v0

    iget-object v8, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x3

    add-int/2addr v3, v8

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMax:I

    iget-object v3, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    mul-int/2addr v3, v6

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mSpeedX:F

    cmpl-float v2, v0, v5

    if-lez v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMax:I

    :goto_2
    move v0, v1

    goto :goto_4

    :cond_4
    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    :goto_3
    iget v2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    iget v2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMid:I

    if-ge v0, v2, :cond_3

    goto :goto_3

    :goto_4
    iget v3, p0, Lcom/android/camera/zoommap/RegionHelper;->mSpeedY:F

    cmpl-float v5, v3, v5

    if-lez v5, :cond_7

    :cond_6
    iget v3, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMax:I

    goto :goto_6

    :cond_7
    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    :goto_5
    iget v3, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMin:I

    goto :goto_6

    :cond_8
    iget v3, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    iget v4, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMid:I

    if-ge v3, v4, :cond_6

    goto :goto_5

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveToEdge mSpeedX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/zoommap/RegionHelper;->mSpeedX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", mSpeedY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/zoommap/RegionHelper;->mSpeedY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", destX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", destY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegionHelper"

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_9

    if-nez v3, :cond_9

    const-string v4, "RIGHT_TOP"

    :goto_7
    invoke-static {v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomMapMoveWindow(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    if-nez v2, :cond_a

    if-lez v3, :cond_a

    const-string v4, "RIGHT_BOTTOM"

    goto :goto_7

    :cond_a
    if-gez v2, :cond_b

    if-nez v3, :cond_b

    const-string v4, "LEFT_TOP"

    goto :goto_7

    :cond_b
    if-gez v2, :cond_c

    if-lez v3, :cond_c

    const-string v4, "LEFT_BOTTOM"

    goto :goto_7

    :cond_c
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const-string v8, "TARGET_X"

    aput-object v8, v5, v1

    invoke-static {v5}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v8, v7, [Lmiuix/animation/base/AnimConfig;

    new-instance v9, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v9}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v10, v6, [F

    fill-array-data v10, :array_0

    const/4 v11, -0x2

    invoke-virtual {v9, v11, v10}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v9

    new-array v10, v7, [Lmiuix/animation/listener/TransitionListener;

    new-instance v12, Lcom/android/camera/zoommap/RegionHelper$3;

    invoke-direct {v12, p0, v4}, Lcom/android/camera/zoommap/RegionHelper$3;-><init>(Lcom/android/camera/zoommap/RegionHelper;Ljava/lang/Boolean;)V

    aput-object v12, v10, v1

    invoke-virtual {v9, v10}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-interface {v5, v2, v8}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v4, "TARGET_Y"

    aput-object v4, v2, v1

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v7, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-virtual {v5, v11, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-array v6, v7, [Lmiuix/animation/listener/TransitionListener;

    new-instance v7, Lcom/android/camera/zoommap/RegionHelper$4;

    invoke-direct {v7, p0}, Lcom/android/camera/zoommap/RegionHelper$4;-><init>(Lcom/android/camera/zoommap/RegionHelper;)V

    aput-object v7, v6, v1

    invoke-virtual {v5, v6}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v2, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return v0

    nop

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public setHovering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsHovering:Z

    return-void
.end method

.method public updateTranslation(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTranslation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegionHelper"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    iget p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMin:I

    sget v0, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    sub-int/2addr p1, v0

    iget v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMax:I

    add-int/2addr v1, v0

    invoke-static {p2, p1, v1}, Lcom/android/camera/Util;->getValidValue(III)I

    move-result p1

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "TARGET_X"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iget v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, p1, [Lmiuix/animation/base/AnimConfig;

    iget-object v3, p0, Lcom/android/camera/zoommap/RegionHelper;->mConfigX:Lmiuix/animation/base/AnimConfig;

    aput-object v3, v2, v1

    invoke-interface {p2, v0, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "TARGET_Y"

    aput-object v0, p2, v1

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iget v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mConfigY:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p1, v1

    invoke-interface {p2, v0, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
