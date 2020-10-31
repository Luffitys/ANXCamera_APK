.class public final Landroid/telephony/PhysicalChannelConfig;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhysicalChannelConfig$Builder;,
        Landroid/telephony/PhysicalChannelConfig$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final CONNECTION_PRIMARY_SERVING:I = 0x1

.field public static final CONNECTION_SECONDARY_SERVING:I = 0x2

.field public static final CONNECTION_UNKNOWN:I = 0x7fffffff

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCellBandwidthDownlinkKhz:I

.field private mCellConnectionStatus:I

.field private mChannelNumber:I

.field private mContextIds:[I

.field private mFrequencyRange:I

.field private mPhysicalCellId:I

.field private mRat:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/PhysicalChannelConfig$1;

    invoke-direct {v0}, Landroid/telephony/PhysicalChannelConfig$1;-><init>()V

    sput-object v0, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mRat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mChannelNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PhysicalChannelConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/PhysicalChannelConfig$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/telephony/PhysicalChannelConfig$Builder;->mCellConnectionStatus:I
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->access$100(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    # getter for: Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthDownlinkKhz:I
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->access$200(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    # getter for: Landroid/telephony/PhysicalChannelConfig$Builder;->mRat:I
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->access$300(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mRat:I

    # getter for: Landroid/telephony/PhysicalChannelConfig$Builder;->mChannelNumber:I
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->access$400(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mChannelNumber:I

    # getter for: Landroid/telephony/PhysicalChannelConfig$Builder;->mFrequencyRange:I
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->access$500(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    # getter for: Landroid/telephony/PhysicalChannelConfig$Builder;->mContextIds:[I
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->access$600(Landroid/telephony/PhysicalChannelConfig$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    # getter for: Landroid/telephony/PhysicalChannelConfig$Builder;->mPhysicalCellId:I
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->access$700(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/telephony/PhysicalChannelConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/telephony/PhysicalChannelConfig$Builder;)V

    return-void
.end method

.method private getConnectionStatusString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    const-string v0, "Unknown"

    return-object v0

    :cond_29
    const-string v0, "SecondaryServing"

    return-object v0

    :cond_2c
    const-string v0, "PrimaryServing"

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/telephony/PhysicalChannelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/PhysicalChannelConfig;

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mRat:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mRat:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mChannelNumber:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mChannelNumber:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    iget-object v4, v1, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v2

    :goto_3d
    return v0
.end method

.method public getCellBandwidthDownlink()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    return v0
.end method

.method public getChannelNumber()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mChannelNumber:I

    return v0
.end method

.method public getConnectionStatus()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    return v0
.end method

.method public getContextIds()[I
    .registers 2

    iget-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    return-object v0
.end method

.method public getFrequencyRange()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    return v0
.end method

.method public getPhysicalCellId()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    return v0
.end method

.method public getRat()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mRat:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mRat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mChannelNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mCellBandwidthDownlinkKhz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mRat:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mChannelNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mChannelNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mContextIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mPhysicalCellId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v1, :cond_60

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_62

    :cond_60
    const-string v1, "***"

    :goto_62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
