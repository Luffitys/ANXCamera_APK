.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xd1


# virtual methods
.method public abstract combineVideoAudio(Ljava/lang/String;Lcom/ss/android/vesdk/VECommonCallback;Lcom/ss/android/vesdk/VECommonCallback;)V
.end method

.method public abstract init(Landroid/view/TextureView;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VECommonCallback;Lcom/ss/android/vesdk/VECommonCallback;)Z
.end method

.method public abstract onDestory()V
.end method

.method public abstract pausePlay()V
.end method

.method public abstract resumePlay()V
.end method

.method public abstract setRecordParameter(III)V
.end method

.method public abstract startPlay()V
.end method
