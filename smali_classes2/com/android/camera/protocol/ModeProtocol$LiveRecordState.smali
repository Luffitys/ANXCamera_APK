.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$LiveRecordState;
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
    name = "LiveRecordState"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xf5


# virtual methods
.method public abstract canRecordingStop()Z
.end method

.method public abstract getSegmentSize()I
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isRecordingPaused()Z
.end method
