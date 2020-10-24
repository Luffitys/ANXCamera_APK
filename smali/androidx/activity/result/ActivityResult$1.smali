.class Landroidx/activity/result/ActivityResult$1;
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
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/ActivityResult;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResult$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/ActivityResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/activity/result/ActivityResult;
    .locals 0

    new-array p0, p1, [Landroidx/activity/result/ActivityResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResult$1;->newArray(I)[Landroidx/activity/result/ActivityResult;

    move-result-object p0

    return-object p0
.end method
