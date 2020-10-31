.class Landroid/content/pm/permission/SplitPermissionInfoParcelable$1;
.super Ljava/lang/Object;
.source "SplitPermissionInfoParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/permission/SplitPermissionInfoParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-direct {v3, v0, v1, v2}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/permission/SplitPermissionInfoParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    .registers 3

    new-array v0, p1, [Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/permission/SplitPermissionInfoParcelable$1;->newArray(I)[Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    move-result-object p1

    return-object p1
.end method
