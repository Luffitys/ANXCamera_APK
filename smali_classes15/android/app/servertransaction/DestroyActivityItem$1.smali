.class Landroid/app/servertransaction/DestroyActivityItem$1;
.super Ljava/lang/Object;
.source "DestroyActivityItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/servertransaction/DestroyActivityItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/servertransaction/DestroyActivityItem;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/DestroyActivityItem;
    .registers 4

    new-instance v0, Landroid/app/servertransaction/DestroyActivityItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/servertransaction/DestroyActivityItem;-><init>(Landroid/os/Parcel;Landroid/app/servertransaction/DestroyActivityItem$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/servertransaction/DestroyActivityItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/servertransaction/DestroyActivityItem;
    .registers 3

    new-array v0, p1, [Landroid/app/servertransaction/DestroyActivityItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/servertransaction/DestroyActivityItem$1;->newArray(I)[Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object p1

    return-object p1
.end method
