.class public final synthetic Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$BQjrQQom4K3C98FNiI0fi7SvHfY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$BQjrQQom4K3C98FNiI0fi7SvHfY;->f$0:Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    iput p2, p0, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$BQjrQQom4K3C98FNiI0fi7SvHfY;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$BQjrQQom4K3C98FNiI0fi7SvHfY;->f$0:Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    iget v1, p0, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$BQjrQQom4K3C98FNiI0fi7SvHfY;->f$1:I

    invoke-static {v0, v1}, Landroid/accessibilityservice/FingerprintGestureController;->lambda$onGesture$1(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V

    return-void
.end method
