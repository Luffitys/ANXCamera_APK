.class public Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;
.super Ljava/lang/Object;
.source "FrontendStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/FrontendStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Atsc3PlpTuningInfo"
.end annotation


# instance fields
.field private final mIsLocked:Z

.field private final mPlpId:I

.field private final mUec:I


# direct methods
.method private constructor <init>(IZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mPlpId:I

    iput-boolean p2, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mIsLocked:Z

    iput p3, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mUec:I

    return-void
.end method


# virtual methods
.method public getPlpId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mPlpId:I

    return v0
.end method

.method public getUec()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mUec:I

    return v0
.end method

.method public isLocked()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mIsLocked:Z

    return v0
.end method
