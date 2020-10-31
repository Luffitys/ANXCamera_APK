.class Landroid/os/storage/CrateInfo$1;
.super Ljava/lang/Object;
.source "CrateInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/CrateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/storage/CrateInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/CrateInfo;
    .registers 4

    new-instance v0, Landroid/os/storage/CrateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/storage/CrateInfo;-><init>(Landroid/os/storage/CrateInfo$1;)V

    invoke-virtual {v0, p1}, Landroid/os/storage/CrateInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/storage/CrateInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/CrateInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/storage/CrateInfo;
    .registers 3

    new-array v0, p1, [Landroid/os/storage/CrateInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/storage/CrateInfo$1;->newArray(I)[Landroid/os/storage/CrateInfo;

    move-result-object p1

    return-object p1
.end method
