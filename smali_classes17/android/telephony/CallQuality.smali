.class public final Landroid/telephony/CallQuality;
.super Ljava/lang/Object;
.source "CallQuality.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CallQuality$CallQualityLevel;
    }
.end annotation


# static fields
.field public static final CALL_QUALITY_BAD:I = 0x4

.field public static final CALL_QUALITY_EXCELLENT:I = 0x0

.field public static final CALL_QUALITY_FAIR:I = 0x2

.field public static final CALL_QUALITY_GOOD:I = 0x1

.field public static final CALL_QUALITY_NOT_AVAILABLE:I = 0x5

.field public static final CALL_QUALITY_POOR:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CallQuality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAverageRelativeJitter:I

.field private mAverageRoundTripTime:I

.field private mCallDuration:I

.field private mCodecType:I

.field private mDownlinkCallQualityLevel:I

.field private mMaxRelativeJitter:I

.field private mNumRtpPacketsNotReceived:I

.field private mNumRtpPacketsReceived:I

.field private mNumRtpPacketsTransmitted:I

.field private mNumRtpPacketsTransmittedLost:I

.field private mRtpInactivityDetected:Z

.field private mRxSilenceDetected:Z

.field private mTxSilenceDetected:Z

.field private mUplinkCallQualityLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CallQuality$1;

    invoke-direct {v0}, Landroid/telephony/CallQuality$1;-><init>()V

    sput-object v0, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIII)V
    .registers 27

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v14}, Landroid/telephony/CallQuality;-><init>(IIIIIIIIIIIZZZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIZZZ)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    iput p2, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    iput p3, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    iput p4, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    iput p5, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    iput p6, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    iput p7, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    iput p8, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    iput p9, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    iput p10, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    iput p11, p0, Landroid/telephony/CallQuality;->mCodecType:I

    iput-boolean p12, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    iput-boolean p13, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    iput-boolean p14, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mCodecType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6f

    instance-of v1, p1, Landroid/telephony/CallQuality;

    if-eqz v1, :cond_6f

    invoke-virtual {p0}, Landroid/telephony/CallQuality;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_12

    goto :goto_6f

    :cond_12
    const/4 v1, 0x1

    if-ne p0, p1, :cond_16

    return v1

    :cond_16
    move-object v2, p1

    check-cast v2, Landroid/telephony/CallQuality;

    iget v3, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    iget v4, v2, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    if-ne v3, v4, :cond_6e

    iget v3, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    iget v4, v2, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    if-ne v3, v4, :cond_6e

    iget v3, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    iget v4, v2, Landroid/telephony/CallQuality;->mCallDuration:I

    if-ne v3, v4, :cond_6e

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    if-ne v3, v4, :cond_6e

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    if-ne v3, v4, :cond_6e

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    if-ne v3, v4, :cond_6e

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    if-ne v3, v4, :cond_6e

    iget v3, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    iget v4, v2, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    if-ne v3, v4, :cond_6e

    iget v3, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    iget v4, v2, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    if-ne v3, v4, :cond_6e

    iget v3, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    iget v4, v2, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    if-ne v3, v4, :cond_6e

    iget v3, p0, Landroid/telephony/CallQuality;->mCodecType:I

    iget v4, v2, Landroid/telephony/CallQuality;->mCodecType:I

    if-ne v3, v4, :cond_6e

    iget-boolean v3, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    iget-boolean v4, v2, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    if-ne v3, v4, :cond_6e

    iget-boolean v3, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    iget-boolean v4, v2, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    if-ne v3, v4, :cond_6e

    iget-boolean v3, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    iget-boolean v4, v2, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    if-ne v3, v4, :cond_6e

    move v0, v1

    :cond_6e
    return v0

    :cond_6f
    :goto_6f
    return v0
.end method

.method public getAverageRelativeJitter()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    return v0
.end method

.method public getAverageRoundTripTime()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    return v0
.end method

.method public getCallDuration()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    return v0
.end method

.method public getCodecType()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mCodecType:I

    return v0
.end method

.method public getDownlinkCallQualityLevel()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    return v0
.end method

.method public getMaxRelativeJitter()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    return v0
.end method

.method public getNumRtpPacketsNotReceived()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    return v0
.end method

.method public getNumRtpPacketsReceived()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    return v0
.end method

.method public getNumRtpPacketsTransmitted()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    return v0
.end method

.method public getNumRtpPacketsTransmittedLost()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    return v0
.end method

.method public getUplinkCallQualityLevel()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mCodecType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isIncomingSilenceDetectedAtCallSetup()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    return v0
.end method

.method public isOutgoingSilenceDetectedAtCallSetup()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    return v0
.end method

.method public isRtpInactivityDetected()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallQuality: {downlinkCallQualityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uplinkCallQualityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numRtpPacketsTransmitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numRtpPacketsReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numRtpPacketsTransmittedLost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numRtpPacketsNotReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " averageRelativeJitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxRelativeJitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " averageRoundTripTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " codecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallQuality;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rtpInactivityDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " txSilenceDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rxSilenceDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
