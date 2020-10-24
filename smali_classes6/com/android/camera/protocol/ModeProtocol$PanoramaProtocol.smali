.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xb0


# virtual methods
.method public abstract getCurrentDirection()I
.end method

.method public abstract getPreivewContainer()Landroid/view/ViewGroup;
.end method

.method public abstract initPreviewLayout(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract isShown()Z
.end method

.method public abstract onCaptureDirectionDecided(III)V
.end method

.method public abstract onPreviewMoving()V
.end method

.method public abstract requestRender()V
.end method

.method public abstract resetShootUI()V
.end method

.method public abstract setDirectionPosition(Landroid/graphics/Point;I)V
.end method

.method public abstract setDirectionTooFast(ZI)V
.end method

.method public abstract setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setShootUI()V
.end method

.method public abstract showSmallPreview(Z)V
.end method

.method public abstract toggleCaptureDirection()V
.end method
