.class Landroid/hardware/camera2/impl/CameraMetadataNative$15;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/hardware/camera2/impl/GetCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    # invokes: Landroid/hardware/camera2/impl/CameraMetadataNative;->getGpsLocation()Landroid/location/Location;
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->access$1000(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
