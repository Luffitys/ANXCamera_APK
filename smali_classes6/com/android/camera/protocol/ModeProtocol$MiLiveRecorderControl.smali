.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x3

.field public static final STATE_PREVIEW:I = 0x1

.field public static final STATE_RECORDING:I = 0x2


# virtual methods
.method public abstract deleteLastFragment()V
.end method

.method public abstract getCurState()I
.end method

.method public abstract onSurfaceTextureReleased()V
.end method

.method public abstract onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
.end method

.method public abstract pauseRecording()V
.end method

.method public abstract resumeRecording()V
.end method

.method public abstract setRecorderListener(Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl$IRecorderListener;)V
.end method

.method public abstract startRecording()V
.end method

.method public abstract stopRecording()V
.end method
