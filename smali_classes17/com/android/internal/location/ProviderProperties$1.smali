.class Lcom/android/internal/location/ProviderProperties$1;
.super Ljava/lang/Object;
.source "ProviderProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ProviderProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/location/ProviderProperties;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;
    .registers 15

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v1

    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_13

    move v5, v2

    goto :goto_14

    :cond_13
    move v5, v1

    :goto_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1c

    move v6, v2

    goto :goto_1d

    :cond_1c
    move v6, v1

    :goto_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_25

    move v7, v2

    goto :goto_26

    :cond_25
    move v7, v1

    :goto_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2e

    move v8, v2

    goto :goto_2f

    :cond_2e
    move v8, v1

    :goto_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_37

    move v9, v2

    goto :goto_38

    :cond_37
    move v9, v1

    :goto_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_40

    move v10, v2

    goto :goto_41

    :cond_40
    move v10, v1

    :goto_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Lcom/android/internal/location/ProviderProperties;

    move-object v3, v2

    move v11, v0

    move v12, v1

    invoke-direct/range {v3 .. v12}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/location/ProviderProperties;
    .registers 3

    new-array v0, p1, [Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->newArray(I)[Lcom/android/internal/location/ProviderProperties;

    move-result-object p1

    return-object p1
.end method
