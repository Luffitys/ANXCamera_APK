.class Landroid/support/v4/os/ResultReceiver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/os/ResultReceiver;
    .locals 0

    new-instance p0, Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p1}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/os/ResultReceiver$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/os/ResultReceiver;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/support/v4/os/ResultReceiver;
    .locals 0

    new-array p0, p1, [Landroid/support/v4/os/ResultReceiver;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/os/ResultReceiver$1;->newArray(I)[Landroid/support/v4/os/ResultReceiver;

    move-result-object p0

    return-object p0
.end method
