.class public final Landroid/net/metrics/DhcpErrorEvent;
.super Ljava/lang/Object;
.source "DhcpErrorEvent.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DhcpErrorEvent$Decoder;
    }
.end annotation


# static fields
.field public static final BOOTP_TOO_SHORT:I = 0x4010000

.field public static final BUFFER_UNDERFLOW:I = 0x5010000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/DhcpErrorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DHCP_BAD_MAGIC_COOKIE:I = 0x4020000

.field public static final DHCP_ERROR:I = 0x4

.field private static final DHCP_ERROR_TYPE:I = 0x400

.field public static final DHCP_INVALID_OPTION_LENGTH:I = 0x4030000

.field public static final DHCP_NO_COOKIE:I = 0x4060000

.field public static final DHCP_NO_MSG_TYPE:I = 0x4040000

.field public static final DHCP_UNKNOWN_MSG_TYPE:I = 0x4050000

.field public static final L2_ERROR:I = 0x1

.field private static final L2_ERROR_TYPE:I = 0x100

.field public static final L2_TOO_SHORT:I = 0x1010000

.field public static final L2_WRONG_ETH_TYPE:I = 0x1020000

.field public static final L3_ERROR:I = 0x2

.field private static final L3_ERROR_TYPE:I = 0x200

.field public static final L3_INVALID_IP:I = 0x2030000

.field public static final L3_NOT_IPV4:I = 0x2020000

.field public static final L3_TOO_SHORT:I = 0x2010000

.field public static final L4_ERROR:I = 0x3

.field private static final L4_ERROR_TYPE:I = 0x300

.field public static final L4_NOT_UDP:I = 0x3010000

.field public static final L4_WRONG_PORT:I = 0x3020000

.field public static final MISC_ERROR:I = 0x5

.field private static final MISC_ERROR_TYPE:I = 0x500

.field public static final PARSING_ERROR:I = 0x5030000

.field public static final RECEIVE_ERROR:I = 0x5020000


# instance fields
.field public final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/metrics/DhcpErrorEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/DhcpErrorEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/DhcpErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DhcpErrorEvent$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static errorCodeWithOption(II)I
    .registers 4

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v2, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DhcpErrorEvent(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
