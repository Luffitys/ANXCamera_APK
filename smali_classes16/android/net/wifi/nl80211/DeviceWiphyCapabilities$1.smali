.class Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;
.super Ljava/lang/Object;
.source "DeviceWiphyCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    .registers 4

    new-instance v0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    # setter for: Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->access$002(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    # setter for: Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->access$102(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    # setter for: Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->access$202(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    # setter for: Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->access$302(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    # setter for: Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->access$402(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->access$502(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->access$602(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;I)I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    .registers 3

    new-array v0, p1, [Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;->newArray(I)[Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object p1

    return-object p1
.end method
