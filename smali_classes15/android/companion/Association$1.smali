.class Landroid/companion/Association$1;
.super Ljava/lang/Object;
.source "Association.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/Association;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/companion/Association;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/companion/Association;
    .registers 3

    new-instance v0, Landroid/companion/Association;

    invoke-direct {v0, p1}, Landroid/companion/Association;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/companion/Association$1;->createFromParcel(Landroid/os/Parcel;)Landroid/companion/Association;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/companion/Association;
    .registers 3

    new-array v0, p1, [Landroid/companion/Association;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/companion/Association$1;->newArray(I)[Landroid/companion/Association;

    move-result-object p1

    return-object p1
.end method
