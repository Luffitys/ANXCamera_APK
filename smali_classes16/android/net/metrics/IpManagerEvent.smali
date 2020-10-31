.class public final Landroid/net/metrics/IpManagerEvent;
.super Ljava/lang/Object;
.source "IpManagerEvent.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/IpManagerEvent$Decoder;,
        Landroid/net/metrics/IpManagerEvent$EventType;
    }
.end annotation


# static fields
.field public static final COMPLETE_LIFECYCLE:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/IpManagerEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_INTERFACE_NOT_FOUND:I = 0x8

.field public static final ERROR_INVALID_PROVISIONING:I = 0x7

.field public static final ERROR_STARTING_IPREACHABILITYMONITOR:I = 0x6

.field public static final ERROR_STARTING_IPV4:I = 0x4

.field public static final ERROR_STARTING_IPV6:I = 0x5

.field public static final PROVISIONING_FAIL:I = 0x2

.field public static final PROVISIONING_OK:I = 0x1


# instance fields
.field public final durationMs:J

.field public final eventType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/metrics/IpManagerEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/IpManagerEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/IpManagerEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    iput-wide p2, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/IpManagerEvent$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/metrics/IpManagerEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/net/metrics/IpManagerEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_23

    :cond_10
    move-object v1, p1

    check-cast v1, Landroid/net/metrics/IpManagerEvent;

    iget v2, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    iget v3, v1, Landroid/net/metrics/IpManagerEvent;->eventType:I

    if-ne v2, v3, :cond_22

    iget-wide v2, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    iget-wide v4, v1, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0

    :cond_23
    :goto_23
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Landroid/net/metrics/IpManagerEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v2, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "IpManagerEvent(%s, %dms)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
