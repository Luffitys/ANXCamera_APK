.class public abstract Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;
.super Ljava/lang/Object;
.source "MultiStopsZoomRatioResolver.java"


# instance fields
.field protected final mAdapter:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;

.field protected final mZoomRatioMax:F

.field protected final mZoomRatioMin:F


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mAdapter:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;

    iget-object p1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mAdapter:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->getZoomRatioMin()F

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mZoomRatioMin:F

    iget-object p1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mAdapter:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->getZoomRatioMax()F

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mZoomRatioMax:F

    return-void
.end method


# virtual methods
.method public abstract checkAndNotifyIfValueChanged(IF)Z
.end method

.method public abstract getCount()I
.end method

.method protected getCurrentValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mAdapter:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->getCurrentValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentValueIndex()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mAdapter:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->getCurrentValueIndex()I

    move-result p0

    return p0
.end method

.method public abstract isFirstStopPoint(I)Z
.end method

.method public isFullRangeZoomSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mAdapter:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->getCurrentCapturingMode()I

    move-result p0

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa5

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isLastStopPoint(I)Z
.end method

.method public abstract isStopPoint(I)Z
.end method

.method public abstract mapPositionToZoomRatio(F)F
.end method

.method public abstract mapZoomRatioToPosition(F)F
.end method

.method protected notifyDataChanged(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mAdapter:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->notifyDataChanged(ILjava/lang/String;)V

    return-void
.end method
