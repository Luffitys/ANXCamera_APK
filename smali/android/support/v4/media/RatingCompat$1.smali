.class Landroid/support/v4/media/RatingCompat$1;
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/RatingCompat;
    .locals 1

    new-instance p0, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/media/RatingCompat$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/support/v4/media/RatingCompat;
    .locals 0

    new-array p0, p1, [Landroid/support/v4/media/RatingCompat;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/media/RatingCompat$1;->newArray(I)[Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0
.end method
