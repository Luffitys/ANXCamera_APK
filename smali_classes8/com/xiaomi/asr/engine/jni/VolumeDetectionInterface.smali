.class public Lcom/xiaomi/asr/engine/jni/VolumeDetectionInterface;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "volume-detection"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native vdDestroy()V
.end method

.method public native vdDetection([BI[F)I
.end method

.method public native vdInit()I
.end method

.method public native vdReset()V
.end method

.method public native vdStopDetection([F)I
.end method
