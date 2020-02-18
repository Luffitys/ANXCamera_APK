.class public Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter;
.super Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;
.source "FiveStopsZoomSliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;,
        Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_50_100_500;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FiveStopsZoomSliderAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ZoomValueListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ZoomValueListener;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->getCount()I

    move-result p0

    return p0
.end method

.method public getZoomRatioResolver()Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;
    .locals 1

    sget-boolean v0, Lcom/mi/config/b;->jn:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/mi/config/b;->mn:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/mi/config/b;->nn:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_30_100_300;-><init>(Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Device not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_50_100_500;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/manually/adapter/sat/FiveStopsZoomSliderAdapter$_6_10_50_100_500;-><init>(Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;)V

    return-object v0
.end method

.method public mapPositionToZoomRatio(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mapPositionToZoomRatio(F)F

    move-result p0

    return p0
.end method

.method public mapZoomRatioToPosition(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mapZoomRatioToPosition(F)F

    move-result p0

    return p0
.end method
