.class public final Landroid/telephony/UiccCardInfo;
.super Ljava/lang/Object;
.source "UiccCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCardId:I

.field private final mEid:Ljava/lang/String;

.field private final mIccId:Ljava/lang/String;

.field private final mIsEuicc:Z

.field private final mIsRemovable:Z

.field private final mSlotIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/UiccCardInfo$1;

    invoke-direct {v0}, Landroid/telephony/UiccCardInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccCardInfo;->mSlotIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    iput-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/UiccCardInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/UiccCardInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    iput p2, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    iput-object p3, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    iput p5, p0, Landroid/telephony/UiccCardInfo;->mSlotIndex:I

    iput-boolean p6, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

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
    const/4 v1, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_44

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/UiccCardInfo;

    iget-boolean v3, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    iget-boolean v4, v2, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    iget v4, v2, Landroid/telephony/UiccCardInfo;->mCardId:I

    if-ne v3, v4, :cond_42

    iget-object v3, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget v3, p0, Landroid/telephony/UiccCardInfo;->mSlotIndex:I

    iget v4, v2, Landroid/telephony/UiccCardInfo;->mSlotIndex:I

    if-ne v3, v4, :cond_42

    iget-boolean v3, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    iget-boolean v4, v2, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    if-ne v3, v4, :cond_42

    goto :goto_43

    :cond_42
    move v0, v1

    :goto_43
    return v0

    :cond_44
    :goto_44
    return v1
.end method

.method public getCardId()I
    .registers 2

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    return v0
.end method

.method public getEid()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotIndex()I
    .registers 2

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mSlotIndex:I

    return v0
.end method

.method public getUnprivileged()Landroid/telephony/UiccCardInfo;
    .registers 9

    new-instance v7, Landroid/telephony/UiccCardInfo;

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    iget v2, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    iget v5, p0, Landroid/telephony/UiccCardInfo;->mSlotIndex:I

    iget-boolean v6, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/UiccCardInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;IZ)V

    return-object v7
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/UiccCardInfo;->mSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEuicc()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    return v0
.end method

.method public isRemovable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccCardInfo (mIsEuicc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCardId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/UiccCardInfo;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
