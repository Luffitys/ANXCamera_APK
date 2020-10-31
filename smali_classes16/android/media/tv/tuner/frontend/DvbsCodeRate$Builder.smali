.class public Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
.super Ljava/lang/Object;
.source "DvbsCodeRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbsCodeRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitsPer1000Symbol:I

.field private mFec:J

.field private mIsLinear:Z

.field private mIsShortFrames:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/DvbsCodeRate$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/DvbsCodeRate;
    .registers 9

    new-instance v7, Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mFec:J

    iget-boolean v3, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mIsLinear:Z

    iget-boolean v4, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mIsShortFrames:Z

    iget v5, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mBitsPer1000Symbol:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/tuner/frontend/DvbsCodeRate;-><init>(JZZILandroid/media/tv/tuner/frontend/DvbsCodeRate$1;)V

    return-object v7
.end method

.method public setBitsPer1000Symbol(I)Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mBitsPer1000Symbol:I

    return-object p0
.end method

.method public setInnerFec(J)Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mFec:J

    return-object p0
.end method

.method public setLinear(Z)Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mIsLinear:Z

    return-object p0
.end method

.method public setShortFrameEnabled(Z)Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mIsShortFrames:Z

    return-object p0
.end method
