.class public abstract Landroid/telephony/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellInfo$CellConnectionStatus;,
        Landroid/telephony/CellInfo$Type;
    }
.end annotation


# static fields
.field public static final CONNECTION_NONE:I = 0x0

.field public static final CONNECTION_PRIMARY_SERVING:I = 0x1

.field public static final CONNECTION_SECONDARY_SERVING:I = 0x2

.field public static final CONNECTION_UNKNOWN:I = 0x7fffffff

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_TYPE_ANTENNA:I = 0x1

.field public static final TIMESTAMP_TYPE_JAVA_RIL:I = 0x4

.field public static final TIMESTAMP_TYPE_MODEM:I = 0x2

.field public static final TIMESTAMP_TYPE_OEM_RIL:I = 0x3

.field public static final TIMESTAMP_TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_CDMA:I = 0x2

.field public static final TYPE_GSM:I = 0x1

.field public static final TYPE_LTE:I = 0x3

.field public static final TYPE_NR:I = 0x6

.field public static final TYPE_TDSCDMA:I = 0x5

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_WCDMA:I = 0x4

.field public static final UNAVAILABLE:I = 0x7fffffff

.field public static final UNAVAILABLE_LONG:J = 0x7fffffffffffffffL


# instance fields
.field private mCellConnectionStatus:I

.field private mRegistered:Z

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellInfo$1;

    invoke-direct {v0}, Landroid/telephony/CellInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/hardware/radio/V1_0/CellInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Landroid/hardware/radio/V1_0/CellInfo;->registered:Z

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iget-wide v0, p1, Landroid/hardware/radio/V1_0/CellInfo;->timeStamp:J

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/hardware/radio/V1_2/CellInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iget-wide v0, p1, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iget v0, p1, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/hardware/radio/V1_4/CellInfo;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Landroid/hardware/radio/V1_4/CellInfo;->isRegistered:Z

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iput-wide p2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iget v0, p1, Landroid/hardware/radio/V1_4/CellInfo;->connectionStatus:I

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/hardware/radio/V1_5/CellInfo;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Landroid/hardware/radio/V1_5/CellInfo;->registered:Z

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iput-wide p2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iget v0, p1, Landroid/hardware/radio/V1_5/CellInfo;->connectionStatus:I

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/telephony/CellInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Landroid/telephony/CellInfo;->mRegistered:Z

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iget-wide v0, p1, Landroid/telephony/CellInfo;->mTimeStamp:J

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iget v0, p1, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return-void
.end method

.method public static create(Landroid/hardware/radio/V1_0/CellInfo;)Landroid/telephony/CellInfo;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    iget v1, p0, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_28

    const/4 v2, 0x3

    if-eq v1, v2, :cond_22

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1c

    const/4 v2, 0x5

    if-eq v1, v2, :cond_16

    return-object v0

    :cond_16
    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoTdscdma;-><init>(Landroid/hardware/radio/V1_0/CellInfo;)V

    return-object v0

    :cond_1c
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoWcdma;-><init>(Landroid/hardware/radio/V1_0/CellInfo;)V

    return-object v0

    :cond_22
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoLte;-><init>(Landroid/hardware/radio/V1_0/CellInfo;)V

    return-object v0

    :cond_28
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/hardware/radio/V1_0/CellInfo;)V

    return-object v0

    :cond_2e
    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoGsm;-><init>(Landroid/hardware/radio/V1_0/CellInfo;)V

    return-object v0
.end method

