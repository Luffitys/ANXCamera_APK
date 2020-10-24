.class public Lcom/android/camera/aiwatermark/handler/TimeHandler;
.super Lcom/android/camera/aiwatermark/handler/AbstractHandler;
.source ""


# instance fields
.field protected mWatermarkItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;-><init>(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/TimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/camera/aiwatermark/data/TimeWatermark;

    invoke-direct {p1}, Lcom/android/camera/aiwatermark/data/TimeWatermark;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    return-void
.end method


# virtual methods
.method protected findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/TimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getForAI()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/aiwatermark/handler/TimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/aiwatermark/handler/TimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p0
.end method

.method public getDayOfWeek()I
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
