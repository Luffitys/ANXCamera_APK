.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xaa


# virtual methods
.method public abstract getMaxZoomRatio()F
.end method

.method public abstract getMinZoomRatio()F
.end method

.method public abstract getZoomRatio()F
.end method

.method public abstract notifyDualZoom(Z)V
.end method

.method public abstract notifyZooming(Z)V
.end method

.method public abstract onZoomRatioChanged(FI)V
.end method

.method public abstract onZoomSwitchCamera()V
.end method

.method public abstract setMaxZoomRatio(F)V
.end method

.method public abstract setMinZoomRatio(F)V
.end method

.method public abstract zoomIn(F)Z
.end method

.method public abstract zoomOut(F)Z
.end method
