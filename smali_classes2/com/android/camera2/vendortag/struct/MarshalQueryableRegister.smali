.class public Lcom/android/camera2/vendortag/struct/MarshalQueryableRegister;
.super Ljava/lang/Object;
.source "MarshalQueryableRegister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preload()V
    .locals 1

    new-instance v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/AWBFrameControl$MarshalQueryableAWBFrameControl;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/AWBFrameControl$MarshalQueryableAWBFrameControl;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    return-void
.end method
