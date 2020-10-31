.class public Landroid/media/tv/tuner/filter/PesEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "PesEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mDataLength:I

.field private final mMpuSequenceNumber:I

.field private final mStreamId:I


# direct methods
.method private constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/PesEvent;->mStreamId:I

    iput p2, p0, Landroid/media/tv/tuner/filter/PesEvent;->mDataLength:I

    iput p3, p0, Landroid/media/tv/tuner/filter/PesEvent;->mMpuSequenceNumber:I

    return-void
.end method


# virtual methods
.method public getDataLength()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/PesEvent;->mDataLength:I

    return v0
.end method

.method public getMpuSequenceNumber()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/PesEvent;->mMpuSequenceNumber:I

    return v0
.end method

.method public getStreamId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/PesEvent;->mStreamId:I

    return v0
.end method
