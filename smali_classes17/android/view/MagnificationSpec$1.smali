.class Landroid/view/MagnificationSpec$1;
.super Ljava/lang/Object;
.source "MagnificationSpec.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MagnificationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/MagnificationSpec;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/MagnificationSpec;
    .registers 3

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    # invokes: Landroid/view/MagnificationSpec;->initFromParcel(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Landroid/view/MagnificationSpec;->access$000(Landroid/view/MagnificationSpec;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/MagnificationSpec$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/MagnificationSpec;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/MagnificationSpec;
    .registers 3

    new-array v0, p1, [Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/MagnificationSpec$1;->newArray(I)[Landroid/view/MagnificationSpec;

    move-result-object p1

    return-object p1
.end method
