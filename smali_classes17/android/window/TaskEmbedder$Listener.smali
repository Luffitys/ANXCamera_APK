.class public interface abstract Landroid/window/TaskEmbedder$Listener;
.super Ljava/lang/Object;
.source "TaskEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onBackPressedOnTaskRoot(I)V
    .registers 2

    return-void
.end method

.method public onInitialized()V
    .registers 1

    return-void
.end method

.method public onReleased()V
    .registers 1

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 3

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .registers 2

    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .registers 2

    return-void
.end method

.method public onTaskVisibilityChanged(IZ)V
    .registers 3

    return-void
.end method
