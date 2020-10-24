.class public interface abstract Lcom/android/camera/CameraScreenNail$NailListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;


# virtual methods
.method public abstract getOrientation()I
.end method

.method public abstract isKeptBitmapTexture()Z
.end method

.method public abstract onFrameAvailable(I)V
.end method

.method public abstract onPreviewPixelsRead([BII)V
.end method

.method public abstract onPreviewTextureCopied()V
.end method
