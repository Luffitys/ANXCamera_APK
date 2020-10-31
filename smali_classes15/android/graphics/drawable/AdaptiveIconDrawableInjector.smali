.class public Landroid/graphics/drawable/AdaptiveIconDrawableInjector;
.super Ljava/lang/Object;
.source "AdaptiveIconDrawableInjector.java"


# static fields
.field private static final FALLBACK_ICON_MASK:Ljava/lang/String; = "M50,0L100,0 100,100 0,100 0,0z"

.field private static final FALLBACK_PATH:Landroid/graphics/Path;

.field private static final MASK_PAINT:Landroid/graphics/Paint;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->MASK_PAINT:Landroid/graphics/Paint;

    const-string v0, "M50,0L100,0 100,100 0,100 0,0z"

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->FALLBACK_PATH:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPathFromMiui(Landroid/content/res/Resources;)Landroid/graphics/Path;
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/content/res/MiuiResourcesHelper;->isPreloading()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getConfigIconMaskValue()Ljava/lang/String;

    move-result-object v0

    :cond_b
    :try_start_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const v1, 0x1040239

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    goto :goto_21

    :cond_1d
    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_22

    :goto_21
    goto :goto_2d

    :catch_22
    move-exception v1

    sget-object v2, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->TAG:Ljava/lang/String;

    const-string v3, "create miui path failed "

    invoke-static {v2, v3, v1}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->FALLBACK_PATH:Landroid/graphics/Path;

    move-object v1, v2

    :goto_2d
    return-object v1
.end method

.method public static drawMiuiStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 4

    if-eqz p1, :cond_22

    invoke-static {}, Landroid/app/MiuiThemeHelper;->isMiuiOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->MASK_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->MASK_PAINT:Landroid/graphics/Paint;

    const/high16 v1, 0x1a000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->MASK_PAINT:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->MASK_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_22
    return-void
.end method
