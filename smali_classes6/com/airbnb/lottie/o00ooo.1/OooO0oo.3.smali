.class public Lcom/airbnb/lottie/o00ooo/OooO0oo;
.super Lcom/airbnb/lottie/o00ooo/OooOO0;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/o00ooo/OooOO0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Lcom/airbnb/lottie/o00ooo/OooO0O0;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00ooo/OooO0oo;->OooO0o(Lcom/airbnb/lottie/o00ooo/OooO0O0;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public OooO0o(Lcom/airbnb/lottie/o00ooo/OooO0O0;)Ljava/lang/Integer;
    .locals 3

    invoke-virtual {p1}, Lcom/airbnb/lottie/o00ooo/OooO0O0;->OooO0oO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/o00ooo/OooO0O0;->OooO0O0()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/o00ooo/OooO0O0;->OooO0OO()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0O(IIF)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00ooo/OooO0oo;->OooO0o0(Lcom/airbnb/lottie/o00ooo/OooO0O0;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public OooO0o0(Lcom/airbnb/lottie/o00ooo/OooO0O0;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0OO:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
