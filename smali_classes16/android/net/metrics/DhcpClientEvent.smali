.class public final Landroid/net/metrics/DhcpClientEvent;
.super Ljava/lang/Object;
.source "DhcpClientEvent.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DhcpClientEvent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/DhcpClientEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final durationMs:I

.field public final msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/metrics/DhcpClientEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/DhcpClientEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/DhcpClientEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DhcpClientEvent$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/metrics/DhcpClientEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    iput p2, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/net/metrics/DhcpClientEvent$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/metrics/DhcpClientEvent;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/net/metrics/DhcpClientEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_25

    :cond_10
    move-object v1, p1

    check-cast v1, Landroid/net/metrics/DhcpClientEvent;

    iget-object v2, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    iget v3, v1, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    if-ne v2, v3, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0

    :cond_25
    :goto_25
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "DhcpClientEvent(%s, %dms)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
