.class public final Landroid/telephony/ModemActivityInfo;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ModemActivityInfo$TransmitPower;,
        Landroid/telephony/ModemActivityInfo$TxPowerLevel;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ModemActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_POWER_LEVELS:I = 0x5

.field public static final TX_POWER_LEVEL_0:I = 0x0

.field public static final TX_POWER_LEVEL_1:I = 0x1

.field public static final TX_POWER_LEVEL_2:I = 0x2

.field public static final TX_POWER_LEVEL_3:I = 0x3

.field public static final TX_POWER_LEVEL_4:I = 0x4

.field private static final TX_POWER_RANGES:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIdleTimeMs:I

.field private mRxTimeMs:I

.field private mSleepTimeMs:I

.field private mTimestamp:J

.field private mTransmitPowerInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ModemActivityInfo$TransmitPower;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Landroid/util/Range;

    new-instance v2, Landroid/util/Range;

    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v2, v0, v4

    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v5, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Landroid/util/Range;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v1, 0x2

    aput-object v2, v0, v1

    new-instance v1, Landroid/util/Range;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroid/util/Range;

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/telephony/ModemActivityInfo;->TX_POWER_RANGES:[Landroid/util/Range;

    new-instance v0, Landroid/telephony/ModemActivityInfo$1;

    invoke-direct {v0}, Landroid/telephony/ModemActivityInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JII[II)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTransmitPowerInfo:Ljava/util/List;

    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-direct {p0, p5}, Landroid/telephony/ModemActivityInfo;->populateTransmitPowerRange([I)V

    iput p6, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    return-void
.end method

.method private isEmpty()Z
    .registers 5

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTransmitPowerInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ModemActivityInfo$TransmitPower;

    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo$TransmitPower;->getTimeInMillis()I

    move-result v3

    if-eqz v3, :cond_1c

    return v2

    :cond_1c
    goto :goto_8

    :cond_1d
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()I

    move-result v0

    if-nez v0, :cond_31

    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    nop

    :goto_32
    return v2
.end method

.method private populateTransmitPowerRange([I)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTransmitPowerInfo:Ljava/util/List;

    new-instance v2, Landroid/telephony/ModemActivityInfo$TransmitPower;

    sget-object v3, Landroid/telephony/ModemActivityInfo;->TX_POWER_RANGES:[Landroid/util/Range;

    aget-object v3, v3, v0

    aget v4, p1, v0

    invoke-direct {v2, p0, v3, v4}, Landroid/telephony/ModemActivityInfo$TransmitPower;-><init>(Landroid/telephony/ModemActivityInfo;Landroid/util/Range;I)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    :goto_1c
    if-ge v0, v2, :cond_30

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTransmitPowerInfo:Ljava/util/List;

    new-instance v3, Landroid/telephony/ModemActivityInfo$TransmitPower;

    sget-object v4, Landroid/telephony/ModemActivityInfo;->TX_POWER_RANGES:[Landroid/util/Range;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Landroid/telephony/ModemActivityInfo$TransmitPower;-><init>(Landroid/telephony/ModemActivityInfo;Landroid/util/Range;I)V

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getIdleTimeMillis()I
    .registers 2

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    return v0
.end method

.method public getReceiveTimeMillis()I
    .registers 2

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    return v0
.end method

.method public getSleepTimeMillis()I
    .registers 2

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getTransmitPowerInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ModemActivityInfo$TransmitPower;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTransmitPowerInfo:Ljava/util/List;

    return-object v0
.end method

.method public getTransmitTimeMillis()[I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Landroid/telephony/ModemActivityInfo;->mTransmitPowerInfo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ModemActivityInfo$TransmitPower;

    invoke-virtual {v2}, Landroid/telephony/ModemActivityInfo$TransmitPower;->getTimeInMillis()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_18
    return-object v0
.end method

.method public isValid()Z
    .registers 5

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTransmitPowerInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ModemActivityInfo$TransmitPower;

    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo$TransmitPower;->getTimeInMillis()I

    move-result v3

    if-gez v3, :cond_1c

    return v2

    :cond_1c
    goto :goto_8

    :cond_1d
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v0

    if-ltz v0, :cond_37

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v0

    if-ltz v0, :cond_37

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()I

    move-result v0

    if-ltz v0, :cond_37

    invoke-direct {p0}, Landroid/telephony/ModemActivityInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    const/4 v2, 0x1

    goto :goto_38

    :cond_37
    nop

    :goto_38
    return v2
.end method

.method public setIdleTimeMillis(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    return-void
.end method

.method public setReceiveTimeMillis(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    return-void
.end method

.method public setSleepTimeMillis(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    return-void
.end method

.method public setTransmitTimeMillis([I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ModemActivityInfo;->populateTransmitPowerRange([I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModemActivityInfo{ mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSleepTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTransmitPowerInfo[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTransmitPowerInfo:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_10
    const/4 v1, 0x5

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTransmitPowerInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ModemActivityInfo$TransmitPower;

    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo$TransmitPower;->getTimeInMillis()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_25
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
