.class public Landroid/media/tv/tuner/frontend/FrontendStatus;
.super Ljava/lang/Object;
.source "FrontendStatus.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendModulation;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendStatusType;
    }
.end annotation


# static fields
.field public static final FRONTEND_STATUS_TYPE_AGC:I = 0xe

.field public static final FRONTEND_STATUS_TYPE_ATSC3_PLP_INFO:I = 0x15

.field public static final FRONTEND_STATUS_TYPE_BER:I = 0x2

.field public static final FRONTEND_STATUS_TYPE_DEMOD_LOCK:I = 0x0

.field public static final FRONTEND_STATUS_TYPE_EWBS:I = 0xd

.field public static final FRONTEND_STATUS_TYPE_FEC:I = 0x8

.field public static final FRONTEND_STATUS_TYPE_FREQ_OFFSET:I = 0x12

.field public static final FRONTEND_STATUS_TYPE_HIERARCHY:I = 0x13

.field public static final FRONTEND_STATUS_TYPE_LAYER_ERROR:I = 0x10

.field public static final FRONTEND_STATUS_TYPE_LNA:I = 0xf

.field public static final FRONTEND_STATUS_TYPE_LNB_VOLTAGE:I = 0xb

.field public static final FRONTEND_STATUS_TYPE_MER:I = 0x11

.field public static final FRONTEND_STATUS_TYPE_MODULATION:I = 0x9

.field public static final FRONTEND_STATUS_TYPE_PER:I = 0x3

.field public static final FRONTEND_STATUS_TYPE_PLP_ID:I = 0xc

.field public static final FRONTEND_STATUS_TYPE_PRE_BER:I = 0x4

.field public static final FRONTEND_STATUS_TYPE_RF_LOCK:I = 0x14

.field public static final FRONTEND_STATUS_TYPE_SIGNAL_QUALITY:I = 0x5

.field public static final FRONTEND_STATUS_TYPE_SIGNAL_STRENGTH:I = 0x6

.field public static final FRONTEND_STATUS_TYPE_SNR:I = 0x1

.field public static final FRONTEND_STATUS_TYPE_SPECTRAL:I = 0xa

.field public static final FRONTEND_STATUS_TYPE_SYMBOL_RATE:I = 0x7


# instance fields
.field private mAgc:Ljava/lang/Integer;

.field private mBer:Ljava/lang/Integer;

.field private mFreqOffset:Ljava/lang/Integer;

.field private mHierarchy:Ljava/lang/Integer;

.field private mInnerFec:Ljava/lang/Long;

.field private mInversion:Ljava/lang/Integer;

.field private mIsDemodLocked:Ljava/lang/Boolean;

.field private mIsEwbs:Ljava/lang/Boolean;

.field private mIsLayerErrors:[Z

.field private mIsLnaOn:Ljava/lang/Boolean;

.field private mIsRfLocked:Ljava/lang/Boolean;

.field private mLnbVoltage:Ljava/lang/Integer;

.field private mMer:Ljava/lang/Integer;

.field private mModulation:Ljava/lang/Integer;

.field private mPer:Ljava/lang/Integer;

.field private mPerBer:Ljava/lang/Integer;

.field private mPlpId:Ljava/lang/Integer;

.field private mPlpInfo:[Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;

.field private mSignalQuality:Ljava/lang/Integer;

.field private mSignalStrength:Ljava/lang/Integer;

.field private mSnr:Ljava/lang/Integer;

.field private mSymbolRate:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgc()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mAgc:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAtsc3PlpTuningInfo()[Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPlpInfo:[Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getBer()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mBer:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getFreqOffset()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mFreqOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getHierarchy()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mHierarchy:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getInnerFec()J
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mInnerFec:Ljava/lang/Long;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getLayerErrors()[Z
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsLayerErrors:[Z

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getLnbVoltage()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mLnbVoltage:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getMer()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mMer:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getModulation()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mModulation:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getPer()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPer:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getPerBer()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPerBer:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getPlpId()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPlpId:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getSignalQuality()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSignalQuality:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getSignalStrength()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSignalStrength:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getSnr()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSnr:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getSpectralInversion()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mInversion:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getSymbolRate()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSymbolRate:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public isDemodLocked()Z
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsDemodLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public isEwbs()Z
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsEwbs:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public isLnaOn()Z
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsLnaOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public isRfLocked()Z
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsRfLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
