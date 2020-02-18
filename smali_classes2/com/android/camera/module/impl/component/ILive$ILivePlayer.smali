.class public interface abstract Lcom/android/camera/module/impl/component/ILive$ILivePlayer;
.super Ljava/lang/Object;
.source "ILive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/ILive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILivePlayer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/impl/component/ILive$ILivePlayer$ComposeState;,
        Lcom/android/camera/module/impl/component/ILive$ILivePlayer$PlayerState;
    }
.end annotation


# virtual methods
.method public abstract cancelCompose()V
.end method

.method public abstract init(IILjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract pausePlayer()V
.end method

.method public abstract release()V
.end method

.method public abstract resumePlayer()V
.end method

.method public abstract setStateListener(Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;)V
.end method

.method public abstract startCompose(Ljava/lang/String;)V
.end method

.method public abstract startPlayer(Landroid/graphics/SurfaceTexture;II)V
.end method

.method public abstract stopPlayer()V
.end method
