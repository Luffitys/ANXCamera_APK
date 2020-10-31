.class public abstract Landroid/hardware/input/InputManagerInternal;
.super Ljava/lang/Object;
.source "InputManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract injectInputEvent(Landroid/view/InputEvent;I)Z
.end method

.method public abstract setDisplayViewports(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setInteractive(Z)V
.end method

.method public abstract setPulseGestureEnabled(Z)V
.end method

.method public abstract toggleCapsLock(I)V
.end method

.method public abstract transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z
.end method
