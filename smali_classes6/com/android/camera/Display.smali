.class public Lcom/android/camera/Display;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DISPLAY_RATIO_123:Ljava/lang/String; = "4:3"

.field public static final DISPLAY_RATIO_169:Ljava/lang/String; = "16:9"

.field public static final DISPLAY_RATIO_456:Ljava/lang/String; = "3:1"

.field private static final TAG:Ljava/lang/String; = "Display"

.field private static isNotchDevice:Z = false

.field private static mDisplayRectCompat:Lcom/android/camera/IDisplayRect; = null

.field private static mIsInitialized:Z = false

.field private static sHasNavigationBar:Z = false

.field private static sIsFullScreenNavBarHidden:Z = false

.field private static sIsnotchScreenHidden:Z = false

.field private static sNavigationBarHeight:I = 0x0

.field private static sPixelDensity:F = 1.0f

.field private static sPixelDensityScale:F = 1.0f

.field private static sScreenOriention:I = 0x0

.field private static sStatusBarHeight:I = 0x0

.field private static sWindowHeight:I = 0x438

.field private static sWindowManager:Landroid/view/IWindowManager; = null

.field private static sWindowWidth:I = 0x2d0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Display;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/android/camera/Display;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Display;->sWindowManager:Landroid/view/IWindowManager;

    :try_start_0
    invoke-static {p0, v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->hasNavigationBar(Landroid/content/Context;Landroid/view/IWindowManager;)Z

    move-result p0

    sput-boolean p0, Lcom/android/camera/Display;->sHasNavigationBar:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v0, "checkDeviceHasNavigationBar exception"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-boolean p0, Lcom/android/camera/Display;->sHasNavigationBar:Z

    return p0
.end method

.method public static getBottomBarHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomBarHeight()I

    move-result v0

    return v0
.end method

.method public static getBottomHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomHeight()I

    move-result v0

    return v0
.end method

.method public static getBottomMargin()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomMargin()I

    move-result v0

    return v0
.end method

.method public static getCenterDisplayHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayHeight()I

    move-result v0

    return v0
.end method

.method private static getDisplayAdapter()Lcom/android/camera/IDisplayRect;
    .locals 1

    sget-object v0, Lcom/android/camera/Display;->mDisplayRectCompat:Lcom/android/camera/IDisplayRect;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Display;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/camera/Display;->mDisplayRectCompat:Lcom/android/camera/IDisplayRect;

    return-object v0
.end method

.method public static getDisplayRatio()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayRect(I)Landroid/graphics/Rect;
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/IDisplayRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getDragLayoutTopMargin()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getDragLayoutTopMargin()I

    move-result v0

    return v0
.end method

.method public static getGestureLineHeight(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/android/camera/Display;->isEnableGestureLine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/android/camera/Display;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarHeight()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sNavigationBarHeight:I

    return v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navBarHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getPixelDensity()F
    .locals 1

    sget v0, Lcom/android/camera/Display;->sPixelDensity:F

    return v0
.end method

.method public static getScreenOrientation()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sScreenOriention:I

    return v0
.end method

.method private static getScreenOrientation(I)I
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static getSquareBottomCoverHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getSquareBottomCoverHeight()I

    move-result v0

    return v0
.end method

.method public static getStatusBarHeight()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sStatusBarHeight:I

    return v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070133

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getTipsMarginTop()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTipsMarginTop()I

    move-result v0

    return v0
.end method

.method public static getTopBarHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopBarHeight()I

    move-result v0

    return v0
.end method

.method public static getTopBarWidth()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopBarWidth()I

    move-result v0

    return v0
.end method

.method public static getTopCoverHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopCoverHeight()I

    move-result v0

    return v0
.end method

.method public static getTopHeight()I
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopMargin()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/IDisplayRect;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getTopMargin()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopMargin()I

    move-result v0

    return v0
.end method

.method public static getWindowHeight()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sWindowHeight:I

    return v0
.end method

.method public static getWindowWidth()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sWindowWidth:I

    return v0
.end method

.method public static getsPixelDensityScale()F
    .locals 1

    sget v0, Lcom/android/camera/Display;->sPixelDensityScale:F

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v0, "initialize: context is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/camera/Display;->isNotchScreenHidden(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Display;->sIsnotchScreenHidden:Z

    const-string v0, "ro.miui.notch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget-boolean v0, Lcom/android/camera/Display;->sIsnotchScreenHidden:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/camera/Display;->isNotchDevice:Z

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "laurel_sprout"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Display;->sIsnotchScreenHidden:Z

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/android/camera/Display;->isNotchDevice:Z

    :cond_2
    invoke-static {p0}, Lcom/android/camera/Display;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Display;->sIsFullScreenNavBarHidden:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/android/camera/Display;->sPixelDensity:F

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_3

    sput v3, Lcom/android/camera/Display;->sWindowWidth:I

    sput v4, Lcom/android/camera/Display;->sWindowHeight:I

    goto :goto_1

    :cond_3
    sput v4, Lcom/android/camera/Display;->sWindowWidth:I

    sput v3, Lcom/android/camera/Display;->sWindowHeight:I

    :goto_1
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "hercules"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8c4

    sput v3, Lcom/android/camera/Display;->sWindowHeight:I

    :cond_4
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/android/camera/Display;->sPixelDensity:F

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget v3, Lcom/android/camera/Display;->sPixelDensity:F

    div-float/2addr v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v0, v3

    sput v0, Lcom/android/camera/Display;->sPixelDensityScale:F

    sput-boolean v2, Lcom/android/camera/Display;->mIsInitialized:Z

    invoke-static {p0}, Lcom/android/camera/Display;->initDisplayCompat(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p0

    sput p0, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    sget-object p0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize: sCenterDisplayHeight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getCenterDisplayHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sTopMargin = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sTopBarHeight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sBottomMargin = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sBottomBarHeight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", windowSize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isNotchDevice = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/camera/Display;->isNotchDevice:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsInitialized = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/camera/Display;->mIsInitialized:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    sget v2, Lcom/android/camera/Display;->sPixelDensity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "windowSize=%dx%d density=%.4f"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static initDisplayCompat(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {v0}, Lcom/android/camera/DisplayAdapter$DisplayParameter;-><init>()V

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v1

    iput v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v1

    iput v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    invoke-static {}, Lcom/android/camera/Display;->isNotchDevice()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->isNotchDevice:Z

    invoke-static {p0}, Lcom/android/camera/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->statusBarHeight:I

    new-instance v1, Lcom/android/camera/DisplayAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/DisplayAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    sput-object v1, Lcom/android/camera/Display;->mDisplayRectCompat:Lcom/android/camera/IDisplayRect;

    return-void
.end method

.method public static initStatusBarHeight(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/android/camera/Display;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/Display;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/camera/Display;->sNavigationBarHeight:I

    invoke-static {p0}, Lcom/android/camera/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/android/camera/Display;->sStatusBarHeight:I

    return-void
.end method

.method public static isContentViewExtendToTopEdges()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/Display;->isNotchDevice:Z

    return v0
.end method

.method public static isEnableGestureLine(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-boolean p0, Lcom/android/camera/Display;->sHasNavigationBar:Z

    const/4 v0, 0x0

    return v0
.end method

.method public static isFullScreenNavBarHidden()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/Display;->sIsFullScreenNavBarHidden:Z

    return v0
.end method

.method private static isFullScreenNavBarHidden(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isNotchDevice()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/Display;->isNotchDevice:Z

    return v0
.end method

.method public static isNotchScreenHidden()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/Display;->sIsnotchScreenHidden:Z

    return v0
.end method

.method public static isNotchScreenHidden(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black_v2"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static updateOrientation(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/Display;->getScreenOrientation(I)I

    move-result p0

    sput p0, Lcom/android/camera/Display;->sScreenOriention:I

    return-void
.end method
