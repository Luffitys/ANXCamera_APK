.class final Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VirtualDisplayCallbackDelegate"
.end annotation


# static fields
.field public static final MSG_DISPLAY_PAUSED:I = 0x0

.field public static final MSG_DISPLAY_RESUMED:I = 0x1

.field public static final MSG_DISPLAY_STOPPED:I = 0x2


# instance fields
.field private final mCallback:Landroid/hardware/display/VirtualDisplay$Callback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V
    .registers 6

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_1d

    :cond_b
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onStopped()V

    goto :goto_1d

    :cond_11
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onResumed()V

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onPaused()V

    nop

    :goto_1d
    return-void
.end method
