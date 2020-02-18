.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;
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
    name = "SubtitleRecording"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xe7


# virtual methods
.method public abstract checkNetWorkStatus()V
.end method

.method public abstract getSubtitleContent()Ljava/lang/String;
.end method

.method public abstract handleSubtitleRecordingPause()V
.end method

.method public abstract handleSubtitleRecordingResume()V
.end method

.method public abstract handleSubtitleRecordingStart()V
.end method

.method public abstract handleSubtitleRecordingStop()V
.end method

.method public abstract initPermission()V
.end method
