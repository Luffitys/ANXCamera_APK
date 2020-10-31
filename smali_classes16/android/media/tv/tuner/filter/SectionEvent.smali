.class public Landroid/media/tv/tuner/filter/SectionEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "SectionEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mDataLength:I

.field private final mSectionNum:I

.field private final mTableId:I

.field private final mVersion:I


# direct methods
.method private constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mTableId:I

    iput p2, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mVersion:I

    iput p3, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mSectionNum:I

    iput p4, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mDataLength:I

    return-void
.end method


# virtual methods
.method public getDataLength()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mDataLength:I

    return v0
.end method

.method public getSectionNumber()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mSectionNum:I

    return v0
.end method

.method public getTableId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mTableId:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mVersion:I

    return v0
.end method
