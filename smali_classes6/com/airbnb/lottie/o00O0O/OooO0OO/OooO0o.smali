.class final Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0Oo;


# instance fields
.field private final OooO00o:Lcom/airbnb/lottie/o00ooo/OooO00o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private OooO0O0:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o;->OooO0O0:F

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/o00ooo/OooO00o;

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o;->OooO00o:Lcom/airbnb/lottie/o00ooo/OooO00o;

    return-void
.end method


# virtual methods
.method public OooO00o(F)Z
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o;->OooO0O0:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o;->OooO0O0:F

    const/4 p0, 0x0

    return p0
.end method

.method public OooO0O0()Lcom/airbnb/lottie/o00ooo/OooO00o;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o;->OooO00o:Lcom/airbnb/lottie/o00ooo/OooO00o;

    return-object p0
.end method

.method public OooO0OO(F)Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o;->OooO00o:Lcom/airbnb/lottie/o00ooo/OooO00o;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0oo()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public OooO0Oo()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o;->OooO00o:Lcom/airbnb/lottie/o00ooo/OooO00o;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0()F

    move-result p0

    return p0
.end method

.method public OooO0o0()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0o;->OooO00o:Lcom/airbnb/lottie/o00ooo/OooO00o;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o0()F

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
