.class public Landroid/net/LinkQualityInfo;
.super Ljava/lang/Object;
.source "LinkQualityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LinkQualityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NORMALIZED_MAX_SIGNAL_STRENGTH:I = 0x63

.field public static final NORMALIZED_MIN_SIGNAL_STRENGTH:I = 0x0

.field public static final NORMALIZED_SIGNAL_STRENGTH_RANGE:I = 0x64

.field protected static final OBJECT_TYPE_LINK_QUALITY_INFO:I = 0x1

.field protected static final OBJECT_TYPE_MOBILE_LINK_QUALITY_INFO:I = 0x3

.field protected static final OBJECT_TYPE_WIFI_LINK_QUALITY_INFO:I = 0x2

.field public static final UNKNOWN_INT:I = 0x7fffffff

.field public static final UNKNOWN_LONG:J = 0x7fffffffffffffffL


# instance fields
.field private mDataSampleDuration:I

.field private mLastDataSampleTime:J

.field private mNetworkType:I

.field private mNormalizedSignalStrength:I

.field private mPacketCount:J

.field private mPacketErrorCount:J

.field private mTheoreticalLatency:I

.field private mTheoreticalRxBandwidth:I

.field private mTheoreticalTxBandwidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/LinkQualityInfo$1;

    invoke-direct {v0}, Landroid/net/LinkQualityInfo$1;-><init>()V

    sput-object v0, Landroid/net/LinkQualityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    iput v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDataSampleDuration()I
    .registers 2

    iget v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return v0
.end method

.method public getLastDataSampleTime()J
    .registers 3

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    return-wide v0
.end method

.method public getNetworkType()I
    .registers 2

    iget v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    return v0
.end method

.method public getNormalizedSignalStrength()I
    .registers 2

    iget v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    return v0
.end method

.method public getPacketCount()J
    .registers 3

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    return-wide v0
.end method

.method public getPacketErrorCount()J
    .registers 3

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    return-wide v0
.end method

.method public getTheoreticalLatency()I
    .registers 2

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    return v0
.end method

.method public getTheoreticalRxBandwidth()I
    .registers 2

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    return v0
.end method

.method public getTheoreticalTxBandwidth()I
    .registers 2

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    return v0
.end method

.method protected initializeFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return-void
.end method

.method public setDataSampleDuration(I)V
    .registers 2

    iput p1, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return-void
.end method

.method public setLastDataSampleTime(J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    return-void
.end method

.method public setNetworkType(I)V
    .registers 2

    iput p1, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    return-void
.end method

.method public setNormalizedSignalStrength(I)V
    .registers 2

    iput p1, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    return-void
.end method

.method public setPacketCount(J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    return-void
.end method

.method public setPacketErrorCount(J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    return-void
.end method

.method public setTheoreticalLatency(I)V
    .registers 2

    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    return-void
.end method

.method public setTheoreticalRxBandwidth(I)V
    .registers 2

    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    return-void
.end method

.method public setTheoreticalTxBandwidth(I)V
    .registers 2

    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;II)V
    .registers 6

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
