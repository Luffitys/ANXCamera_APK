.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MimojiEditor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xe0


# virtual methods
.method public abstract directlyEnterEditMode(Lcom/android/camera/fragment/mimoji/MimojiInfo;I)V
.end method

.method public abstract goBack(ZZ)V
.end method

.method public abstract onDeviceRotationChange(I)V
.end method

.method public abstract onTypeConfigSelect(I)V
.end method

.method public abstract releaseRender()V
.end method

.method public abstract requestRender(Z)V
.end method

.method public abstract resetClickEnable(Z)V
.end method

.method public abstract resetConfig()V
.end method

.method public abstract startMimojiEdit(ZI)V
.end method
