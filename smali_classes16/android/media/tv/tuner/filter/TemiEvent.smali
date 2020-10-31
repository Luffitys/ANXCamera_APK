.class public Landroid/media/tv/tuner/filter/TemiEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "TemiEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mDescrData:[B

.field private final mDescrTag:B

.field private final mPts:J


# direct methods
.method private constructor <init>(JB[B)V
    .registers 5

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput-wide p1, p0, Landroid/media/tv/tuner/filter/TemiEvent;->mPts:J

    iput-byte p3, p0, Landroid/media/tv/tuner/filter/TemiEvent;->mDescrTag:B

    iput-object p4, p0, Landroid/media/tv/tuner/filter/TemiEvent;->mDescrData:[B

    return-void
.end method


# virtual methods
.method public getDescriptorData()[B
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/TemiEvent;->mDescrData:[B

    return-object v0
.end method

.method public getDescriptorTag()B
    .registers 2

    iget-byte v0, p0, Landroid/media/tv/tuner/filter/TemiEvent;->mDescrTag:B

    return v0
.end method

.method public getPts()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/TemiEvent;->mPts:J

    return-wide v0
.end method
