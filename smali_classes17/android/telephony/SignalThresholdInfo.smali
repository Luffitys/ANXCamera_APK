.class public Landroid/telephony/SignalThresholdInfo;
.super Ljava/lang/Object;
.source "SignalThresholdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalThresholdInfo$SignalMeasurementType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HYSTERESIS_DB_DISABLED:I = 0x0

.field public static final HYSTERESIS_MS_DISABLED:I = 0x0

.field public static final SIGNAL_RSCP:I = 0x2

.field public static final SIGNAL_RSRP:I = 0x3

.field public static final SIGNAL_RSRQ:I = 0x4

.field public static final SIGNAL_RSSI:I = 0x1

.field public static final SIGNAL_RSSNR:I = 0x5

.field public static final SIGNAL_SSRSRP:I = 0x6

.field public static final SIGNAL_SSRSRQ:I = 0x7

.field public static final SIGNAL_SSSINR:I = 0x8


# instance fields
.field private mHysteresisDb:I

.field private mHysteresisMs:I

.field private mIsEnabled:Z

.field private mSignalMeasurement:I

.field private mThresholds:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/SignalThresholdInfo$1;

    invoke-direct {v0}, Landroid/telephony/SignalThresholdInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalThresholdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[IZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    iput p1, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurement:I

    const/4 v1, 0x0

    if-gez p2, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    move v2, p2

    :goto_11
    iput v2, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    if-gez p3, :cond_16

    goto :goto_17

    :cond_16
    move v1, p3

    :goto_17
    iput v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    if-nez p4, :cond_1c

    goto :goto_22

    :cond_1c
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_22
    iput-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    iput-boolean p5, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurement:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/SignalThresholdInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/SignalThresholdInfo;-><init>(Landroid/os/Parcel;)V

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/telephony/SignalThresholdInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/SignalThresholdInfo;

    iget v3, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurement:I

    iget v4, v1, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurement:I

    if-ne v3, v4, :cond_30

    iget v3, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    iget v4, v1, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    if-ne v3, v4, :cond_30

    iget v3, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    iget v4, v1, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    iget-object v4, v1, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-boolean v3, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    iget-boolean v4, v1, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    if-ne v3, v4, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    return v0
.end method

.method public getHysteresisDb()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    return v0
.end method

.method public getHysteresisMs()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    return v0
.end method

.method public getSignalMeasurement()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurement:I

    return v0
.end method

.method public getThresholds()[I
    .registers 2

    iget-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_c
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurement:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SignalThresholdInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mSignalMeasurement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurement:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mHysteresisMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurement:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mHysteresisDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-boolean v0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
