.class Lcom/airbnb/lottie/Oooo0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic OooO00o:Lcom/airbnb/lottie/o000oOoO;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/o000oOoO;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/Oooo0O0;->OooO00o:Lcom/airbnb/lottie/o000oOoO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/airbnb/lottie/Oooo0O0;->OooO00o:Lcom/airbnb/lottie/o000oOoO;

    invoke-static {p1}, Lcom/airbnb/lottie/o000oOoO;->OooO00o(Lcom/airbnb/lottie/o000oOoO;)Lcom/airbnb/lottie/model/layer/OooO0o0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/airbnb/lottie/Oooo0O0;->OooO00o:Lcom/airbnb/lottie/o000oOoO;

    invoke-static {p1}, Lcom/airbnb/lottie/o000oOoO;->OooO00o(Lcom/airbnb/lottie/o000oOoO;)Lcom/airbnb/lottie/model/layer/OooO0o0;

    move-result-object p1

    iget-object p0, p0, Lcom/airbnb/lottie/Oooo0O0;->OooO00o:Lcom/airbnb/lottie/o000oOoO;

    invoke-static {p0}, Lcom/airbnb/lottie/o000oOoO;->OooO0O0(Lcom/airbnb/lottie/o000oOoO;)Lcom/airbnb/lottie/o00o0O/OooO0o0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooO0oo()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo000(F)V

    :cond_0
    return-void
.end method
