.class public Lcom/android/camera/aiwatermark/handler/IndiaFestivalHandler;
.super Lcom/android/camera/aiwatermark/handler/FestivalHandler;
.source ""


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/FestivalHandler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    invoke-super {p0}, Lcom/android/camera/aiwatermark/handler/FestivalHandler;->findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p0

    return-object p0
.end method
