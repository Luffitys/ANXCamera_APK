.class public final Landroid/telephony/CellSignalStrengthWcdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthWcdma$LevelCalculationMethod;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final DEFAULT_LEVEL_CALCULATION_METHOD:Ljava/lang/String; = "rssi"

.field public static final LEVEL_CALCULATION_METHOD_RSCP:Ljava/lang/String; = "rscp"

.field public static final LEVEL_CALCULATION_METHOD_RSSI:Ljava/lang/String; = "rssi"

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthWcdma"

.field private static final WCDMA_RSCP_GOOD:I = -0x5f

.field private static final WCDMA_RSCP_GREAT:I = -0x55

.field private static final WCDMA_RSCP_MAX:I = -0x18

.field private static final WCDMA_RSCP_MIN:I = -0x78

.field private static final WCDMA_RSCP_MODERATE:I = -0x69

.field private static final WCDMA_RSCP_POOR:I = -0x73

.field private static final WCDMA_RSSI_GOOD:I = -0x57

.field private static final WCDMA_RSSI_GREAT:I = -0x4d

.field private static final WCDMA_RSSI_MAX:I = -0x33

.field private static final WCDMA_RSSI_MIN:I = -0x71

.field private static final WCDMA_RSSI_MODERATE:I = -0x61

.field private static final WCDMA_RSSI_POOR:I = -0x6b

.field private static final sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

.field private static final sRscpThresholds:[I

.field private static final sRssiThresholds:[I


# instance fields
.field private mBitErrorRate:I

.field private mEcNo:I

.field private mLevel:I

.field private mRscp:I

.field private mRssi:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_1e

    sput-object v1, Landroid/telephony/CellSignalStrengthWcdma;->sRssiThresholds:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_1e
    .array-data 4
        -0x6b
        -0x61
        -0x57
        -0x4d
    .end array-data

    :array_2a
    .array-data 4
        -0x73
        -0x69
        -0x5f
        -0x55
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 8

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/16 v2, 0x63

    invoke-static {p2, v0, v1, v2}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(IIII)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    const/16 v0, -0x78

    const/16 v1, -0x18

    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const/4 v0, 0x1

    invoke-static {p4, v1, v0}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_0/WcdmaSignalStrength;)V
    .registers 5

    iget v0, p1, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->signalStrength:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getRssiDbmFromAsu(I)I

    move-result v0

    iget v1, p1, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->bitErrorRate:I

    const v2, 0x7fffffff

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(IIII)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    if-ne v0, v2, :cond_19

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    if-ne v0, v2, :cond_19

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    :cond_19
    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_2/WcdmaSignalStrength;)V
    .registers 6

    iget-object v0, p1, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->base:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v0, v0, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->signalStrength:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getRssiDbmFromAsu(I)I

    move-result v0

    iget-object v1, p1, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->base:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v1, v1, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->bitErrorRate:I

    iget v2, p1, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->rscp:I

    invoke-static {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getRscpDbmFromAsu(I)I

    move-result v2

    iget v3, p1, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->ecno:I

    invoke-static {v3}, Landroid/telephony/CellSignalStrengthWcdma;->getEcNoDbFromAsu(I)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(IIII)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_29

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    if-ne v0, v1, :cond_29

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    :cond_29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mMiuiLevel:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthWcdma$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthWcdma;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;->copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "CellSignalStrengthWcdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "CellSignalStrengthWcdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->copy()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthWcdma;
    .registers 2

    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V
    .registers 3

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mMiuiLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mMiuiLevel:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/telephony/CellSignalStrengthWcdma;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthWcdma;

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    if-ne v2, v3, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method public getAsuLevel()I
    .registers 3

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_c

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuFromRssiDbm(I)I

    move-result v0

    return v0

    :cond_c
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuFromRscpDbm(I)I

    move-result v0

    return v0
.end method

.method public getBitErrorRate()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    return v0
.end method

.method public getDbm()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    return v0
.end method

.method public getEcNo()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return v0
.end method

.method public getRscp()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    return v0
.end method

.method public getRssi()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    sget-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthWcdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setDefaultValues()V
    .registers 2

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mMiuiLevel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthWcdma: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ecno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " miuiLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mMiuiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 11

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-static {p1, p2, v0}, Landroid/telephony/MiuiCellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mMiuiLevel:I

    const-string/jumbo v0, "rssi"

    if-nez p1, :cond_13

    const-string/jumbo v1, "rssi"

    sget-object v2, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    goto :goto_32

    :cond_13
    const-string/jumbo v1, "wcdma_default_signal_strength_measurement_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string/jumbo v1, "rssi"

    :cond_23
    const-string/jumbo v2, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_30

    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_32

    :cond_30
    sget-object v2, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    :cond_32
    :goto_32
    const/4 v3, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x358e6e

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v4, v5, :cond_4c

    const v5, 0x359057

    if-eq v4, v5, :cond_44

    :cond_43
    goto :goto_57

    :cond_44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v6

    goto :goto_58

    :cond_4c
    const-string/jumbo v0, "rscp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v7

    goto :goto_58

    :goto_57
    const/4 v0, -0x1

    :goto_58
    if-eqz v0, :cond_90

    if-eq v0, v6, :cond_70

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Level Calculation Method for CellSignalStrengthWcdma = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthWcdma;->loge(Ljava/lang/String;)V

    :cond_70
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    const/16 v4, -0x71

    if-lt v0, v4, :cond_8d

    const/16 v4, -0x33

    if-le v0, v4, :cond_7b

    goto :goto_8d

    :cond_7b
    :goto_7b
    if-lez v3, :cond_8a

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    sget-object v4, Landroid/telephony/CellSignalStrengthWcdma;->sRssiThresholds:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    if-ge v0, v4, :cond_8a

    add-int/lit8 v3, v3, -0x1

    goto :goto_7b

    :cond_8a
    iput v3, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return-void

    :cond_8d
    :goto_8d
    iput v7, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return-void

    :cond_90
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const/16 v4, -0x78

    if-lt v0, v4, :cond_ab

    const/16 v4, -0x18

    if-le v0, v4, :cond_9b

    goto :goto_ab

    :cond_9b
    :goto_9b
    if-lez v3, :cond_a8

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    if-ge v0, v4, :cond_a8

    add-int/lit8 v3, v3, -0x1

    goto :goto_9b

    :cond_a8
    iput v3, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return-void

    :cond_ab
    :goto_ab
    iput v7, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mMiuiLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
