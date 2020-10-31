.class Lcom/android/ims/RcsTypeIdPair$1;
.super Ljava/lang/Object;
.source "RcsTypeIdPair.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/RcsTypeIdPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/RcsTypeIdPair;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/RcsTypeIdPair;
    .registers 3

    new-instance v0, Lcom/android/ims/RcsTypeIdPair;

    invoke-direct {v0, p1}, Lcom/android/ims/RcsTypeIdPair;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/ims/RcsTypeIdPair$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/RcsTypeIdPair;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/ims/RcsTypeIdPair;
    .registers 3

    new-array v0, p1, [Lcom/android/ims/RcsTypeIdPair;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/ims/RcsTypeIdPair$1;->newArray(I)[Lcom/android/ims/RcsTypeIdPair;

    move-result-object p1

    return-object p1
.end method
