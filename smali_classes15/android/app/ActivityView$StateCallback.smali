.class public abstract Landroid/app/ActivityView$StateCallback;
.super Ljava/lang/Object;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onActivityViewDestroyed(Landroid/app/ActivityView;)V
.end method

.method public abstract onActivityViewReady(Landroid/app/ActivityView;)V
.end method

.method public onBackPressedOnTaskRoot(I)V
    .registers 2

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
