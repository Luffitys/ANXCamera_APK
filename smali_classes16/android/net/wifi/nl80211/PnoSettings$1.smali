.class Landroid/net/wifi/nl80211/PnoSettings$1;
.super Ljava/lang/Object;
.source "PnoSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/PnoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/PnoSettings;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/PnoSettings;
    .registers 5

    new-instance v0, Landroid/net/wifi/nl80211/PnoSettings;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/PnoSettings;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    # setter for: Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/nl80211/PnoSettings;->access$002(Landroid/net/wifi/nl80211/PnoSettings;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoSettings;->access$102(Landroid/net/wifi/nl80211/PnoSettings;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoSettings;->access$202(Landroid/net/wifi/nl80211/PnoSettings;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoSettings;->access$302(Landroid/net/wifi/nl80211/PnoSettings;I)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoSettings;->access$402(Landroid/net/wifi/nl80211/PnoSettings;Ljava/util/List;)Ljava/util/List;

    # getter for: Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/nl80211/PnoSettings;->access$400(Landroid/net/wifi/nl80211/PnoSettings;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/nl80211/PnoNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/PnoSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/PnoSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/nl80211/PnoSettings;
    .registers 3

    new-array v0, p1, [Landroid/net/wifi/nl80211/PnoSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/PnoSettings$1;->newArray(I)[Landroid/net/wifi/nl80211/PnoSettings;

    move-result-object p1

    return-object p1
.end method
