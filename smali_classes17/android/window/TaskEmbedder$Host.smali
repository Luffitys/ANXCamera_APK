.class public interface abstract Landroid/window/TaskEmbedder$Host;
.super Ljava/lang/Object;
.source "TaskEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation


# virtual methods
.method public abstract canReceivePointerEvents()Z
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPositionInWindow()Landroid/graphics/Point;
.end method

.method public abstract getScreenBounds()Landroid/graphics/Rect;
.end method

.method public abstract getScreenToTaskMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getTapExcludeRegion()Landroid/graphics/Region;
.end method

.method public abstract getWidth()I
.end method

.method public abstract getWindow()Landroid/view/IWindow;
.end method

.method public abstract onTaskBackgroundColorChanged(Landroid/window/TaskEmbedder;I)V
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method
