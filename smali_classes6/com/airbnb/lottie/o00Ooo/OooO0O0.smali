.class public Lcom/airbnb/lottie/o00Ooo/OooO0O0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Lcom/airbnb/lottie/parser/moshi/OooO00o;

.field private static OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooO00o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "a"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/OooO00o;->OooO00o([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/OooO00o;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/o00Ooo/OooO0O0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooO00o;

    const-string v0, "fc"

    const-string v1, "sc"

    const-string v2, "sw"

    const-string v3, "t"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/OooO00o;->OooO00o([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/OooO00o;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/o00Ooo/OooO0O0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooO00o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooOO0O;
    .locals 3

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0OO()V

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0oO()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/airbnb/lottie/o00Ooo/OooO0O0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooO00o;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOOo(Lcom/airbnb/lottie/parser/moshi/OooO00o;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOo0()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOo()V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/o00Ooo/OooO0O0;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooOO0O;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0o0()V

    if-nez v1, :cond_2

    new-instance p0, Lcom/airbnb/lottie/model/OooOO0/OooOO0O;

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/airbnb/lottie/model/OooOO0/OooOO0O;-><init>(Lcom/airbnb/lottie/model/OooOO0/OooO00o;Lcom/airbnb/lottie/model/OooOO0/OooO00o;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;)V

    return-object p0

    :cond_2
    return-object v1
.end method

.method private static OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooOO0O;
    .locals 6

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0OO()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0oO()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/airbnb/lottie/o00Ooo/OooO0O0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooO00o;

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOOo(Lcom/airbnb/lottie/parser/moshi/OooO00o;)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOo0()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOo()V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO0o0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO0o0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO0OO(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooO00o;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/o00Ooo/OooO0Oo;->OooO0OO(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/OooOO0/OooO00o;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0o0()V

    new-instance p0, Lcom/airbnb/lottie/model/OooOO0/OooOO0O;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/airbnb/lottie/model/OooOO0/OooOO0O;-><init>(Lcom/airbnb/lottie/model/OooOO0/OooO00o;Lcom/airbnb/lottie/model/OooOO0/OooO00o;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;)V

    return-object p0
.end method
