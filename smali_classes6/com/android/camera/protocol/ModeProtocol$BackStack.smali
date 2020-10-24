.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$BackStack;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xab


# virtual methods
.method public abstract addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
.end method

.method public abstract handleBackStackFromKeyBack()Z
.end method

.method public abstract handleBackStackFromLongPressShutter()V
.end method

.method public abstract handleBackStackFromShutter()V
.end method

.method public abstract handleBackStackFromTapDown(II)Z
.end method

.method public abstract handleBackStackFromTimerBurstShutter()V
.end method

.method public abstract removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
.end method
