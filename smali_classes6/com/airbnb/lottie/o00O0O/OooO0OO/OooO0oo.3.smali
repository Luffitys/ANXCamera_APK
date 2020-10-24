.class public Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oo;
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

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oo;->OooOOo0(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public OooOOOO()I
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0O0()Lcom/airbnb/lottie/o00ooo/OooO00o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0Oo()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oo;->OooOOOo(Lcom/airbnb/lottie/o00ooo/OooO00o;F)I

    move-result p0

    return p0
.end method

.method public OooOOOo(Lcom/airbnb/lottie/o00ooo/OooO00o;F)I
    .locals 10

    iget-object v0, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0:Lcom/airbnb/lottie/o00ooo/OooOO0;

    if-eqz v2, :cond_0

    iget v3, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o0:F

    iget-object p1, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0()F

    move-result v8

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v9

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0O0(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p2, p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooO0O0(FFF)F

    move-result p0

    invoke-static {p0, v0, v1}, Lcom/airbnb/lottie/o00o0O/OooO0O0;->OooO0OO(FII)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method OooOOo0(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oo;->OooOOOo(Lcom/airbnb/lottie/o00ooo/OooO00o;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
