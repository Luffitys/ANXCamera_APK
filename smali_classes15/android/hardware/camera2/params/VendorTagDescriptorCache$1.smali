.class Landroid/hardware/camera2/params/VendorTagDescriptorCache$1;
.super Ljava/lang/Object;
.source "VendorTagDescriptorCache.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/VendorTagDescriptorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/camera2/params/VendorTagDescriptorCache;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    invoke-direct {v1, p1, v0}, Landroid/hardware/camera2/params/VendorTagDescriptorCache;-><init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/VendorTagDescriptorCache$1;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-object v0, v1

    return-object v0

    :catch_8
    move-exception v1

    const-string v2, "VendorTagDescriptorCache"

    const-string v3, "Exception creating VendorTagDescriptorCache from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptorCache$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    .registers 3

    new-array v0, p1, [Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptorCache$1;->newArray(I)[Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    move-result-object p1

    return-object p1
.end method
