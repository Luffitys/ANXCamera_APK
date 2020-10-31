.class public final Landroid/net/wifi/nl80211/RadioChainInfo;
.super Ljava/lang/Object;
.source "RadioChainInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/RadioChainInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RadioChainInfo"


# instance fields
.field public chainId:I

.field public level:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/nl80211/RadioChainInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/RadioChainInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/RadioChainInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    iput p2, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

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
    instance-of v1, p1, Landroid/net/wifi/nl80211/RadioChainInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/RadioChainInfo;

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget v3, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    iget v4, v1, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    if-ne v3, v4, :cond_1d

    iget v3, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    iget v4, v1, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    if-ne v3, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public getChainId()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    return v0
.end method

.method public getLevelDbm()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
