.class Landroid/net/wifi/nl80211/ChannelSettings$1;
.super Ljava/lang/Object;
.source "ChannelSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/ChannelSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/ChannelSettings;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/ChannelSettings;
    .registers 5

    new-instance v0, Landroid/net/wifi/nl80211/ChannelSettings;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/ChannelSettings;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/nl80211/ChannelSettings;->frequency:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "ChannelSettings"

    const-string v2, "Found trailing data after parcel parsing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/ChannelSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/ChannelSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/nl80211/ChannelSettings;
    .registers 3

    new-array v0, p1, [Landroid/net/wifi/nl80211/ChannelSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/ChannelSettings$1;->newArray(I)[Landroid/net/wifi/nl80211/ChannelSettings;

    move-result-object p1

    return-object p1
.end method
