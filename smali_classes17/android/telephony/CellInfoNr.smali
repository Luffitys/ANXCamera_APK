.class public final Landroid/telephony/CellInfoNr;
.super Landroid/telephony/CellInfo;
.source "CellInfoNr.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoNr;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CellInfoNr"


# instance fields
.field private mCellIdentity:Landroid/telephony/CellIdentityNr;

.field private final mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellInfoNr$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoNr$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoNr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    new-instance v0, Landroid/telephony/CellIdentityNr;

    invoke-direct {v0}, Landroid/telephony/CellIdentityNr;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_4/CellInfo;J)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/CellInfo;-><init>(Landroid/hardware/radio/V1_4/CellInfo;J)V

    iget-object v0, p1, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->nr()Landroid/hardware/radio/V1_4/CellInfoNr;

    move-result-object v0

    new-instance v1, Landroid/telephony/CellIdentityNr;

    iget-object v2, v0, Landroid/hardware/radio/V1_4/CellInfoNr;->cellidentity:Landroid/hardware/radio/V1_4/CellIdentityNr;

    invoke-direct {v1, v2}, Landroid/telephony/CellIdentityNr;-><init>(Landroid/hardware/radio/V1_4/CellIdentityNr;)V

    iput-object v1, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    new-instance v1, Landroid/telephony/CellSignalStrengthNr;

    iget-object v2, v0, Landroid/hardware/radio/V1_4/CellInfoNr;->signalStrength:Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-direct {v1, v2}, Landroid/telephony/CellSignalStrengthNr;-><init>(Landroid/hardware/radio/V1_4/NrSignalStrength;)V

    iput-object v1, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/V1_5/CellInfo;J)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/CellInfo;-><init>(Landroid/hardware/radio/V1_5/CellInfo;J)V

    iget-object v0, p1, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_5/CellInfoNr;

    move-result-object v0

    new-instance v1, Landroid/telephony/CellIdentityNr;

    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    invoke-direct {v1, v2}, Landroid/telephony/CellIdentityNr;-><init>(Landroid/hardware/radio/V1_5/CellIdentityNr;)V

    iput-object v1, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    new-instance v1, Landroid/telephony/CellSignalStrengthNr;

    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellInfoNr;->signalStrengthNr:Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-direct {v1, v2}, Landroid/telephony/CellSignalStrengthNr;-><init>(Landroid/hardware/radio/V1_4/NrSignalStrength;)V

    iput-object v1, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/telephony/CellIdentityNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityNr;

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    sget-object v0, Landroid/telephony/CellSignalStrengthNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthNr;

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellInfoNr$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellInfoNr;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellInfoNr;Z)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    if-eqz p2, :cond_c

    iget-object v0, p1, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->sanitizeLocationInfo()Landroid/telephony/CellIdentityNr;

    move-result-object v0

    goto :goto_e

    :cond_c
    iget-object v0, p1, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    :goto_e
    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    iget-object v0, p1, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoNr;
    .registers 2

    new-instance v0, Landroid/telephony/CellInfoNr;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoNr;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/telephony/CellInfoNr;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoNr;

    invoke-super {p0, v0}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    iget-object v3, v0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityNr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    iget-object v3, v0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthNr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    :goto_26
    return v1
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    return-object v0
.end method

.method public bridge synthetic getCellIdentity()Landroid/telephony/CellIdentityNr;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityNr;

    return-object v0
.end method

.method public getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-object v0
.end method

.method public bridge synthetic getCellSignalStrength()Landroid/telephony/CellSignalStrengthNr;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellInfoNr;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthNr;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .registers 3

    new-instance v0, Landroid/telephony/CellInfoNr;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/telephony/CellInfoNr;-><init>(Landroid/telephony/CellInfoNr;Z)V

    return-object v0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentityNr;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellInfoNr:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x6

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityNr;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthNr;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
