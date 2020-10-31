.class public Lmiui/util/ScreenshotUtils;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"


# static fields
.field private static final ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

.field private static final ACTIVITY_SCREENSHOT_FOLDER_PATH:Ljava/lang/String; = "/data/system/app_screenshot"

.field public static final BLUR_SCALE_RATIO:F = 0.33333334f

.field public static final DEFAULT_SCREENSHOT_COLOR:I = -0x55000001

.field public static final DEFAULT_SCREEN_BLUR_RADIUS:I

.field public static final REAL_BLUR_BLACK:F

.field public static final REAL_BLUR_MINIFY:I

.field public static final REAL_BLUR_RADIUS:I

.field private static final TAG:Ljava/lang/String; = "ScreenshotUtils"

.field private static sCacheBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisplay:Landroid/view/Display;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sKeyguardManager:Landroid/app/KeyguardManager;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sScreenHeight:I

.field private static sScreenWidth:I

.field private static sSizeBuf:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110600f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->DEFAULT_SCREEN_BLUR_RADIUS:I

    const-string v0, "persist.sys.real_blur_black"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_BLACK:F

    const-string v0, "persist.sys.real_blur_minify"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    const-string v0, "persist.sys.real_blur_radius"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_RADIUS:I

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/app_screenshot"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;IZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lmiui/util/ScreenshotUtils;->screenShotAndSave(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/ScreenshotUtils;->captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 9

    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    sget-object v0, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    const-string v0, "persist.sys.screenshot_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_1c
    invoke-static {p1, v1}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    :cond_27
    invoke-static {p1, v2}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    return-void

    :cond_32
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v1, v2

    :cond_3f
    :goto_3f
    sget-object v2, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v2, :cond_68

    const-class v2, Lmiui/util/ScreenshotUtils;

    monitor-enter v2

    :try_start_46
    sget-object v3, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v3, :cond_63

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "ScreenshotUtils"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    sget-object v4, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    :cond_63
    monitor-exit v2

    goto :goto_68

    :catchall_65
    move-exception v3

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_46 .. :try_end_67} :catchall_65

    throw v3

    :cond_68
    :goto_68
    const/4 v2, 0x0

    :try_start_69
    sget-object v3, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Lmiui/util/CompatibilityHelper;->hasNavigationBar(I)Z

    move-result v3
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_73} :catch_75

    move v2, v3

    goto :goto_79

    :catch_75
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_79
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8b

    move v3, v2

    sget-object v4, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    new-instance v5, Lmiui/util/ScreenshotUtils$1;

    invoke-direct {v5, p1, v0, v1, v3}, Lmiui/util/ScreenshotUtils$1;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8e

    :cond_8b
    invoke-static {p1, v0, v1, v2}, Lmiui/util/ScreenshotUtils;->screenShotAndSave(Ljava/lang/String;IZZ)V

    :goto_8e
    return-void
.end method

.method public static disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z
    .registers 3

    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->isLiteMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v0, "enable_miui_lite"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;
    .registers 7

    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x2f

    const/16 v4, 0x2d

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    if-eqz p1, :cond_17

    const-string v3, "p"

    goto :goto_19

    :cond_17
    const-string v3, "l"

    :goto_19
    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%s--%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getActivityScreenshotSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 5

    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11060013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static getBlurBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    const v0, 0x3eaaaaab

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/ScreenshotUtils;->getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method

.method public static getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    if-eqz p0, :cond_11

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110600f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_11
    if-eqz p1, :cond_25

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/system/R$color;->blur_background_mask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_25
    return-object p1
.end method

.method private static getCacheBitmap(Z)Ljava/lang/ref/SoftReference;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_5

    sget-object v0, Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;

    return-object v0

    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    :goto_1e
    if-eqz v2, :cond_23

    iget v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_25

    :cond_23
    iget v3, v0, Landroid/graphics/Point;->x:I

    :goto_25
    sget v4, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    if-ne v3, v4, :cond_2c

    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;

    goto :goto_2e

    :cond_2c
    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;

    :goto_2e
    return-object v4
.end method

