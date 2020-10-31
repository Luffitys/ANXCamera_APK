.class Landroid/net/NetworkCapabilities$1;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/NetworkCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkCapabilities;
    .registers 5

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    # setter for: Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J
    invoke-static {v0, v1, v2}, Landroid/net/NetworkCapabilities;->access$002(Landroid/net/NetworkCapabilities;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    # setter for: Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J
    invoke-static {v0, v1, v2}, Landroid/net/NetworkCapabilities;->access$102(Landroid/net/NetworkCapabilities;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    # setter for: Landroid/net/NetworkCapabilities;->mTransportTypes:J
    invoke-static {v0, v1, v2}, Landroid/net/NetworkCapabilities;->access$202(Landroid/net/NetworkCapabilities;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I
    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$302(Landroid/net/NetworkCapabilities;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I
    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$402(Landroid/net/NetworkCapabilities;I)I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkSpecifier;

    # setter for: Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;
    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->access$502(Landroid/net/NetworkCapabilities;Landroid/net/NetworkSpecifier;)Landroid/net/NetworkSpecifier;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/TransportInfo;

    # setter for: Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;
    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->access$602(Landroid/net/NetworkCapabilities;Landroid/net/TransportInfo;)Landroid/net/TransportInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Landroid/net/NetworkCapabilities;->mSignalStrength:I
    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->access$702(Landroid/net/NetworkCapabilities;I)I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    # setter for: Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;
    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$802(Landroid/net/NetworkCapabilities;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$902(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    # setter for: Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z
    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$1002(Landroid/net/NetworkCapabilities;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/NetworkCapabilities;->mOwnerUid:I
    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$1102(Landroid/net/NetworkCapabilities;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/NetworkCapabilities;->mRequestorUid:I
    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$1202(Landroid/net/NetworkCapabilities;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$1302(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/NetworkCapabilities;
    .registers 3

    new-array v0, p1, [Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$1;->newArray(I)[Landroid/net/NetworkCapabilities;

    move-result-object p1

    return-object p1
.end method
