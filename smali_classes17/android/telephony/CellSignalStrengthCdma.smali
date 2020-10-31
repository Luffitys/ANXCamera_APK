.class public final Landroid/telephony/CellSignalStrengthCdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"

.field private static final sInvalid:Landroid/telephony/CellSignalStrengthCdma;


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->sInvalid:Landroid/telephony/CellSignalStrengthCdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 10

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/16 v0, -0x78

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    const/16 v2, -0xa0

    invoke-static {p2, v2, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v3

    iput v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-static {p4, v2, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    const/16 v0, 0x8

    invoke-static {p5, v1, v0}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthCdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)V
    .registers 10

    iget v0, p1, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->dbm:I

    neg-int v2, v0

    iget v0, p1, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->ecio:I

    neg-int v3, v0

    iget v0, p2, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    neg-int v4, v0

    iget v0, p2, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    neg-int v5, v0

    iget v6, p2, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/telephony/CellSignalStrengthCdma;-><init>(IIIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mMiuiLevel:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;->copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "CellSignalStrengthCdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthCdma;
    .registers 2

    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 3

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mMiuiLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mMiuiLevel:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/telephony/CellSignalStrengthCdma;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    if-ne v2, v3, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method public getAsuLevel()I
    .registers 7

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    const/16 v2, -0x64

    const/16 v3, -0x5a

    const v4, 0x7fffffff

    if-ne v0, v4, :cond_14

    const/16 v5, 0x63

    goto :goto_32

    :cond_14
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1b

    const/16 v5, 0x10

    goto :goto_32

    :cond_1b
    const/16 v5, -0x52

    if-lt v0, v5, :cond_22

    const/16 v5, 0x8

    goto :goto_32

    :cond_22
    if-lt v0, v3, :cond_26

    const/4 v5, 0x4

    goto :goto_32

    :cond_26
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2c

    const/4 v5, 0x2

    goto :goto_32

    :cond_2c
    if-lt v0, v2, :cond_30

    const/4 v5, 0x1

    goto :goto_32

    :cond_30
    const/16 v5, 0x63

    :goto_32
    if-ne v1, v4, :cond_37

    const/16 v2, 0x63

    goto :goto_55

    :cond_37
    if-lt v1, v3, :cond_3c

    const/16 v2, 0x10

    goto :goto_55

    :cond_3c
    if-lt v1, v2, :cond_41

    const/16 v2, 0x8

    goto :goto_55

    :cond_41
    const/16 v2, -0x73

    if-lt v1, v2, :cond_47

    const/4 v2, 0x4

    goto :goto_55

    :cond_47
    const/16 v2, -0x82

    if-lt v1, v2, :cond_4d

    const/4 v2, 0x2

    goto :goto_55

    :cond_4d
    const/16 v2, -0x96

    if-lt v1, v2, :cond_53

    const/4 v2, 0x1

    goto :goto_55

    :cond_53
    const/16 v2, 0x63

    :goto_55
    if-ge v5, v2, :cond_59

    move v3, v5

    goto :goto_5a

    :cond_59
    move v3, v2

    :goto_5a
    return v3
.end method

.method public getCdmaDbm()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .registers 6

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_f

    const/4 v3, 0x0

    goto :goto_28

    :cond_f
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_15

    const/4 v3, 0x4

    goto :goto_28

    :cond_15
    const/16 v3, -0x55

    if-lt v0, v3, :cond_1b

    const/4 v3, 0x3

    goto :goto_28

    :cond_1b
    const/16 v3, -0x5f

    if-lt v0, v3, :cond_21

    const/4 v3, 0x2

    goto :goto_28

    :cond_21
    const/16 v3, -0x64

    if-lt v0, v3, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    if-ne v1, v2, :cond_2c

    const/4 v2, 0x0

    goto :goto_45

    :cond_2c
    const/16 v2, -0x5a

    if-lt v1, v2, :cond_32

    const/4 v2, 0x4

    goto :goto_45

    :cond_32
    const/16 v2, -0x6e

    if-lt v1, v2, :cond_38

    const/4 v2, 0x3

    goto :goto_45

    :cond_38
    const/16 v2, -0x82

    if-lt v1, v2, :cond_3e

    const/4 v2, 0x2

    goto :goto_45

    :cond_3e
    const/16 v2, -0x96

    if-lt v1, v2, :cond_44

    const/4 v2, 0x1

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    :goto_45
    if-ge v3, v2, :cond_49

    move v4, v3

    goto :goto_4a

    :cond_49
    move v4, v2

    :goto_4a
    return v4
.end method

.method public getDbm()I
    .registers 4

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v1

    const/16 v2, -0x78

    if-ne v1, v2, :cond_d

    return v0

    :cond_d
    if-ne v0, v2, :cond_10

    return v1

    :cond_10
    if-ge v0, v1, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    return v2
.end method

.method public getEvdoAsuLevel()I
    .registers 6

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    const/16 v2, -0x41

    if-lt v0, v2, :cond_f

    const/16 v2, 0x10

    goto :goto_2a

    :cond_f
    const/16 v2, -0x4b

    if-lt v0, v2, :cond_16

    const/16 v2, 0x8

    goto :goto_2a

    :cond_16
    const/16 v2, -0x55

    if-lt v0, v2, :cond_1c

    const/4 v2, 0x4

    goto :goto_2a

    :cond_1c
    const/16 v2, -0x5f

    if-lt v0, v2, :cond_22

    const/4 v2, 0x2

    goto :goto_2a

    :cond_22
    const/16 v2, -0x69

    if-lt v0, v2, :cond_28

    const/4 v2, 0x1

    goto :goto_2a

    :cond_28
    const/16 v2, 0x63

    :goto_2a
    const/4 v3, 0x7

    if-lt v1, v3, :cond_30

    const/16 v3, 0x10

    goto :goto_47

    :cond_30
    const/4 v3, 0x6

    if-lt v1, v3, :cond_36

    const/16 v3, 0x8

    goto :goto_47

    :cond_36
    const/4 v3, 0x5

    if-lt v1, v3, :cond_3b

    const/4 v3, 0x4

    goto :goto_47

    :cond_3b
    const/4 v3, 0x3

    if-lt v1, v3, :cond_40

    const/4 v3, 0x2

    goto :goto_47

    :cond_40
    const/4 v3, 0x1

    if-lt v1, v3, :cond_45

    const/4 v3, 0x1

    goto :goto_47

    :cond_45
    const/16 v3, 0x63

    :goto_47
    if-ge v2, v3, :cond_4b

    move v4, v2

    goto :goto_4c

    :cond_4b
    move v4, v3

    :goto_4c
    return v4
.end method

.method public getEvdoDbm()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .registers 6

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_f

    const/4 v3, 0x0

    goto :goto_28

    :cond_f
    const/16 v3, -0x41

    if-lt v0, v3, :cond_15

    const/4 v3, 0x4

    goto :goto_28

    :cond_15
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_1b

    const/4 v3, 0x3

    goto :goto_28

    :cond_1b
    const/16 v3, -0x5a

    if-lt v0, v3, :cond_21

    const/4 v3, 0x2

    goto :goto_28

    :cond_21
    const/16 v3, -0x69

    if-lt v0, v3, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    if-ne v1, v2, :cond_2c

    const/4 v2, 0x0

    goto :goto_41

    :cond_2c
    const/4 v2, 0x7

    if-lt v1, v2, :cond_31

    const/4 v2, 0x4

    goto :goto_41

    :cond_31
    const/4 v2, 0x5

    if-lt v1, v2, :cond_36

    const/4 v2, 0x3

    goto :goto_41

    :cond_36
    const/4 v2, 0x3

    if-lt v1, v2, :cond_3b

    const/4 v2, 0x2

    goto :goto_41

    :cond_3b
    const/4 v2, 0x1

    if-lt v1, v2, :cond_40

    const/4 v2, 0x1

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    if-ge v3, v2, :cond_45

    move v4, v3

    goto :goto_46

    :cond_45
    move v4, v2

    :goto_46
    return v4
.end method

.method public getEvdoSnr()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    sget-object v0, Landroid/telephony/CellSignalStrengthCdma;->sInvalid:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthCdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setCdmaDbm(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return-void
.end method

.method public setCdmaEcio(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return-void
.end method

.method public setDefaultValues()V
    .registers 2

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mMiuiLevel:I

    return-void
.end method

.method public setEvdoDbm(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return-void
.end method

.method public setEvdoEcio(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return-void
.end method

.method public setEvdoSnr(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthCdma: cdmaDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cdmaEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " miuiLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mMiuiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 10

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v5, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v6, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/telephony/MiuiCellSignalStrengthCdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;IIIII)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mMiuiLevel:I

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    goto :goto_33

    :cond_23
    if-nez v0, :cond_2c

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    goto :goto_33

    :cond_2c
    if-ge v0, v1, :cond_30

    move v2, v0

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    :goto_33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mMiuiLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
