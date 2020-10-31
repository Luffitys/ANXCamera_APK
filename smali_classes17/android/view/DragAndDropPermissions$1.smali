.class Landroid/view/DragAndDropPermissions$1;
.super Ljava/lang/Object;
.source "DragAndDropPermissions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DragAndDropPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/DragAndDropPermissions;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/DragAndDropPermissions;
    .registers 4

    new-instance v0, Landroid/view/DragAndDropPermissions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/DragAndDropPermissions;-><init>(Landroid/os/Parcel;Landroid/view/DragAndDropPermissions$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/DragAndDropPermissions$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DragAndDropPermissions;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/DragAndDropPermissions;
    .registers 3

    new-array v0, p1, [Landroid/view/DragAndDropPermissions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/DragAndDropPermissions$1;->newArray(I)[Landroid/view/DragAndDropPermissions;

    move-result-object p1

    return-object p1
.end method
