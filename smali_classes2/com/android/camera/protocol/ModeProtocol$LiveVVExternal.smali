.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;
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
    name = "LiveVVExternal"
.end annotation


# virtual methods
.method public abstract combineVideoAudio(Ljava/lang/String;)V
.end method

.method public abstract getSegmentPath(I)Ljava/lang/String;
.end method

.method public abstract pausePlay()V
.end method

.method public abstract prepare(Lcom/android/camera/fragment/vv/VVItem;)V
.end method

.method public abstract resumePlay()V
.end method

.method public abstract startPlay(Landroid/view/Surface;)V
.end method
