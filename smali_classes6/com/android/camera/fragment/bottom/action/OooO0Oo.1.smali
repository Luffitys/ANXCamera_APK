.class public final synthetic Lcom/android/camera/fragment/bottom/action/OooO0Oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/ui/AdjustAnimationView;

.field public final synthetic OooO0O0:Lcom/android/camera/ui/AnimationView;

.field public final synthetic OooO0OO:Landroid/view/View;

.field public final synthetic OooO0Oo:F

.field public final synthetic OooO0o0:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/OooO0Oo;->OooO00o:Lcom/android/camera/ui/AdjustAnimationView;

    iput-object p2, p0, Lcom/android/camera/fragment/bottom/action/OooO0Oo;->OooO0O0:Lcom/android/camera/ui/AnimationView;

    iput-object p3, p0, Lcom/android/camera/fragment/bottom/action/OooO0Oo;->OooO0OO:Landroid/view/View;

    iput p4, p0, Lcom/android/camera/fragment/bottom/action/OooO0Oo;->OooO0Oo:F

    iput p5, p0, Lcom/android/camera/fragment/bottom/action/OooO0Oo;->OooO0o0:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/OooO0Oo;->OooO00o:Lcom/android/camera/ui/AdjustAnimationView;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/OooO0Oo;->OooO0O0:Lcom/android/camera/ui/AnimationView;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/OooO0Oo;->OooO0OO:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/fragment/bottom/action/OooO0Oo;->OooO0Oo:F

    iget p0, p0, Lcom/android/camera/fragment/bottom/action/OooO0Oo;->OooO0o0:F

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->OooOO0(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;FF)V

    return-void
.end method
