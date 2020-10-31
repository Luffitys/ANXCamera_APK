.class public final Lmiui/miprint/sdk/P2pPrinterInfo;
.super Ljava/lang/Object;
.source "P2pPrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/miprint/sdk/P2pPrinterInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLocation:Ljava/lang/String;

.field private mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mPrinterId:Landroid/print/PrinterId;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUuid:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/miprint/sdk/P2pPrinterInfo$1;

    invoke-direct {v0}, Lmiui/miprint/sdk/P2pPrinterInfo$1;-><init>()V

    sput-object v0, Lmiui/miprint/sdk/P2pPrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/miprint/sdk/P2pPrinterInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/print/PrinterId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    iput-object p2, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mSummary:Ljava/lang/String;

    iput-object p4, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mLocation:Ljava/lang/String;

    iput-object p5, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    iput-object p6, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPeer()Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public getPrinterId()Landroid/print/PrinterId;
    .registers 2

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    iput-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mSummary:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscoveredPrinterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    if-eqz v1, :cond_1c

    const-string v1, "mPrinterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    invoke-virtual {v1}, Landroid/print/PrinterId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    if-eqz v1, :cond_4c

    const-string v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_5e

    const-string v1, ", mPeer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPrinterId:Landroid/print/PrinterId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mUuid:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/miprint/sdk/P2pPrinterInfo;->mPeer:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
