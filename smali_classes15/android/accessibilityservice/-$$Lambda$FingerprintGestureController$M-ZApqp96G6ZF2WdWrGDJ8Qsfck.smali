.class public final synthetic Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$M-ZApqp96G6ZF2WdWrGDJ8Qsfck;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$M-ZApqp96G6ZF2WdWrGDJ8Qsfck;->f$0:Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    iput-boolean p2, p0, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$M-ZApqp96G6ZF2WdWrGDJ8Qsfck;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$M-ZApqp96G6ZF2WdWrGDJ8Qsfck;->f$0:Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    iget-boolean v1, p0, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$M-ZApqp96G6ZF2WdWrGDJ8Qsfck;->f$1:Z

    invoke-static {v0, v1}, Landroid/accessibilityservice/FingerprintGestureController;->lambda$onGestureDetectionActiveChanged$0(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V

    return-void
.end method
