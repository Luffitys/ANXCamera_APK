.class public final Landroid/util/MiuiDisplayMetrics;
.super Ljava/lang/Object;
.source "MiuiDisplayMetrics.java"


# static fields
.field public static DENSITY_DEVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DENSITY_NXHGITH:I = 0x1b8

.field public static final PROP_MIUI_DENSITY:Ljava/lang/String; = "persist.miui.density_v2"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getMiuiDeviceDensity()I

    move-result v0

    sput v0, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactoryDeviceDensity()I
    .registers 2

    const-string/jumbo v0, "ro.sf.lcd_density"

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getMiuiDeviceDensity()I
    .registers 2

    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getFactoryDeviceDensity()I

    move-result v0

    const-string/jumbo v1, "persist.miui.density_v2"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final getNxhdpiDensity()I
    .registers 1

    const/16 v0, 0x1b8

    return v0
.end method

.method public static setOverlayDensity(I)Z
    .registers 10

    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getFactoryDeviceDensity()I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float/2addr v1, v2

    int-to-float v2, p0

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gtz v1, :cond_36

    int-to-double v3, p0

    int-to-double v5, v0

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v5, v7

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_36

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v1, p0, :cond_36

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "persist.miui.density_v2"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne p0, v3, :cond_35

    const/4 v2, 0x1

    :cond_35
    return v2

    :cond_36
    return v2
.end method
