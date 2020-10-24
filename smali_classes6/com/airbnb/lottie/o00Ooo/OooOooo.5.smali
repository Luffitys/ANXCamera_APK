.class public Lcom/airbnb/lottie/o00Ooo/OooOooo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00Ooo/Oooo0o0;


# static fields
.field public static final OooO00o:Lcom/airbnb/lottie/o00Ooo/OooOooo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/o00Ooo/OooOooo;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00Ooo/OooOooo;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/o00Ooo/OooOooo;->OooO00o:Lcom/airbnb/lottie/o00Ooo/OooOooo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00Ooo/OooOooo;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Lcom/airbnb/lottie/o00ooo/OooOO0O;

    move-result-object p0

    return-object p0
.end method

.method public OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Lcom/airbnb/lottie/o00ooo/OooOO0O;
    .locals 3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOO()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->OooO00o:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0O0()V

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0oO()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOo()V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0Oo()V

    :cond_3
    new-instance p0, Lcom/airbnb/lottie/o00ooo/OooOO0O;

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/o00ooo/OooOO0O;-><init>(FF)V

    return-object p0
.end method
