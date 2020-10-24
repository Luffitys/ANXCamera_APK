.class Lcom/android/camera/ui/V6GestureRecognizer$1;
.super Lcom/android/camera/ui/zoom/ScaleGestureDetector;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;

.field final synthetic val$camera:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Landroid/content/Context;Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;Lcom/android/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$1;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    iput-object p4, p0, Lcom/android/camera/ui/V6GestureRecognizer$1;->val$camera:Lcom/android/camera/Camera;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;)V

    return-void
.end method


# virtual methods
.method public getScaledMinimumScalingSpan()I
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00oO00o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer$1;->val$camera:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getScaledMinimumScalingSpan(Landroid/content/Context;)I

    move-result p0

    return p0
.end method
