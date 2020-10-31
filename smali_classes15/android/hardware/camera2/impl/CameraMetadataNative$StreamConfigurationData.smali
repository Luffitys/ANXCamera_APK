.class Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamConfigurationData"
.end annotation


# instance fields
.field minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->this$0:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-void
.end method
