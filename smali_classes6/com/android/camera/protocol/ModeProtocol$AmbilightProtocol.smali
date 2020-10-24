.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0x1a4


# virtual methods
.method public abstract getAutoFinish()Z
.end method

.method public abstract getDuration()I
.end method

.method public abstract getPressAnimationEnabled()Z
.end method

.method public abstract onSceneModeSelect(I)V
    .param p1    # I
        .annotation build Lcom/android/camera/ambilight/AmbilightEngine$AmbilightSceneMode;
        .end annotation
    .end param
.end method

.method public abstract onShutterAnimationEnd()V
.end method

.method public abstract shouldDisableStopButton()Z
.end method
