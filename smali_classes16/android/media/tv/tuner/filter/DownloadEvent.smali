.class public Landroid/media/tv/tuner/filter/DownloadEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "DownloadEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mDataLength:I

.field private final mItemFragmentIndex:I

.field private final mItemId:I

.field private final mLastItemFragmentIndex:I

.field private final mMpuSequenceNumber:I


# direct methods
.method private constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mItemId:I

    iput p2, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mMpuSequenceNumber:I

    iput p3, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mItemFragmentIndex:I

    iput p4, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mLastItemFragmentIndex:I

    iput p5, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mDataLength:I

    return-void
.end method


# virtual methods
.method public getDataLength()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mDataLength:I

    return v0
.end method

.method public getItemFragmentIndex()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mItemFragmentIndex:I

    return v0
.end method

.method public getItemId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mItemId:I

    return v0
.end method

.method public getLastItemFragmentIndex()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mLastItemFragmentIndex:I

    return v0
.end method

.method public getMpuSequenceNumber()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mMpuSequenceNumber:I

    return v0
.end method
