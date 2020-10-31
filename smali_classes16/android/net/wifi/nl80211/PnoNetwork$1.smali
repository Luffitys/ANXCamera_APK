.class Landroid/net/wifi/nl80211/PnoNetwork$1;
.super Ljava/lang/Object;
.source "PnoNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/PnoNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/PnoNetwork;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/PnoNetwork;
    .registers 5

    new-instance v0, Landroid/net/wifi/nl80211/PnoNetwork;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/PnoNetwork;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    # setter for: Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoNetwork;->access$002(Landroid/net/wifi/nl80211/PnoNetwork;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    # setter for: Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoNetwork;->access$102(Landroid/net/wifi/nl80211/PnoNetwork;[B)[B

    # getter for: Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B
    invoke-static {v0}, Landroid/net/wifi/nl80211/PnoNetwork;->access$100(Landroid/net/wifi/nl80211/PnoNetwork;)[B

    move-result-object v1

    if-nez v1, :cond_24

    new-array v1, v2, [B

    # setter for: Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoNetwork;->access$102(Landroid/net/wifi/nl80211/PnoNetwork;[B)[B

    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    # setter for: Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoNetwork;->access$202(Landroid/net/wifi/nl80211/PnoNetwork;[I)[I

    # getter for: Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I
    invoke-static {v0}, Landroid/net/wifi/nl80211/PnoNetwork;->access$200(Landroid/net/wifi/nl80211/PnoNetwork;)[I

    move-result-object v1

    if-nez v1, :cond_36

    new-array v1, v2, [I

    # setter for: Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoNetwork;->access$202(Landroid/net/wifi/nl80211/PnoNetwork;[I)[I

    :cond_36
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/PnoNetwork$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/PnoNetwork;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/nl80211/PnoNetwork;
    .registers 3

    new-array v0, p1, [Landroid/net/wifi/nl80211/PnoNetwork;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/PnoNetwork$1;->newArray(I)[Landroid/net/wifi/nl80211/PnoNetwork;

    move-result-object p1

    return-object p1
.end method
