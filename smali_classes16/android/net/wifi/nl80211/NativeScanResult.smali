.class public final Landroid/net/wifi/nl80211/NativeScanResult;
.super Ljava/lang/Object;
.source "NativeScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/NativeScanResult$BssCapabilityBits;
    }
.end annotation


# static fields
.field public static final BSS_CAPABILITY_APSD:I = 0x800

.field public static final BSS_CAPABILITY_CF_POLLABLE:I = 0x4

.field public static final BSS_CAPABILITY_CF_POLL_REQUEST:I = 0x8

.field public static final BSS_CAPABILITY_CHANNEL_AGILITY:I = 0x80

.field public static final BSS_CAPABILITY_DELAYED_BLOCK_ACK:I = 0x4000

.field public static final BSS_CAPABILITY_DSSS_OFDM:I = 0x2000

.field public static final BSS_CAPABILITY_ESS:I = 0x1

.field public static final BSS_CAPABILITY_IBSS:I = 0x2

.field public static final BSS_CAPABILITY_IMMEDIATE_BLOCK_ACK:I = 0x8000

.field public static final BSS_CAPABILITY_PBCC:I = 0x40

.field public static final BSS_CAPABILITY_PRIVACY:I = 0x10

.field public static final BSS_CAPABILITY_QOS:I = 0x200

.field public static final BSS_CAPABILITY_RADIO_MANAGEMENT:I = 0x1000

.field public static final BSS_CAPABILITY_SHORT_PREAMBLE:I = 0x20

.field public static final BSS_CAPABILITY_SHORT_SLOT_TIME:I = 0x400

.field public static final BSS_CAPABILITY_SPECTRUM_MANAGEMENT:I = 0x100

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NativeScanResult"


# instance fields
.field public associated:Z

.field public bssid:[B

.field public capability:I

.field public frequency:I

.field public infoElement:[B

.field public radioChainInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/RadioChainInfo;",
            ">;"
        }
    .end annotation
.end field

.field public signalMbm:I

.field public ssid:[B

.field public tsf:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/nl80211/NativeScanResult$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/NativeScanResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/NativeScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBssid()Landroid/net/MacAddress;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->bssid:[B

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/nl80211/NativeScanResult;->bssid:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeScanResult"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getCapabilities()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->capability:I

    return v0
.end method

.method public getFrequencyMhz()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->frequency:I

    return v0
.end method

.method public getInformationElements()[B
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->infoElement:[B

    return-object v0
.end method

.method public getRadioChainInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/RadioChainInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->radioChainInfos:Ljava/util/List;

    return-object v0
.end method

.method public getSignalMbm()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->signalMbm:I

    return v0
.end method

.method public getSsid()[B
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->ssid:[B

    return-object v0
.end method

.method public getTsf()J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->tsf:J

    return-wide v0
.end method

.method public isAssociated()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->associated:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->ssid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->bssid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->infoElement:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->signalMbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->tsf:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->capability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->associated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->radioChainInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
