.class Landroid/app/admin/SystemUpdateInfo$1;
.super Ljava/lang/Object;
.source "SystemUpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SystemUpdateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/SystemUpdateInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SystemUpdateInfo;
    .registers 4

    new-instance v0, Landroid/app/admin/SystemUpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/admin/SystemUpdateInfo;-><init>(Landroid/os/Parcel;Landroid/app/admin/SystemUpdateInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/admin/SystemUpdateInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/admin/SystemUpdateInfo;
    .registers 3

    new-array v0, p1, [Landroid/app/admin/SystemUpdateInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/admin/SystemUpdateInfo$1;->newArray(I)[Landroid/app/admin/SystemUpdateInfo;

    move-result-object p1

    return-object p1
.end method
