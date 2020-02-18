.class public final synthetic Lcom/android/camera/ui/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic Ab:F

.field private final synthetic Bb:F

.field private final synthetic Cb:F

.field private final synthetic Db:F

.field private final synthetic wb:Lcom/android/camera/ui/MutiStateButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/MutiStateButton;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/a;->wb:Lcom/android/camera/ui/MutiStateButton;

    iput p2, p0, Lcom/android/camera/ui/a;->Ab:F

    iput p3, p0, Lcom/android/camera/ui/a;->Bb:F

    iput p4, p0, Lcom/android/camera/ui/a;->Cb:F

    iput p5, p0, Lcom/android/camera/ui/a;->Db:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/a;->wb:Lcom/android/camera/ui/MutiStateButton;

    iget v1, p0, Lcom/android/camera/ui/a;->Ab:F

    iget v2, p0, Lcom/android/camera/ui/a;->Bb:F

    iget v3, p0, Lcom/android/camera/ui/a;->Cb:F

    iget v4, p0, Lcom/android/camera/ui/a;->Db:F

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/MutiStateButton;->a(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
