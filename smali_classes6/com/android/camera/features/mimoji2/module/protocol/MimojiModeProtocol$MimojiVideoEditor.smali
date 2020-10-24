.class public interface abstract Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xfc


# virtual methods
.method public abstract cancelVideo2gif()V
.end method

.method public abstract changeTimbre()V
.end method

.method public abstract combineVideoAudio(Ljava/lang/String;I)V
.end method

.method public abstract init(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;)Z
.end method

.method public abstract isAvaliable()Z
.end method

.method public abstract isComposing()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onDestory()V
.end method

.method public abstract pausePlay()Z
.end method

.method public abstract resumePlay()Z
.end method

.method public abstract setRecordParameter(III)V
.end method

.method public abstract startPlay()V
.end method

.method public abstract video2gif(Ljava/util/List;)V
.end method
