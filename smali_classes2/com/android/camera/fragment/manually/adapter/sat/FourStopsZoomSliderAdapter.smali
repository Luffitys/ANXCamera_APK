.class public Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter;
.super Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;
.source "FourStopsZoomSliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FourStopsZoomSliderAdapter"


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

    new-instance v0, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/manually/adapter/sat/FourStopsZoomSliderAdapter$_6_10_20_100;-><init>(Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;)V

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
