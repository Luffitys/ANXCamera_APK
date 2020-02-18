.class Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;
.super Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;
.source "FourStopsZoomSliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "_6_10_20_100"
.end annotation


# static fields
.field private static final ENTRY_INDEX_1X:I = 0x4

.field private static final ENTRY_INDEX_1X_WITHOUT_MIN:I = 0x0

.field private static final ENTRY_INDEX_2X:I = 0x14

.field private static final ENTRY_INDEX_2X_WITHOUT_MIN:I = 0x10

.field private static final ENTRY_INDEX_MAX:I = 0x24

.field private static final ENTRY_INDEX_MAX_WITHOUT_MIN:I = 0x20

.field private static final ENTRY_INDEX_MIN:I

.field private static final RANGE_1X_TO_2X_ENTRY_INDEX_X:[F

.field private static final RANGE_1X_TO_2X_WITHOUT_MIN_ENTRY_INDEX_X:[F

.field private static final RANGE_1X_TO_2X_WITHOUT_MIN_ZOOM_RATIO_Y:[F

.field private static final RANGE_1X_TO_2X_ZOOM_RATIO_Y:[F

.field private static final RANGE_2X_TO_MAX_ENTRY_INDEX_X:[F

.field private static final RANGE_2X_TO_MAX_WITHOUT_MIN_ENTRY_INDEX_X:[F

.field private static final RANGE_2X_TO_MAX_WITHOUT_MIN_ZOOM_RATIO_Y:[F

.field private static final RANGE_2X_TO_MAX_ZOOM_RATIO_Y:[F

.field private static final RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

.field private static final RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F


# instance fields
.field private mRange1XTo2XEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRange1XTo2XZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mRange2XToMaxEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRange2XToMaxZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mRangeMinTo1XEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRangeMinTo1XZoomRatioToEntrySpline:Landroid/util/Spline;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_ENTRY_INDEX_X:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_ZOOM_RATIO_Y:[F

    const/16 v1, 0x9

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    sput-object v2, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_ENTRY_INDEX_X:[F

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    sput-object v2, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_ZOOM_RATIO_Y:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_6

    sput-object v2, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_WITHOUT_MIN_ENTRY_INDEX_X:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_WITHOUT_MIN_ZOOM_RATIO_Y:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_WITHOUT_MIN_ENTRY_INDEX_X:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_WITHOUT_MIN_ZOOM_RATIO_Y:[F

    return-void

    nop

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
        0x40a00000    # 5.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x40000000    # 2.0f
    .end array-data

    :array_4
    .array-data 4
        0x41a00000    # 20.0f
        0x41b00000    # 22.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
        0x41f00000    # 30.0f
        0x42000000    # 32.0f
        0x42080000    # 34.0f
        0x42100000    # 36.0f
    .end array-data

    :array_5
    .array-data 4
        0x40000000    # 2.0f
        0x400ccccd    # 2.2f
        0x406ccccd    # 3.7f
        0x40a33333    # 5.1f
        0x40b9999a    # 5.8f
        0x40d33333    # 6.6f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41200000    # 10.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x41800000    # 16.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x40000000    # 2.0f
    .end array-data

    :array_8
    .array-data 4
        0x41800000    # 16.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41b00000    # 22.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
        0x41f00000    # 30.0f
        0x42000000    # 32.0f
    .end array-data

    :array_9
    .array-data 4
        0x40000000    # 2.0f
        0x400ccccd    # 2.2f
        0x406ccccd    # 3.7f
        0x40a33333    # 5.1f
        0x40b9999a    # 5.8f
        0x40d33333    # 6.6f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method constructor <init>(Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;-><init>(Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFullRangeZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRangeMinTo1XEntryToZoomRatioSpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRangeMinTo1XZoomRatioToEntrySpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_ENTRY_INDEX_X:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_ZOOM_RATIO_Y:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange1XTo2XEntryToZoomRatioSpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_ZOOM_RATIO_Y:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_ENTRY_INDEX_X:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange1XTo2XZoomRatioToEntrySpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_ENTRY_INDEX_X:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_ZOOM_RATIO_Y:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange2XToMaxEntryToZoomRatioSpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_ZOOM_RATIO_Y:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_ENTRY_INDEX_X:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange2XToMaxZoomRatioToEntrySpline:Landroid/util/Spline;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_WITHOUT_MIN_ENTRY_INDEX_X:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_WITHOUT_MIN_ZOOM_RATIO_Y:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange1XTo2XEntryToZoomRatioSpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_WITHOUT_MIN_ZOOM_RATIO_Y:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_1X_TO_2X_WITHOUT_MIN_ENTRY_INDEX_X:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange1XTo2XZoomRatioToEntrySpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_WITHOUT_MIN_ENTRY_INDEX_X:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_WITHOUT_MIN_ZOOM_RATIO_Y:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange2XToMaxEntryToZoomRatioSpline:Landroid/util/Spline;

    sget-object p1, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_WITHOUT_MIN_ZOOM_RATIO_Y:[F

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->RANGE_2X_TO_MAX_WITHOUT_MIN_ENTRY_INDEX_X:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange2XToMaxZoomRatioToEntrySpline:Landroid/util/Spline;

    :goto_0
    return-void
.end method


# virtual methods
.method public checkAndNotifyIfValueChanged(IF)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mapPositionToZoomRatio(F)F

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

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFullRangeZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_3

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

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mapPositionToZoomRatio(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mapPositionToZoomRatio(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->notifyDataChanged(ILjava/lang/String;)V

    :cond_4
    return v0
.end method

.method public getCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFullRangeZoomSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x25

    return p0

    :cond_0
    const/16 p0, 0x21

    return p0
.end method

.method public isFirstStopPoint(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFullRangeZoomSupported()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public isLastStopPoint(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFullRangeZoomSupported()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/16 p0, 0x24

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/16 p0, 0x20

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
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

    const/16 p0, 0x14

    if-eq p1, p0, :cond_0

    const/16 p0, 0x24

    if-ne p1, p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    if-eqz p1, :cond_3

    const/16 p0, 0x10

    if-eq p1, p0, :cond_3

    const/16 p0, 0x20

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

    if-eqz v0, :cond_2

    cmpg-float v0, v1, p1

    const/high16 v1, 0x40800000    # 4.0f

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRangeMinTo1XEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_0
    cmpg-float v0, v1, p1

    if-gtz v0, :cond_1

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange1XTo2XEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange2XToMaxEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_2
    cmpg-float v0, v1, p1

    const/high16 v2, 0x41800000    # 16.0f

    if-gtz v0, :cond_3

    cmpg-float v0, p1, v2

    if-gez v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange1XTo2XEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_3
    cmpg-float v0, v2, p1

    if-gtz v0, :cond_4

    const/high16 v0, 0x42000000    # 32.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange2XToMaxEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public mapZoomRatioToPosition(F)F
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFullRangeZoomSupported()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    const v0, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRangeMinTo1XZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_0
    cmpg-float v0, v2, p1

    if-gtz v0, :cond_1

    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange1XTo2XZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange2XToMaxZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_2
    cmpg-float v0, v2, p1

    if-gtz v0, :cond_3

    cmpg-float v0, p1, v1

    if-gez v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange1XTo2XZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_3
    cmpg-float v0, v1, p1

    if-gtz v0, :cond_4

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;->mRange2XToMaxZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
