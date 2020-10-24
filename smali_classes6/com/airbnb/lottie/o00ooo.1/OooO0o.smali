.class abstract Lcom/airbnb/lottie/o00ooo/OooO0o;
.super Lcom/airbnb/lottie/o00ooo/OooOO0;
.source ""


# instance fields
.field private final OooO0Oo:Ljava/lang/Object;

.field private final OooO0o:Landroid/view/animation/Interpolator;

.field private final OooO0o0:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/airbnb/lottie/o00ooo/OooO0o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/o00ooo/OooOO0;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/o00ooo/OooO0o;->OooO0Oo:Ljava/lang/Object;

    iput-object p2, p0, Lcom/airbnb/lottie/o00ooo/OooO0o;->OooO0o0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/airbnb/lottie/o00ooo/OooO0o;->OooO0o:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/airbnb/lottie/o00ooo/OooO0O0;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o00ooo/OooO0o;->OooO0o:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Lcom/airbnb/lottie/o00ooo/OooO0O0;->OooO0o0()F

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Lcom/airbnb/lottie/o00ooo/OooO0o;->OooO0Oo:Ljava/lang/Object;

    iget-object v1, p0, Lcom/airbnb/lottie/o00ooo/OooO0o;->OooO0o0:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1}, Lcom/airbnb/lottie/o00ooo/OooO0o;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method abstract OooO0o0(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
.end method
