.class public Landroid/net/lowpan/LowpanBeaconInfo;
.super Ljava/lang/Object;
.source "LowpanBeaconInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanBeaconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CAN_ASSIST:I = 0x1

.field public static final UNKNOWN_LQI:I = 0x0

.field public static final UNKNOWN_RSSI:I = 0x7fffffff


# instance fields
.field private mBeaconAddress:[B

.field private final mFlags:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentity:Landroid/net/lowpan/LowpanIdentity;

.field private mLqi:I

.field private mRssi:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/lowpan/LowpanBeaconInfo$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanBeaconInfo$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanBeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/lowpan/LowpanBeaconInfo$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/lowpan/LowpanBeaconInfo;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/net/lowpan/LowpanBeaconInfo;I)I
    .registers 2

    iput p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/lowpan/LowpanBeaconInfo;I)I
    .registers 2

    iput p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    return p1
.end method

.method static synthetic access$300(Landroid/net/lowpan/LowpanBeaconInfo;)[B
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/lowpan/LowpanBeaconInfo;[B)[B
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/lowpan/LowpanBeaconInfo;)Ljava/util/TreeSet;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/lowpan/LowpanBeaconInfo;Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity;
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/lowpan/LowpanBeaconInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/lowpan/LowpanBeaconInfo;

    iget-object v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    iget-object v3, v0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v2, v3}, Landroid/net/lowpan/LowpanIdentity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    iget-object v3, v0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    iget v3, v0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    iget v3, v0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    iget-object v3, v0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    nop

    :goto_36
    return v1
.end method

.method public getBeaconAddress()[B
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getFlags()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-object v0
.end method

.method public getLqi()I
    .registers 2

    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    return v0
.end method

.method public getRssi()I
    .registers 2

    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFlagSet(I)Z
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v1}, Landroid/net/lowpan/LowpanIdentity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_24

    const-string v1, ", RSSI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "dBm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_24
    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    if-eqz v1, :cond_32

    const-string v1, ", LQI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_32
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    array-length v1, v1

    if-lez v1, :cond_45

    const-string v1, ", BeaconAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_45
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6f

    const-string v3, ", FLAG_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_75

    :cond_6f
    const-string v3, ", CAN_ASSIST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    nop

    :goto_75
    goto :goto_4b

    :cond_76
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v0, p1, p2}, Landroid/net/lowpan/LowpanIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    :cond_37
    return-void
.end method
