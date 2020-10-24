.class public Lcom/android/camera/fragment/aiwatermark/FragmentFestivalWatermark;
.super Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;
.source ""


# static fields
.field public static final FRAGMENT_INFO:I = 0xffffb


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;-><init>()V

    return-void
.end method


# virtual methods
.method public getWatermarkList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;

    invoke-direct {v0}, Lcom/android/camera/aiwatermark/data/FestivalWatermark;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getForManual()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
