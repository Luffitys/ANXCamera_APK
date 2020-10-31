.class public Landroid/media/tv/tuner/frontend/FrontendInfo;
.super Ljava/lang/Object;
.source "FrontendInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mAcquireRange:I

.field private final mExclusiveGroupId:I

.field private final mFrequencyRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrontendCap:Landroid/media/tv/tuner/frontend/FrontendCapabilities;

.field private final mId:I

.field private final mStatusCaps:[I

.field private final mSymbolRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I


# direct methods
.method private constructor <init>(IIIIIIII[ILandroid/media/tv/tuner/frontend/FrontendCapabilities;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mId:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mType:I

    new-instance v0, Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mSymbolRateRange:Landroid/util/Range;

    iput p7, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mAcquireRange:I

    iput p8, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mExclusiveGroupId:I

    iput-object p9, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mStatusCaps:[I

    iput-object p10, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrontendCap:Landroid/media/tv/tuner/frontend/FrontendCapabilities;

    return-void
.end method


# virtual methods
.method public getAcquireRange()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mAcquireRange:I

    return v0
.end method

.method public getExclusiveGroupId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mExclusiveGroupId:I

    return v0
.end method

.method public getFrequencyRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrequencyRange:Landroid/util/Range;

    return-object v0
.end method

.method public getFrontendCapabilities()Landroid/media/tv/tuner/frontend/FrontendCapabilities;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mFrontendCap:Landroid/media/tv/tuner/frontend/FrontendCapabilities;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mId:I

    return v0
.end method

.method public getStatusCapabilities()[I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mStatusCaps:[I

    return-object v0
.end method

.method public getSymbolRateRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mSymbolRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendInfo;->mType:I

    return v0
.end method
