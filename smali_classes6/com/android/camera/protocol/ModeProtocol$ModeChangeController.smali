.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xb3


# virtual methods
.method public abstract canSwipeChangeMode()Z
.end method

.method public varargs abstract changeCamera([Landroid/view/View;)V
.end method

.method public abstract changeModeByGravity(II)V
.end method

.method public abstract changeModeByNewMode(ILjava/lang/String;I)V
.end method

.method public abstract modeChanging()Z
.end method

.method public abstract resetToCommonMode()V
.end method
