.class public final Landroid/net/IpSecTunnelInterfaceResponse;
.super Ljava/lang/Object;
.source "IpSecTunnelInterfaceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecTunnelInterfaceResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpSecTunnelInterfaceResponse"


# instance fields
.field public final interfaceName:Ljava/lang/String;

.field public final resourceId:I

.field public final status:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/IpSecTunnelInterfaceResponse$1;

    invoke-direct {v0}, Landroid/net/IpSecTunnelInterfaceResponse$1;-><init>()V

    sput-object v0, Landroid/net/IpSecTunnelInterfaceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_f

    iput p1, p0, Landroid/net/IpSecTunnelInterfaceResponse;->status:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecTunnelInterfaceResponse;->resourceId:I

    const-string v0, ""

    iput-object v0, p0, Landroid/net/IpSecTunnelInterfaceResponse;->interfaceName:Ljava/lang/String;

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid status implies other args must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/IpSecTunnelInterfaceResponse;->status:I

    iput p2, p0, Landroid/net/IpSecTunnelInterfaceResponse;->resourceId:I

    iput-object p3, p0, Landroid/net/IpSecTunnelInterfaceResponse;->interfaceName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecTunnelInterfaceResponse;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecTunnelInterfaceResponse;->resourceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecTunnelInterfaceResponse;->interfaceName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecTunnelInterfaceResponse$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/IpSecTunnelInterfaceResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/net/IpSecTunnelInterfaceResponse;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecTunnelInterfaceResponse;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/IpSecTunnelInterfaceResponse;->interfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
