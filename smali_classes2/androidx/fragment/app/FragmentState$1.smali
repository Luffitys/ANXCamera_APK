.class Landroidx/fragment/app/FragmentState$1;
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
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/FragmentState;
    .locals 0

    new-instance p0, Landroidx/fragment/app/FragmentState;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/FragmentState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/fragment/app/FragmentState;
    .locals 0

    new-array p0, p1, [Landroidx/fragment/app/FragmentState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentState$1;->newArray(I)[Landroidx/fragment/app/FragmentState;

    move-result-object p0

    return-object p0
.end method
