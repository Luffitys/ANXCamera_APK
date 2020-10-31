.class Landroid/view/InsetsController$PendingControlRequest;
.super Ljava/lang/Object;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingControlRequest"
.end annotation


# instance fields
.field final animationType:I

.field final cancellationSignal:Landroid/os/CancellationSignal;

.field final durationMs:J

.field final interpolator:Landroid/view/animation/Interpolator;

.field final layoutInsetsDuringAnimation:I

.field final listener:Landroid/view/WindowInsetsAnimationControlListener;

.field final types:I

.field final useInsetsAnimationThread:Z


# direct methods
.method constructor <init>(ILandroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IILandroid/os/CancellationSignal;Z)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iput-object p2, p0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    iput-wide p3, p0, Landroid/view/InsetsController$PendingControlRequest;->durationMs:J

    iput-object p5, p0, Landroid/view/InsetsController$PendingControlRequest;->interpolator:Landroid/view/animation/Interpolator;

    iput p6, p0, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iput p7, p0, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iput-object p8, p0, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    iput-boolean p9, p0, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    return-void
.end method
