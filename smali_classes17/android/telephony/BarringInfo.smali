.class public final Landroid/telephony/BarringInfo;
.super Ljava/lang/Object;
.source "BarringInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BarringInfo$BarringServiceInfo;,
        Landroid/telephony/BarringInfo$BarringServiceType;
    }
.end annotation


# static fields
.field private static final BARRING_SERVICE_INFO_UNBARRED:Landroid/telephony/BarringInfo$BarringServiceInfo;

.field private static final BARRING_SERVICE_INFO_UNKNOWN:Landroid/telephony/BarringInfo$BarringServiceInfo;

.field public static final BARRING_SERVICE_TYPE_CS_FALLBACK:I = 0x5

.field public static final BARRING_SERVICE_TYPE_CS_SERVICE:I = 0x0

.field public static final BARRING_SERVICE_TYPE_CS_VOICE:I = 0x2

.field public static final BARRING_SERVICE_TYPE_EMERGENCY:I = 0x8

.field public static final BARRING_SERVICE_TYPE_MMTEL_VIDEO:I = 0x7

.field public static final BARRING_SERVICE_TYPE_MMTEL_VOICE:I = 0x6

.field public static final BARRING_SERVICE_TYPE_MO_DATA:I = 0x4

.field public static final BARRING_SERVICE_TYPE_MO_SIGNALLING:I = 0x3

.field public static final BARRING_SERVICE_TYPE_PS_SERVICE:I = 0x1

.field public static final BARRING_SERVICE_TYPE_SMS:I = 0x9

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/BarringInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBarringServiceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellIdentity:Landroid/telephony/CellIdentity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(I)V

    sput-object v0, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNKNOWN:Landroid/telephony/BarringInfo$BarringServiceInfo;

    new-instance v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(I)V

    sput-object v0, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNBARRED:Landroid/telephony/BarringInfo$BarringServiceInfo;

    new-instance v0, Landroid/telephony/BarringInfo$1;

    invoke-direct {v0}, Landroid/telephony/BarringInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/telephony/CellIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    iput-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    const-class v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellIdentity;",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    iput-object p2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    return-void
.end method

.method public static create(Landroid/hardware/radio/V1_5/CellIdentity;Ljava/util/List;)Landroid/telephony/BarringInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_5/CellIdentity;",
            "Ljava/util/List<",
            "Landroid/hardware/radio/V1_5/BarringInfo;",
            ">;)",
            "Landroid/telephony/BarringInfo;"
        }
    .end annotation

    invoke-static {p0}, Landroid/telephony/CellIdentity;->create(Landroid/hardware/radio/V1_5/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_5/BarringInfo;

    iget v4, v3, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_40

    iget-object v4, v3, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->getDiscriminator()B

    move-result v4

    if-eq v4, v5, :cond_27

    goto :goto_d

    :cond_27
    iget-object v4, v3, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->conditional()Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    move-result-object v4

    iget v5, v3, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    new-instance v6, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v7, v3, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    iget-boolean v8, v4, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->isBarred:Z

    iget v9, v4, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->factor:I

    iget v10, v4, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->timeSeconds:I

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4d

    :cond_40
    iget v4, v3, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    new-instance v5, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v6, v3, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v7, v7}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_4d
    goto :goto_d

    :cond_4e
    new-instance v2, Landroid/telephony/BarringInfo;

    invoke-direct {v2, v0, v1}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    return-object v2
.end method


# virtual methods
.method public createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Landroid/telephony/BarringInfo;

    iget-object v1, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->sanitizeLocationInfo()Landroid/telephony/CellIdentity;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Landroid/telephony/BarringInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/BarringInfo;

    invoke-virtual {p0}, Landroid/telephony/BarringInfo;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/BarringInfo;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_14

    return v1

    :cond_14
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget-object v3, v0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_23

    return v1

    :cond_23
    const/4 v2, 0x0

    :goto_24
    iget-object v3, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    iget-object v3, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, v0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-eq v3, v4, :cond_3b

    return v1

    :cond_3b
    iget-object v3, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    return v1

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_51
    const/4 v1, 0x1

    return v1
.end method

.method public getBarringServiceInfo(I)Landroid/telephony/BarringInfo$BarringServiceInfo;
    .registers 4

    iget-object v0, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_19

    :cond_c
    iget-object v1, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_17

    sget-object v1, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNBARRED:Landroid/telephony/BarringInfo$BarringServiceInfo;

    goto :goto_19

    :cond_17
    sget-object v1, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNKNOWN:Landroid/telephony/BarringInfo$BarringServiceInfo;

    :goto_19
    return-object v1
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x7

    :goto_a
    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xf

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/BarringInfo$BarringServiceInfo;

    invoke-virtual {v2}, Landroid/telephony/BarringInfo$BarringServiceInfo;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarringInfo {mCellIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBarringServiceInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    return-void
.end method
