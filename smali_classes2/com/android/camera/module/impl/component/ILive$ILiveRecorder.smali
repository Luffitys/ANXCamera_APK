.class public interface abstract Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;
.super Ljava/lang/Object;
.source "ILive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/ILive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILiveRecorder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/impl/component/ILive$ILiveRecorder$State;
    }
.end annotation


# virtual methods
.method public abstract deletePreSegment()V
.end method

.method public abstract genInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
.end method

.method public abstract getAudioPath()Ljava/lang/String;
.end method

.method public abstract getLiveSegments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartTime()J
.end method

.method public abstract init(II)V
.end method

.method public abstract pauseRecording()V
.end method

.method public abstract release()V
.end method

.method public abstract resumeRecording()V
.end method

.method public abstract setAudioPath(Ljava/lang/String;)V
.end method

.method public abstract setFilterPath(Ljava/lang/String;)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setSpeed(F)V
.end method

.method public abstract startRecording()V
.end method

.method public abstract stopRecording()V
.end method
