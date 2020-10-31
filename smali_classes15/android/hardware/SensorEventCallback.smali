.class public abstract Landroid/hardware/SensorEventCallback;
.super Ljava/lang/Object;
.source "SensorEventCallback.java"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onFlushCompleted(Landroid/hardware/Sensor;)V
    .registers 2

    return-void
.end method

.method public onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V
    .registers 2

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2

    return-void
.end method