.method public static getScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v1, v2}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;
    .registers 19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    sget v0, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v4, v0

    sget v0, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    float-to-int v5, v0

    if-nez v1, :cond_1f

    if-nez v2, :cond_1f

    invoke-static {v4, v5}, Lmiui/util/CompatibilityHelper;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    goto :goto_24

    :cond_1f
    invoke-static {v4, v5, v1, v2}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    :goto_24
    if-eqz v6, :cond_f5

    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    if-eqz v7, :cond_34

    const/4 v0, 0x2

    if-ne v7, v0, :cond_32

    goto :goto_34

    :cond_32
    const/4 v0, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, 0x1

    :goto_35
    move v8, v0

    if-eqz p4, :cond_40

    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v9, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual {v0, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_9e

    :cond_40
    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_42
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Lmiui/util/CompatibilityHelper;->hasNavigationBar(I)Z

    move-result v0

    move v9, v0

    if-eqz v9, :cond_5d

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "force_fsg_nav_bar"

    invoke-static {v0, v11}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x0

    move v9, v0

    :cond_5d
    if-eqz v9, :cond_78

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v11, "navigation_bar_size"

    const-string v12, "dimen"

    const-string v13, "android"

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_78

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_77} :catch_79

    move v10, v11

    :cond_78
    goto :goto_7a

    :catch_79
    move-exception v0

    :goto_7a
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v11, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual {v0, v11}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_8d

    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v10

    iput v11, v0, Landroid/graphics/Point;->y:I

    goto :goto_9e

    :cond_8d
    if-eqz v8, :cond_97

    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v10

    iput v11, v0, Landroid/graphics/Point;->y:I

    goto :goto_9e

    :cond_97
    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v10

    iput v11, v0, Landroid/graphics/Point;->x:I

    :goto_9e
    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    float-to-int v0, v0

    sget-object v9, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    mul-float/2addr v9, p1

    add-float/2addr v9, v3

    float-to-int v3, v9

    if-ne v4, v0, :cond_b4

    if-ne v5, v3, :cond_b4

    if-eqz v7, :cond_f5

    :cond_b4
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v7, :cond_de

    neg-int v10, v4

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    neg-int v12, v5

    int-to-float v12, v12

    div-float/2addr v12, v11

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-int/lit8 v10, v7, 0x5a

    rsub-int v10, v10, 0x168

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    nop

    if-eqz v8, :cond_d3

    int-to-float v10, v4

    goto :goto_d4

    :cond_d3
    int-to-float v10, v5

    :goto_d4
    div-float/2addr v10, v11

    if-eqz v8, :cond_d9

    int-to-float v12, v5

    goto :goto_da

    :cond_d9
    int-to-float v12, v4

    :goto_da
    div-float/2addr v12, v11

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_de
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v11, v6, v9, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    move-object v6, v10

    :cond_f5
    return-object v6
.end method

