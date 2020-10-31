.class public Landroid/location/LocationPolicy;
.super Ljava/lang/Object;
.source "LocationPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_FUSED_PROVIDER:I = 0x3

.field public static final MATCH_GPS_PROVIDER:I = 0x2

.field public static final MATCH_NETWORK_PROVIDER:I = 0x1

.field public static final MATCH_PASSIVE_PROVIDER:I = 0x4


# instance fields
.field public final mHighCost:Z

.field private final mMatchRule:I

.field public final mMinIntervalMs:I

.field public final mProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/LocationPolicy$1;

    invoke-direct {v0}, Landroid/location/LocationPolicy$1;-><init>()V

    sput-object v0, Landroid/location/LocationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    iput-object p2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    iput-object p2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    iput p4, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/location/LocationPolicy$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/LocationPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildDefaultPolicyFusedLocation()Landroid/location/LocationPolicy;
    .registers 4

    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x3

    const-string v2, "fused"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static buildDefaultPolicyGPSLocation()Landroid/location/LocationPolicy;
    .registers 4

    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x2

    const-string v2, "gps"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static buildDefaultPolicyNetworkLocation()Landroid/location/LocationPolicy;
    .registers 4

    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x1

    const-string/jumbo v2, "network"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static buildDefaultPolicyPassiveLocation()Landroid/location/LocationPolicy;
    .registers 4

    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x4

    const-string/jumbo v2, "passive"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static getLocationPolicy(Ljava/lang/String;I)Landroid/location/LocationPolicy;
    .registers 6

    const-string/jumbo v0, "network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/location/LocationPolicy;

    invoke-direct {v1, v3, v0, v2, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    return-object v1

    :cond_11
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v1, Landroid/location/LocationPolicy;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    return-object v1

    :cond_20
    const-string/jumbo v0, "passive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    new-instance v1, Landroid/location/LocationPolicy;

    const/4 v3, 0x4

    invoke-direct {v1, v3, v0, v2, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    return-object v1

    :cond_30
    const-string v0, "fused"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v1, Landroid/location/LocationPolicy;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    return-object v1

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMatchRuleName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_f
    const-string v0, "PASSIVE_PROVIDER"

    return-object v0

    :cond_12
    const-string v0, "FUSED_PROVIDER"

    return-object v0

    :cond_15
    const-string v0, "GPS_PROVIDER"

    return-object v0

    :cond_18
    const-string v0, "NETWORK_PROVIDER"

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/location/LocationPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Landroid/location/LocationPolicy;

    iget v2, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    iget v3, v0, Landroid/location/LocationPolicy;->mMatchRule:I

    if-ne v2, v3, :cond_21

    iget-object v2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    iget-object v3, v0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    if-ne v2, v3, :cond_21

    iget-boolean v2, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    iget-boolean v3, v0, Landroid/location/LocationPolicy;->mHighCost:Z

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    iget v3, v0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    if-ne v2, v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    :cond_22
    return v1
.end method

.method public getMatchRule()I
    .registers 2

    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 4

    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    const-string/jumbo v0, "passive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const-string v0, "fused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_26
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2d
    const-string/jumbo v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationPolicy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "matchRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-static {v1}, Landroid/location/LocationPolicy;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", highCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", minInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
