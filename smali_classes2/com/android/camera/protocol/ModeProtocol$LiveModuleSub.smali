.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$LiveModuleSub;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LiveModuleSub"
.end annotation


# virtual methods
.method public abstract getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
.end method

.method public abstract initPreview(IIILcom/android/camera/CameraScreenNail;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract trackVideoParams()V
.end method
