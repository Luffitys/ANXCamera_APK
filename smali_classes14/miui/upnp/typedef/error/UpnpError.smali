.class public Lmiui/upnp/typedef/error/UpnpError;
.super Ljava/lang/Object;
.source "UpnpError.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmiui/upnp/typedef/error/UpnpError;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final ACTION_EXECUTE:Lmiui/upnp/typedef/error/UpnpError;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/error/UpnpError;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

.field public static final INTERRUPTED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

.field public static final INVALID_OPERATION:Lmiui/upnp/typedef/error/UpnpError;

.field public static final NOT_IMPLEMENTED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final NOT_INITIALIZED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final OBJECT_NOT_REGISTERED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final OBJECT_REGISTERED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final OK:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_BIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_SUBSCRIBE:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_SUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_UNBIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_UNSUBSCRIBE:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_UNSUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SESSION_CREATE:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SESSION_DESTROY:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_ACTION_FAILED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_ACTION_NOT_IMPLEMENTED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_ARGUMENT_VALUE_INVALID:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_ARGUMENT_VALUE_OUT_OF_RANGE:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_HUMAN_INTERVENTION_REQUIRED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_INTERNAL_ERROR:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_INVALID_ACTION:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_INVALID_ARGS:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_NOT_FOUND:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_OUT_OF_MEMORY:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_STRING_ARGUMENT_TOO_LONG:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_ADD_NETWORK:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_AP_ENABLED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_CONFIG:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_CONNECT:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_DISABLED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_ENABLE:Lmiui/upnp/typedef/error/UpnpError;


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0xc8

    const-string v2, "OK"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->OK:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x190

    const-string v2, "INTERNAL ERROR"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_INTERNAL_ERROR:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x191

    const-string v2, "INVALID ACTION"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_INVALID_ACTION:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x192

    const-string v2, "INVALID ARGS"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_INVALID_ARGS:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x194

    const-string v2, "NOT FOUND"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_NOT_FOUND:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x1f5

    const-string v2, "ACTION FAILED"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_ACTION_FAILED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x258

    const-string v2, "ARGUMENT VALUE INVALID"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_ARGUMENT_VALUE_INVALID:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x259

    const-string v2, "ARGUMENT VALUE OUT OF RANGE"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_ARGUMENT_VALUE_OUT_OF_RANGE:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x25a

    const-string v2, "ACTION NOT IMPLEMENTED"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_ACTION_NOT_IMPLEMENTED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x25b

    const-string v2, "OUT OF MEMORY"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_OUT_OF_MEMORY:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x25c

    const-string v2, "HUMAN INTERVENTION REQUIRED"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_HUMAN_INTERVENTION_REQUIRED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x25d

    const-string v2, "STRING ARGUMENT TOO LONG"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_STRING_ARGUMENT_TOO_LONG:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x320

    const-string v2, "internal error"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x321

    const-string v2, "interrupted"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->INTERRUPTED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x322

    const-string v2, "not initialized"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->NOT_INITIALIZED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x323

    const-string v2, "not implemented"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->NOT_IMPLEMENTED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x324

    const-string v2, "invalid argument"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x325

    const-string v2, "invalid operation"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->INVALID_OPERATION:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x326

    const-string v2, "service not bound"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v2, "service bind failed"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_BIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v2, "service unbind failed"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_UNBIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x32a

    const-string v2, "subscribe error"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_SUBSCRIBE:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x32b

    const-string v2, "unsubscribe error"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_UNSUBSCRIBE:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x32c

    const-string v2, "subscribed"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_SUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x32d

    const-string v2, "unsubscribed"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_UNSUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x334

    const-string v2, "action execute error"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->ACTION_EXECUTE:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x33e

    const-string v2, "registered"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->OBJECT_REGISTERED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x33f

    const-string v2, "not registered"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->OBJECT_NOT_REGISTERED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x348

    const-string v2, "wifi"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x349

    const-string v2, "WIFI AP enabled"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_AP_ENABLED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x34a

    const-string v2, "WIFI disabled"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_DISABLED:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x34b

    const-string v2, "WIFI enable failed"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_ENABLE:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x34c

    const-string v2, "WIFI connect failed"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_CONNECT:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x34d

    const-string v2, "WIFI configuration failed"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_CONFIG:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x34e

    const-string v2, "WIFI add network failed"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_ADD_NETWORK:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x352

    const-string v2, "session create failed"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SESSION_CREATE:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const/16 v1, 0x353

    const-string v2, "session destroy failed"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SESSION_DESTROY:Lmiui/upnp/typedef/error/UpnpError;

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/error/UpnpError$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    iput-object p2, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/error/UpnpError;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lmiui/upnp/typedef/error/UpnpError;

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/error/UpnpError;->compareTo(Lmiui/upnp/typedef/error/UpnpError;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmiui/upnp/typedef/error/UpnpError;)I
    .registers 4

    iget v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    iget v1, p1, Lmiui/upnp/typedef/error/UpnpError;->code:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lmiui/upnp/typedef/error/UpnpError;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    move-object v2, p1

    check-cast v2, Lmiui/upnp/typedef/error/UpnpError;

    iget v2, v2, Lmiui/upnp/typedef/error/UpnpError;->code:I

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public getCode()I
    .registers 2

    iget v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :cond_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
