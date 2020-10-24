.class final Lcom/ss/android/vesdk/VEVideoEncodeSettings$1;
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/vesdk/VEVideoEncodeSettings;
    .locals 0

    new-instance p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/ss/android/vesdk/VEVideoEncodeSettings;
    .locals 0

    new-array p0, p1, [Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$1;->newArray(I)[Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p0

    return-object p0
.end method