.method private static initializeIfNeed(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1c
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    if-nez v0, :cond_2e

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    :cond_2e
    sget-object v0, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_3c

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    :cond_3c
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 v1, 0x0

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v1, 0x1

    :goto_4d
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v3, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-static {v2, v3}, Lmiui/util/CustomizeUtil;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    if-eqz v1, :cond_5b

    iget v2, v2, Landroid/graphics/Point;->x:I

    goto :goto_5d

    :cond_5b
    iget v2, v2, Landroid/graphics/Point;->y:I

    :goto_5d
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    if-eqz v1, :cond_66

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_68

    :cond_66
    iget v2, v2, Landroid/graphics/Point;->x:I

    :goto_68
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    :cond_6a
    return-void
.end method

.method private static screenShotAndSave(Ljava/lang/String;IZZ)V
    .registers 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "ScreenshotUtils"

    const/16 v0, 0x7530

    :try_start_c
    sget v6, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v7, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v0}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    sget-object v9, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v9, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    if-eqz v3, :cond_24

    iget v9, v7, Landroid/graphics/Point;->x:I

    goto :goto_26

    :cond_24
    iget v9, v7, Landroid/graphics/Point;->y:I

    :goto_26
    if-eqz v3, :cond_2b

    iget v10, v7, Landroid/graphics/Point;->y:I

    goto :goto_2d

    :cond_2b
    iget v10, v7, Landroid/graphics/Point;->x:I

    :goto_2d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x11060013

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x3

    if-eqz v4, :cond_52

    if-eq v2, v13, :cond_47

    if-ne v2, v12, :cond_41

    goto :goto_47

    :cond_41
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5c

    :cond_47
    :goto_47
    new-instance v14, Landroid/graphics/Rect;

    sget v15, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    sub-int/2addr v15, v10

    sget v12, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    invoke-direct {v14, v8, v15, v9, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5c

    :cond_52
    new-instance v12, Landroid/graphics/Rect;

    sget v14, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v15, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    invoke-direct {v12, v8, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v14, v12

    :goto_5c
    invoke-static/range {p3 .. p3}, Lmiui/util/ScreenshotUtils;->getCacheBitmap(Z)Ljava/lang/ref/SoftReference;

    move-result-object v12

    if-nez v12, :cond_64

    const/4 v12, 0x0

    goto :goto_6e

    :cond_64
    invoke-static/range {p3 .. p3}, Lmiui/util/ScreenshotUtils;->getCacheBitmap(Z)Ljava/lang/ref/SoftReference;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    :goto_6e
    if-nez v12, :cond_99

    if-eqz v4, :cond_74

    move v15, v9

    goto :goto_76

    :cond_74
    sget v15, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    :goto_76
    int-to-float v15, v15

    mul-float/2addr v15, v11

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v15, v15, v17

    float-to-int v15, v15

    if-eqz v4, :cond_81

    move v8, v10

    goto :goto_85

    :cond_81
    sget v18, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    move/from16 v8, v18

    :goto_85
    int-to-float v8, v8

    mul-float/2addr v8, v11

    add-float v8, v8, v17

    float-to-int v8, v8

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v8, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v12, v8

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v12}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v8, v4}, Lmiui/util/ScreenshotUtils;->setCacheBitmap(Ljava/lang/ref/SoftReference;Z)V

    :cond_99
    sget-object v8, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_a5

    new-instance v8, Landroid/graphics/Paint;

    const/4 v13, 0x3

    invoke-direct {v8, v13}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v8, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    :cond_a5
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v13, 0x1

    if-eq v2, v13, :cond_b4

    const/4 v15, 0x2

    if-ne v2, v15, :cond_b1

    goto :goto_b4

    :cond_b1
    move/from16 v17, v0

    goto :goto_cb

    :cond_b4
    :goto_b4
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v17, 0x40000000    # 2.0f

    div-float v13, v13, v17

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v15, v15, v17

    move/from16 v17, v0

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v8, v0, v13, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_cb
    invoke-virtual {v8, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz v6, :cond_eb

    new-instance v0, Landroid/graphics/Rect;

    if-eqz v4, :cond_d6

    move v13, v9

    goto :goto_d8

    :cond_d6
    sget v13, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    :goto_d8
    if-eqz v4, :cond_dc

    move v15, v10

    goto :goto_de

    :cond_dc
    sget v15, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    :goto_de
    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v13, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6, v14, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_f4

    :cond_eb
    const/4 v2, 0x0

    const v0, -0x55000001

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v0, v13}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_f4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {v1, v3}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x5a

    invoke-virtual {v12, v13, v15, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    if-nez v3, :cond_10a

    const/4 v2, 0x1

    :cond_10a
    invoke-static {v1, v2}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_138

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v13

    if-eqz v13, :cond_135

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "delete failed"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_134} :catch_13b

    goto :goto_13a

    :cond_135
    move-object/from16 v16, v0

    goto :goto_13a

    :cond_138
    move-object/from16 v16, v0

    :goto_13a
    goto :goto_141

    :catch_13b
    move-exception v0

    const-string v2, "screenShotAndSave"

    invoke-static {v5, v2, v0}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_141
    return-void
.end method

.method private static setCacheBitmap(Ljava/lang/ref/SoftReference;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_5

    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;

    return-void

    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    :goto_1e
    if-eqz v2, :cond_23

    iget v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_25

    :cond_23
    iget v3, v0, Landroid/graphics/Point;->x:I

    :goto_25
    sget v4, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    if-ne v3, v4, :cond_2c

    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;

    goto :goto_2e

    :cond_2c
    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;

    :goto_2e
    return-void
.end method
