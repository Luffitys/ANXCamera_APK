.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;
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
    name = "LiveRecordControl"
.end annotation


# static fields
.field public static final STEP_IGNORE:I = 0x1

.field public static final STEP_START:I = 0x2

.field public static final STEP_STOP:I = 0x3


# virtual methods
.method public abstract canFinishRecording()Z
.end method

.method public abstract deleteLastFragment()V
.end method

.method public abstract getNextRecordStep()I
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isRecordingPaused()Z
.end method

.method public abstract onRecordingNewFragmentFinished()V
.end method

.method public abstract startRecordingNewFragment()V
.end method

.method public abstract startRecordingNextFragment()V
.end method

.method public abstract stopRecording()V
.end method
