.class public Landroid/media/tv/tuner/dvr/DvrSettings;
.super Ljava/lang/Object;
.source "DvrSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/dvr/DvrSettings$Builder;,
        Landroid/media/tv/tuner/dvr/DvrSettings$DataFormat;
    }
.end annotation


# static fields
.field public static final DATA_FORMAT_ES:I = 0x2

.field public static final DATA_FORMAT_PES:I = 0x1

.field public static final DATA_FORMAT_SHV_TLV:I = 0x3

.field public static final DATA_FORMAT_TS:I


# instance fields
.field private final mDataFormat:I

.field private final mHighThreshold:J

.field private final mLowThreshold:J

.field private final mPacketSize:J

.field private final mStatusMask:I


# direct methods
.method private constructor <init>(IJJJI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mStatusMask:I

    iput-wide p2, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mLowThreshold:J

    iput-wide p4, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mHighThreshold:J

    iput-wide p6, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mPacketSize:J

    iput p8, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mDataFormat:I

    return-void
.end method

.method synthetic constructor <init>(IJJJILandroid/media/tv/tuner/dvr/DvrSettings$1;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/tuner/dvr/DvrSettings;-><init>(IJJJI)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .registers 1

    new-instance v0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;

    invoke-direct {v0}, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDataFormat()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mDataFormat:I

    return v0
.end method

.method public getHighThreshold()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mHighThreshold:J

    return-wide v0
.end method

.method public getLowThreshold()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mLowThreshold:J

    return-wide v0
.end method

.method public getPacketSize()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mPacketSize:J

    return-wide v0
.end method

.method public getStatusMask()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mStatusMask:I

    return v0
.end method
