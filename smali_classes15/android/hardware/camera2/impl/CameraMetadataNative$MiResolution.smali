.class Landroid/hardware/camera2/impl/CameraMetadataNative$MiResolution;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiResolution"
.end annotation


# instance fields
.field public configurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field public minFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field public stallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;)V
    .registers 5

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$MiResolution;->this$0:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$MiResolution;->configurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$MiResolution;->minFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$MiResolution;->stallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    return-void
.end method
