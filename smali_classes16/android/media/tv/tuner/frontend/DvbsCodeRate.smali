.class public Landroid/media/tv/tuner/frontend/DvbsCodeRate;
.super Ljava/lang/Object;
.source "DvbsCodeRate.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
    }
.end annotation


# instance fields
.field private final mBitsPer1000Symbol:I

.field private final mInnerFec:J

.field private final mIsLinear:Z

.field private final mIsShortFrames:Z


# direct methods
.method private constructor <init>(JZZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate;->mInnerFec:J

    iput-boolean p3, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate;->mIsLinear:Z

    iput-boolean p4, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate;->mIsShortFrames:Z

    iput p5, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate;->mBitsPer1000Symbol:I

    return-void
.end method

.method synthetic constructor <init>(JZZILandroid/media/tv/tuner/frontend/DvbsCodeRate$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/frontend/DvbsCodeRate;-><init>(JZZI)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;-><init>(Landroid/media/tv/tuner/frontend/DvbsCodeRate$1;)V

    return-object v0
.end method


# virtual methods
.method public getBitsPer1000Symbol()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate;->mBitsPer1000Symbol:I

    return v0
.end method

.method public getInnerFec()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate;->mInnerFec:J

    return-wide v0
.end method

.method public isLinear()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate;->mIsLinear:Z

    return v0
.end method

.method public isShortFrameEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate;->mIsShortFrames:Z

    return v0
.end method
