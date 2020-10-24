.class Lcom/airbnb/lottie/OooOO0O;
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
.method public OooO00o(Landroid/os/Parcel;)Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    .locals 1

    new-instance p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcel;Lcom/airbnb/lottie/OooO0o;)V

    return-object p0
.end method

.method public OooO0O0(I)[Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    .locals 0

    new-array p0, p1, [Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/OooOO0O;->OooO00o(Landroid/os/Parcel;)Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/OooOO0O;->OooO0O0(I)[Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    move-result-object p0

    return-object p0
.end method
