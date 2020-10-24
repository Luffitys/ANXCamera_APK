.class public interface abstract Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xf7


# virtual methods
.method public abstract createEmoticonPicture(Ljava/util/List;)V
.end method

.method public abstract createEmoticonThumbnail()V
.end method

.method public abstract createEmoticonVideo(Ljava/util/List;)V
.end method

.method public abstract directlyEnterEditMode(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;I)V
.end method

.method public abstract onDeviceRotationChange(I)V
.end method

.method public abstract onTypeConfigSelect(I)V
.end method

.method public abstract quitAndSaveEdit(Z)V
.end method

.method public abstract quitCoverEmoticon()V
.end method

.method public abstract reInitMimojiEdit()V
.end method

.method public abstract releaseRender()V
.end method

.method public abstract requestRender(Z)V
.end method

.method public abstract resetClickEnable(Z)V
.end method

.method public abstract resetConfig()V
.end method

.method public abstract showEmoticon()V
.end method

.method public abstract startMimojiEdit(I)V
.end method
