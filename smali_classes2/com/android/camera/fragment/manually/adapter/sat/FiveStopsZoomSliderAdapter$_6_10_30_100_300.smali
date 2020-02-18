.class Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;
.super Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;
.source "FiveStopsZoomSliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "_6_10_30_100_300"
.end annotation


# static fields
.field private static final ENTRY_COUNT_10X_TO_MAX:I = 0xb

.field private static ENTRY_COUNT_MIN_TO_MAX:I = 0x23

.field private static ENTRY_COUNT_TOTAL:I = 0x0

.field private static final ENTRY_INDEX_10X:I = 0x18

.field private static final ENTRY_INDEX_10X_RANGE_10X:I = 0x1e

.field private static final ENTRY_INDEX_1X:I = 0x4

.field private static final ENTRY_INDEX_1X_RANGE_10X:I = 0x0

.field private static final ENTRY_INDEX_3X:I = 0xe

.field private static final ENTRY_INDEX_3X_RANGE_10X:I = 0xa

.field private static ENTRY_INDEX_LAST:I = 0x22

.field private static ENTRY_INDEX_MAX:I

.field private static final ENTRY_INDEX_MIN:I

.field private static final RANGE_10X_TO_MAX_ENTRY_INDEX_X:[F

.field private static final RANGE_10X_TO_MAX_ZOOM_RATIO_Y:[F

.field private static final RANGE_1X_TO_3X_ENTRY_INDEX_X:[F

.field private static final RANGE_1X_TO_3X_FOR_10X_ENTRY_INDEX_X:[F

.field private static final RANGE_1X_TO_3X_FOR_10X_ZOOM_RATIO_Y:[F

.field private static final RANGE_1X_TO_3X_ZOOM_RATIO_Y:[F

.field private static final RANGE_3X_TO_10X_ENTRY_INDEX_X:[F

.field private static final RANGE_3X_TO_10X_FOR_10X_ENTRY_INDEX_X:[F

.field private static final RANGE_3X_TO_10X_FOR_10X_ZOOM_RATIO_Y:[F

.field private static final RANGE_3X_TO_10X_ZOOM_RATIO_Y:[F

.field private static final RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

.field private static final RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F


# instance fields
.field private mRange10XToMaxEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRange10XToMaxZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mRange1XTo3XEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRange1XTo3XFor10XEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRange1XTo3XFor10XZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mRange1XTo3XZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mRange3XTo10XEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRange3XTo10XFor10XEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRange3XTo10XFor10XZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mRange3XTo10XZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mRangeMinTo1XEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRangeMinTo1XZoomRatioToEntrySpline:Landroid/util/Spline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_COUNT_MIN_TO_MAX:I

    sput v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_COUNT_TOTAL:I

    sget v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_INDEX_LAST:I

    sput v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_INDEX_MAX:I

    const/4 v0, 0x5

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_ENTRY_INDEX_X:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_ZOOM_RATIO_Y:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_ENTRY_INDEX_X:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_ZOOM_RATIO_Y:[F

    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_10X_TO_MAX_ENTRY_INDEX_X:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_7

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_10X_TO_MAX_ZOOM_RATIO_Y:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_8

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_FOR_10X_ENTRY_INDEX_X:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_FOR_10X_ZOOM_RATIO_Y:[F

    const/16 v0, 0xb

    new-array v1, v0, [F

    fill-array-data v1, :array_a

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_FOR_10X_ENTRY_INDEX_X:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_FOR_10X_ZOOM_RATIO_Y:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x40800000    # 4.0f
        0x41600000    # 14.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_4
    .array-data 4
        0x41600000    # 14.0f
        0x41c00000    # 24.0f
    .end array-data

    :array_5
    .array-data 4
        0x40400000    # 3.0f
        0x41200000    # 10.0f
    .end array-data

    :array_6
    .array-data 4
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
        0x41f00000    # 30.0f
        0x42000000    # 32.0f
        0x42080000    # 34.0f
    .end array-data

    :array_7
    .array-data 4
        0x41200000    # 10.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41b00000    # 22.0f
        0x41d00000    # 26.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x41000000    # 8.0f
        0x41200000    # 10.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x3fb33333    # 1.4f
        0x3fe66666    # 1.8f
        0x400ccccd    # 2.2f
        0x40266666    # 2.6f
        0x40400000    # 3.0f
    .end array-data

    :array_a
    .array-data 4
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41800000    # 16.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41b00000    # 22.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_b
    .array-data 4
        0x40400000    # 3.0f
        0x406ccccd    # 3.7f
        0x408ccccd    # 4.4f
        0x40a33333    # 5.1f
        0x40b9999a    # 5.8f
        0x40d00000    # 6.5f
        0x40e66666    # 7.2f
        0x40fccccd    # 7.9f
        0x4109999a    # 8.6f
        0x4114cccd    # 9.3f
        0x41200000    # 10.0f
    .end array-data
.end method

.method constructor <init>(Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;-><init>(Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFullRangeZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRangeMinTo1XEntryToZoomRatioSpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRangeMinTo1XZoomRatioToEntrySpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_ENTRY_INDEX_X:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_ZOOM_RATIO_Y:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange1XTo3XEntryToZoomRatioSpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_ZOOM_RATIO_Y:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_ENTRY_INDEX_X:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange1XTo3XZoomRatioToEntrySpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_ENTRY_INDEX_X:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_ZOOM_RATIO_Y:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange3XTo10XEntryToZoomRatioSpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_ZOOM_RATIO_Y:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_ENTRY_INDEX_X:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange3XTo10XZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-static {}, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->getEntryX()[F

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mZoomRatioMax:F

    invoke-static {v0}, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->getZoomRatioY(F)[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange10XToMaxEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-static {v0, p1}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange10XToMaxZoomRatioToEntrySpline:Landroid/util/Spline;

    sget p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_COUNT_MIN_TO_MAX:I

    sput p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_COUNT_TOTAL:I

    sget p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_INDEX_LAST:I

    sput p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_INDEX_MAX:I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_FOR_10X_ENTRY_INDEX_X:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_FOR_10X_ZOOM_RATIO_Y:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange1XTo3XFor10XEntryToZoomRatioSpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_FOR_10X_ZOOM_RATIO_Y:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_1X_TO_3X_FOR_10X_ENTRY_INDEX_X:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange1XTo3XFor10XZoomRatioToEntrySpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_FOR_10X_ENTRY_INDEX_X:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_FOR_10X_ZOOM_RATIO_Y:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange3XTo10XFor10XEntryToZoomRatioSpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_FOR_10X_ZOOM_RATIO_Y:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_3X_TO_10X_FOR_10X_ENTRY_INDEX_X:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange3XTo10XFor10XZoomRatioToEntrySpline:Landroid/util/Spline;

    const/16 p0, 0x1f

    sput p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_COUNT_TOTAL:I

    const/16 p0, 0x1e

    sput p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_INDEX_MAX:I

    :goto_0
    return-void
.end method

.method private static getEntryX()[F
    .locals 7

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_10X_TO_MAX_ENTRY_INDEX_X:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    const/16 v2, 0x18

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    array-length v3, v0

    new-array v3, v3, [F

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    aget v5, v0, v4

    cmpg-float v5, v5, v2

    if-gtz v5, :cond_0

    aget v5, v0, v4

    aput v5, v3, v4

    goto :goto_1

    :cond_0
    aget v5, v0, v4

    sub-float/2addr v5, v2

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    aput v5, v3, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private static getZoomRatioY(F)[F
    .locals 7

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->RANGE_10X_TO_MAX_ZOOM_RATIO_Y:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    float-to-int v1, v1

    array-length v2, v0

    new-array v2, v2, [F

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget v4, v0, v3

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    :cond_0
    aget v4, v0, v3

    sub-float/2addr v4, v5

    int-to-float v6, v1

    sub-float/2addr v6, v5

    div-float/2addr v4, v6

    sub-float v6, p0, v5

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public checkAndNotifyIfValueChanged(IF)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mapPositionToZoomRatio(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mAdapter:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;

    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFullRangeZoomSupported()Z

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    if-gt p1, v1, :cond_2

    const p2, 0x3f19999a    # 0.6f

    int-to-float v1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    invoke-static {p2, v1}, Lcom/android/camera/HybridZoomingSystem;->add(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->getCurrentValueIndex()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    move v0, v5

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0xe

    if-gt p1, v1, :cond_3

    add-int/lit8 p2, p1, -0x4

    int-to-float p2, p2

    mul-float/2addr p2, v3

    invoke-static {v4, p2}, Lcom/android/camera/HybridZoomingSystem;->add(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->getCurrentValueIndex()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_1

    :cond_3
    const/16 v1, 0x18

    if-gt p1, v1, :cond_4

    add-int/lit8 p2, p1, -0xe

    int-to-float p2, p2

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr p2, v1

    invoke-static {v2, p2}, Lcom/android/camera/HybridZoomingSystem;->add(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->getCurrentValueIndex()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mapPositionToZoomRatio(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_5
    const/16 p2, 0xa

    if-gt p1, p2, :cond_6

    int-to-float p2, p1

    mul-float/2addr p2, v3

    invoke-static {v4, p2}, Lcom/android/camera/HybridZoomingSystem;->add(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->getCurrentValueIndex()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_1

    :cond_6
    const/16 p2, 0x1e

    if-gt p1, p2, :cond_7

    add-int/lit8 p2, p1, -0xa

    int-to-float p2, p2

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr p2, v1

    invoke-static {v2, p2}, Lcom/android/camera/HybridZoomingSystem;->add(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->getCurrentValueIndex()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->notifyDataChanged(ILjava/lang/String;)V

    :cond_8
    return v0
.end method

.method public getCount()I
    .locals 0

    sget p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_COUNT_TOTAL:I

    return p0
.end method

.method public isFirstStopPoint(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLastStopPoint(I)Z
    .locals 0

    sget p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_INDEX_MAX:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStopPoint(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFullRangeZoomSupported()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/16 p0, 0xe

    if-eq p1, p0, :cond_0

    const/16 p0, 0x18

    if-eq p1, p0, :cond_0

    sget p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->ENTRY_INDEX_MAX:I

    if-ne p1, p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    if-eqz p1, :cond_3

    const/16 p0, 0xa

    if-eq p1, p0, :cond_3

    const/16 p0, 0x1e

    if-ne p1, p0, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public mapPositionToZoomRatio(F)F
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFullRangeZoomSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    cmpg-float v0, v1, p1

    const/high16 v1, 0x40800000    # 4.0f

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRangeMinTo1XEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_0
    cmpg-float v0, v1, p1

    const/high16 v1, 0x41600000    # 14.0f

    if-gtz v0, :cond_1

    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange1XTo3XEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_1
    cmpg-float v0, v1, p1

    if-gtz v0, :cond_2

    const/high16 v0, 0x41c00000    # 24.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange3XTo10XEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange10XToMaxEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_3
    cmpg-float v0, v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    if-gtz v0, :cond_4

    cmpg-float v0, p1, v2

    if-gez v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange1XTo3XFor10XEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_4
    cmpg-float v0, v2, p1

    if-gtz v0, :cond_5

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange3XTo10XFor10XEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_5
    return v1
.end method

.method public mapZoomRatioToPosition(F)F
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFullRangeZoomSupported()Z

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40400000    # 3.0f

    if-eqz v0, :cond_3

    const v0, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRangeMinTo1XZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_0
    cmpg-float v0, v2, p1

    if-gtz v0, :cond_1

    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange1XTo3XZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_1
    cmpg-float v0, v3, p1

    if-gtz v0, :cond_2

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange3XTo10XZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange10XToMaxZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_3
    cmpg-float v0, v2, p1

    if-gtz v0, :cond_4

    cmpg-float v0, p1, v3

    if-gez v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange1XTo3XFor10XZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_4
    cmpg-float v0, v3, p1

    if-gtz v0, :cond_5

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;->mRange3XTo10XFor10XZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method
