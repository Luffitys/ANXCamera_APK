.class public interface abstract Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;
.super Ljava/lang/Object;
.source "Camera2Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/Camera2Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HdrCheckerCallback"
.end annotation


# virtual methods
.method public abstract isHdrSceneDetectionStarted()Z
.end method

.method public abstract onHdrMotionDetectionResult(Z)V
.end method

.method public abstract onHdrSceneChanged(Z)V
.end method