.method public static create(Landroid/hardware/radio/V1_2/CellInfo;)Landroid/telephony/CellInfo;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    iget v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_28

    const/4 v2, 0x3

    if-eq v1, v2, :cond_22

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1c

    const/4 v2, 0x5

    if-eq v1, v2, :cond_16

    return-object v0

    :cond_16
    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoTdscdma;-><init>(Landroid/hardware/radio/V1_2/CellInfo;)V

    return-object v0

    :cond_1c
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoWcdma;-><init>(Landroid/hardware/radio/V1_2/CellInfo;)V

    return-object v0

    :cond_22
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoLte;-><init>(Landroid/hardware/radio/V1_2/CellInfo;)V

    return-object v0

    :cond_28
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/hardware/radio/V1_2/CellInfo;)V

    return-object v0

    :cond_2e
    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoGsm;-><init>(Landroid/hardware/radio/V1_2/CellInfo;)V

    return-object v0
.end method

.method public static create(Landroid/hardware/radio/V1_4/CellInfo;J)Landroid/telephony/CellInfo;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v1}, Landroid/hardware/radio/V1_4/CellInfo$Info;->getDiscriminator()B

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_34

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_28

    const/4 v2, 0x4

    if-eq v1, v2, :cond_22

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1c

    return-object v0

    :cond_1c
    new-instance v0, Landroid/telephony/CellInfoNr;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoNr;-><init>(Landroid/hardware/radio/V1_4/CellInfo;J)V

    return-object v0

    :cond_22
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoLte;-><init>(Landroid/hardware/radio/V1_4/CellInfo;J)V

    return-object v0

    :cond_28
    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoTdscdma;-><init>(Landroid/hardware/radio/V1_4/CellInfo;J)V

    return-object v0

    :cond_2e
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoWcdma;-><init>(Landroid/hardware/radio/V1_4/CellInfo;J)V

    return-object v0

    :cond_34
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/hardware/radio/V1_4/CellInfo;J)V

    return-object v0

    :cond_3a
    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoGsm;-><init>(Landroid/hardware/radio/V1_4/CellInfo;J)V

    return-object v0
.end method

.method public static create(Landroid/hardware/radio/V1_5/CellInfo;J)Landroid/telephony/CellInfo;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v1}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_34

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_28

    const/4 v2, 0x4

    if-eq v1, v2, :cond_22

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1c

    return-object v0

    :cond_1c
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/hardware/radio/V1_5/CellInfo;J)V

    return-object v0

    :cond_22
    new-instance v0, Landroid/telephony/CellInfoNr;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoNr;-><init>(Landroid/hardware/radio/V1_5/CellInfo;J)V

    return-object v0

    :cond_28
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoLte;-><init>(Landroid/hardware/radio/V1_5/CellInfo;J)V

    return-object v0

    :cond_2e
    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoTdscdma;-><init>(Landroid/hardware/radio/V1_5/CellInfo;J)V

    return-object v0

    :cond_34
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoWcdma;-><init>(Landroid/hardware/radio/V1_5/CellInfo;J)V

    return-object v0

    :cond_3a
    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/CellInfoGsm;-><init>(Landroid/hardware/radio/V1_5/CellInfo;J)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/telephony/CellInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellInfo;

    iget v3, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    iget v4, v1, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    if-ne v3, v4, :cond_22

    iget-boolean v3, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iget-boolean v4, v1, Landroid/telephony/CellInfo;->mRegistered:Z

    if-ne v3, v4, :cond_22

    iget-wide v3, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iget-wide v5, v1, Landroid/telephony/CellInfo;->mTimeStamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public getCellConnectionStatus()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return v0
.end method

.method public abstract getCellIdentity()Landroid/telephony/CellIdentity;
.end method

.method public abstract getCellSignalStrength()Landroid/telephony/CellSignalStrength;
.end method

.method public getTimeStamp()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-wide v0
.end method

.method public getTimestampMillis()J
    .registers 5

    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRegistered()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    return v0
.end method

.method public sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCellConnectionStatus(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return-void
.end method

.method public setRegistered(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    iput-wide p1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v1, :cond_12

    const-string v1, "YES"

    goto :goto_14

    :cond_12
    const-string v1, "NO"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " mCellConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method

.method protected writeToParcel(Landroid/os/Parcel;II)V
    .registers 6

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
