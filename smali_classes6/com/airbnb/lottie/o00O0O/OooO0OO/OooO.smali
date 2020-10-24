.class public Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;
.super Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0o;
.source ""


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0o;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method bridge synthetic OooO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;->OooOOo0(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public OooOOOO()F
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0O0()Lcom/airbnb/lottie/o00ooo/OooO00o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0Oo()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;->OooOOOo(Lcom/airbnb/lottie/o00ooo/OooO00o;F)F

    move-result p0

    return p0
.end method

.method OooOOOo(Lcom/airbnb/lottie/o00ooo/OooO00o;F)F
    .locals 9

    iget-object v0, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0:Lcom/airbnb/lottie/o00ooo/OooOO0;

    if-eqz v1, :cond_0

    iget v2, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o0:F

    iget-object v0, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    iget-object v5, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0()F

    move-result v7

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v8

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0O0(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o()F

    move-result p0

    invoke-virtual {p1}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO()F

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0(FFF)F

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method OooOOo0(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;->OooOOOo(Lcom/airbnb/lottie/o00ooo/OooO00o;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
