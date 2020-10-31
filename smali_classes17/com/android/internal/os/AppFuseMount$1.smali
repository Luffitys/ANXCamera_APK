.class Lcom/android/internal/os/AppFuseMount$1;
.super Ljava/lang/Object;
.source "AppFuseMount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/AppFuseMount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/os/AppFuseMount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/AppFuseMount;
    .registers 5

    new-instance v0, Lcom/android/internal/os/AppFuseMount;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/os/AppFuseMount$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/AppFuseMount;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/os/AppFuseMount;
    .registers 3

    new-array v0, p1, [Lcom/android/internal/os/AppFuseMount;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/os/AppFuseMount$1;->newArray(I)[Lcom/android/internal/os/AppFuseMount;

    move-result-object p1

    return-object p1
.end method
