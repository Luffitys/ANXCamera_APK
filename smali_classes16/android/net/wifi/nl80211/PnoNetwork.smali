.class public final Landroid/net/wifi/nl80211/PnoNetwork;
.super Ljava/lang/Object;
.source "PnoNetwork.java"

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
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFrequencies:[I

.field private mIsHidden:Z

.field private mSsid:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/nl80211/PnoNetwork$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/PnoNetwork$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/PnoNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/nl80211/PnoNetwork;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    return p1
.end method

.method static synthetic access$100(Landroid/net/wifi/nl80211/PnoNetwork;)[B
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/nl80211/PnoNetwork;[B)[B
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/wifi/nl80211/PnoNetwork;)[I
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/wifi/nl80211/PnoNetwork;[I)[I
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    return-object p1
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
    instance-of v1, p1, Landroid/net/wifi/nl80211/PnoNetwork;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/PnoNetwork;

    iget-object v3, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    iget-object v4, v1, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    iget-object v4, v1, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    return v0
.end method

.method public getFrequenciesMhz()[I
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    return-object v0
.end method

.method public getSsid()[B
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    return v0
.end method

.method public setFrequenciesMhz([I)V
    .registers 4

    if-eqz p1, :cond_5

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHidden(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    return-void
.end method

.method public setSsid([B)V
    .registers 4

    if-eqz p1, :cond_5

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
