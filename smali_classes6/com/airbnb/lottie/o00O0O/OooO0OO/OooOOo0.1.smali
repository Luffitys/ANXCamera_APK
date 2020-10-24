.class public Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo0;
.super Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0o;
.source ""


# instance fields
.field private final OooO:Lcom/airbnb/lottie/o00ooo/OooOO0O;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0o;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/airbnb/lottie/o00ooo/OooOO0O;

    invoke-direct {p1}, Lcom/airbnb/lottie/o00ooo/OooOO0O;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo0;->OooO:Lcom/airbnb/lottie/o00ooo/OooOO0O;

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo0;->OooOOOO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Lcom/airbnb/lottie/o00ooo/OooOO0O;

    move-result-object p0

    return-object p0
.end method

.method public OooOOOO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Lcom/airbnb/lottie/o00ooo/OooOO0O;
    .locals 10

    iget-object v0, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/airbnb/lottie/o00ooo/OooOO0O;

    check-cast v1, Lcom/airbnb/lottie/o00ooo/OooOO0O;

    iget-object v2, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0:Lcom/airbnb/lottie/o00ooo/OooOO0;

    if-eqz v2, :cond_0

    iget v3, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o0:F

    iget-object p1, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0o:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o0()F

    move-result v8

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0o()F

    move-result v9

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0O0(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/o00ooo/OooOO0O;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo0;->OooO:Lcom/airbnb/lottie/o00ooo/OooOO0O;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooOO0O;->OooO0O0()F

    move-result v2

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00ooo/OooOO0O;->OooO0O0()F

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0(FFF)F

    move-result v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooOO0O;->OooO0OO()F

    move-result v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/o00ooo/OooOO0O;->OooO0OO()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0(FFF)F

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/airbnb/lottie/o00ooo/OooOO0O;->OooO0Oo(FF)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOo0;->OooO:Lcom/airbnb/lottie/o00ooo/OooOO0O;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
