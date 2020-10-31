.class public final Landroid/telephony/CellInfoGsm;
.super Landroid/telephony/CellInfo;
.source "CellInfoGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellInfoGsm"


# instance fields
.field private mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

.field private mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellInfoGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    new-instance v0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {v0}, Landroid/telephony/CellIdentityGsm;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_0/CellInfo;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/hardware/radio/V1_0/CellInfo;)V

    iget-object v0, p1, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_0/CellInfoGsm;

    new-instance v1, Landroid/telephony/CellIdentityGsm;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    invoke-direct {v1, v2}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/hardware/radio/V1_0/CellIdentityGsm;)V

    iput-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    new-instance v1, Landroid/telephony/CellSignalStrengthGsm;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-direct {v1, v2}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/hardware/radio/V1_0/GsmSignalStrength;)V

    iput-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_2/CellInfo;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/hardware/radio/V1_2/CellInfo;)V

    iget-object v0, p1, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoGsm;

    new-instance v1, Landroid/telephony/CellIdentityGsm;

    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    invoke-direct {v1, v2}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/hardware/radio/V1_2/CellIdentityGsm;)V

    iput-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    new-instance v1, Landroid/telephony/CellSignalStrengthGsm;

    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-direct {v1, v2}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/hardware/radio/V1_0/GsmSignalStrength;)V

    iput-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_4/CellInfo;J)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/CellInfo;-><init>(Landroid/hardware/radio/V1_4/CellInfo;J)V

    iget-object v0, p1, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->gsm()Landroid/hardware/radio/V1_2/CellInfoGsm;

    move-result-object v0

    new-instance v1, Landroid/telephony/CellIdentityGsm;

    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    invoke-direct {v1, v2}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/hardware/radio/V1_2/CellIdentityGsm;)V

    iput-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    new-instance v1, Landroid/telephony/CellSignalStrengthGsm;

    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-direct {v1, v2}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/hardware/radio/V1_0/GsmSignalStrength;)V

    iput-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_5/CellInfo;J)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/CellInfo;-><init>(Landroid/hardware/radio/V1_5/CellInfo;J)V

    iget-object v0, p1, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v0

    new-instance v1, Landroid/telephony/CellIdentityGsm;

    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    invoke-direct {v1, v2}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/hardware/radio/V1_5/CellIdentityGsm;)V

    iput-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    new-instance v1, Landroid/telephony/CellSignalStrengthGsm;

    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-direct {v1, v2}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/hardware/radio/V1_0/GsmSignalStrength;)V

    iput-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/telephony/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityGsm;

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    sget-object v0, Landroid/telephony/CellSignalStrengthGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthGsm;

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfoGsm;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    iget-object v0, p1, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->copy()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    iget-object v0, p1, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->copy()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoGsm;
    .registers 2

    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoGsm;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "CellInfoGsm"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoGsm;

    iget-object v2, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    iget-object v3, v0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityGsm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    iget-object v3, v0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthGsm;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1d} :catch_23

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    nop

    :goto_22
    return v1

    :catch_23
    move-exception v0

    return v1
.end method

.method public bridge synthetic getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    return-object v0
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentityGsm;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    return-object v0
.end method

.method public bridge synthetic getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    return-object v0
.end method

.method public getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .registers 3

    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoGsm;-><init>(Landroid/telephony/CellInfoGsm;)V

    iget-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->sanitizeLocationInfo()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    return-object v0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentityGsm;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    return-void
.end method

.method public setCellSignalStrength(Landroid/telephony/CellSignalStrengthGsm;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CellInfoGsm:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityGsm;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthGsm;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
