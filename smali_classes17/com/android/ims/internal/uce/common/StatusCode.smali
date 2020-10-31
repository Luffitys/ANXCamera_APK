.class public Lcom/android/ims/internal/uce/common/StatusCode;
.super Ljava/lang/Object;
.source "StatusCode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/common/StatusCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final UCE_FAILURE:I = 0x1

.field public static final UCE_FETCH_ERROR:I = 0x6

.field public static final UCE_INSUFFICIENT_MEMORY:I = 0x8

.field public static final UCE_INVALID_FEATURE_TAG:I = 0xf

.field public static final UCE_INVALID_LISTENER_HANDLE:I = 0x4

.field public static final UCE_INVALID_PARAM:I = 0x5

.field public static final UCE_INVALID_SERVICE_HANDLE:I = 0x3

.field public static final UCE_LOST_NET:I = 0x9

.field public static final UCE_NOT_FOUND:I = 0xb

.field public static final UCE_NOT_SUPPORTED:I = 0xa

.field public static final UCE_NO_CHANGE_IN_CAP:I = 0xd

.field public static final UCE_REQUEST_TIMEOUT:I = 0x7

.field public static final UCE_SERVICE_AVAILABLE:I = 0x10

.field public static final UCE_SERVICE_UNAVAILABLE:I = 0xc

.field public static final UCE_SERVICE_UNKNOWN:I = 0xe

.field public static final UCE_SUCCESS:I = 0x0

.field public static final UCE_SUCCESS_ASYC_UPDATE:I = 0x2


# instance fields
.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/common/StatusCode;->mStatusCode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/common/StatusCode;->mStatusCode:I

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/common/StatusCode;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/common/StatusCode$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/android/ims/internal/uce/common/StatusCode;->mStatusCode:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/common/StatusCode;->mStatusCode:I

    return-void
.end method

.method public setStatusCode(I)V
    .registers 2

    iput p1, p0, Lcom/android/ims/internal/uce/common/StatusCode;->mStatusCode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/android/ims/internal/uce/common/StatusCode;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
