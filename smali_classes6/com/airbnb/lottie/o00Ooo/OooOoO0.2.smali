.class Lcom/airbnb/lottie/o00Ooo/OooOoO0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static OooO00o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;
    .locals 3

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOO()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0o0()F

    move-result v1

    sget-object v2, Lcom/airbnb/lottie/o00Ooo/OooOoO;->OooO00o:Lcom/airbnb/lottie/o00Ooo/OooOoO;

    invoke-static {p0, p1, v1, v2, v0}, Lcom/airbnb/lottie/o00Ooo/OooOOo;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;FLcom/airbnb/lottie/o00Ooo/Oooo0o0;Z)Lcom/airbnb/lottie/o00ooo/OooO00o;

    move-result-object p0

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;

    invoke-direct {v0, p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO;-><init>(Lcom/airbnb/lottie/OooOOOO;Lcom/airbnb/lottie/o00ooo/OooO00o;)V

    return-object v0
.end method
