.class public final Landroid/net/wifi/nl80211/PnoSettings;
.super Ljava/lang/Object;
.source "PnoSettings.java"

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
            "Landroid/net/wifi/nl80211/PnoSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntervalMs:J

.field private mMin2gRssi:I

.field private mMin5gRssi:I

.field private mMin6gRssi:I

.field private mPnoNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/nl80211/PnoSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/PnoSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/nl80211/PnoSettings;J)J
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    return-wide p1
.end method

.method static synthetic access$102(Landroid/net/wifi/nl80211/PnoSettings;I)I
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/wifi/nl80211/PnoSettings;I)I
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    return p1
.end method

.method static synthetic access$302(Landroid/net/wifi/nl80211/PnoSettings;I)I
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    return p1
.end method

.method static synthetic access$400(Landroid/net/wifi/nl80211/PnoSettings;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/wifi/nl80211/PnoSettings;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/net/wifi/nl80211/PnoSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/PnoSettings;

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    iget-wide v5, v1, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_35

    iget v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    iget v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    if-ne v3, v4, :cond_35

    iget v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    iget v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    if-ne v3, v4, :cond_35

    iget v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    iget v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    if-ne v3, v4, :cond_35

    iget-object v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    move v0, v2

    :goto_36
    return v0
.end method

.method public getIntervalMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    return-wide v0
.end method

.method public getMin2gRssiDbm()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    return v0
.end method

.method public getMin5gRssiDbm()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    return v0
.end method

.method public getMin6gRssiDbm()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    return v0
.end method

.method public getPnoNetworks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setIntervalMillis(J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    return-void
.end method

.method public setMin2gRssiDbm(I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    return-void
.end method

.method public setMin5gRssiDbm(I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    return-void
.end method

.method public setMin6gRssiDbm(I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    return-void
.end method

.method public setPnoNetworks(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
