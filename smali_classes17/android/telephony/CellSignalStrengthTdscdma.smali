.class public final Landroid/telephony/CellSignalStrengthTdscdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthTdscdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthTdscdma"

.field private static final TDSCDMA_RSCP_GOOD:I = -0x49

.field private static final TDSCDMA_RSCP_GREAT:I = -0x31

.field private static final TDSCDMA_RSCP_MAX:I = -0x18

.field private static final TDSCDMA_RSCP_MIN:I = -0x78

.field private static final TDSCDMA_RSCP_MODERATE:I = -0x61

.field private static final TDSCDMA_RSCP_POOR:I = -0x6e

.field private static final sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;


# instance fields
.field private mBitErrorRate:I

.field private mLevel:I

.field private mRscp:I

.field private mRssi:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthTdscdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/16 v2, 0x63

    invoke-static {p2, v0, v1, v2}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(IIII)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    const/16 v0, -0x78

    const/16 v1, -0x18

    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;)V
    .registers 4

    nop

    iget v0, p1, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->rscp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_c

    iget v0, p1, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->rscp:I

    neg-int v0, v0

    goto :goto_e

    :cond_c
    iget v0, p1, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->rscp:I

    :goto_e
    invoke-direct {p0, v1, v1, v0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(III)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    if-ne v0, v1, :cond_1c

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    :cond_1c
    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;)V
    .registers 5

    iget v0, p1, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->signalStrength:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getRssiDbmFromAsu(I)I

    move-result v0

    iget v1, p1, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->bitErrorRate:I

    iget v2, p1, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->rscp:I

    invoke-static {v2}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscpDbmFromAsu(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(III)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1f

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    :cond_1f
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mMiuiLevel:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthTdscdma$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthTdscdma;->copyFrom(Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "CellSignalStrengthTdscdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->copy()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthTdscdma;
    .registers 2

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .registers 3

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mMiuiLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mMiuiLevel:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    if-ne v2, v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public getAsuLevel()I
    .registers 3

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_c

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRscpDbm(I)I

    move-result v0

    return v0

    :cond_c
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    if-eq v0, v1, :cond_15

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRssiDbm(I)I

    move-result v0

    return v0

    :cond_15
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRscpDbm(I)I

    move-result v0

    return v0
.end method

.method public getBitErrorRate()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    return v0
.end method

.method public getDbm()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return v0
.end method

.method public getRscp()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    return v0
.end method

.method public getRssi()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    sget-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthTdscdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setDefaultValues()V
    .registers 2

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mMiuiLevel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthTdscdma: rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " miuiLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mMiuiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 6

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-static {p1, p2, v0, v1}, Landroid/telephony/MiuiCellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mMiuiLevel:I

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/4 v1, 0x0

    const/16 v2, -0x18

    if-le v0, v2, :cond_14

    iput v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_36

    :cond_14
    const/16 v2, -0x31

    if-lt v0, v2, :cond_1c

    const/4 v0, 0x4

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_36

    :cond_1c
    const/16 v2, -0x49

    if-lt v0, v2, :cond_24

    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_36

    :cond_24
    const/16 v2, -0x61

    if-lt v0, v2, :cond_2c

    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_36

    :cond_2c
    const/16 v2, -0x6e

    if-lt v0, v2, :cond_34

    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_36

    :cond_34
    iput v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    :goto_36
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mMiuiLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
