.class public Lcom/airbnb/lottie/o00Ooo/OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00Ooo/Oooo0o0;


# static fields
.field public static final OooO00o:Lcom/airbnb/lottie/o00Ooo/OooO0o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/o00Ooo/OooO0o;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00Ooo/OooO0o;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/o00Ooo/OooO0o;->OooO00o:Lcom/airbnb/lottie/o00Ooo/OooO0o;

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

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00Ooo/OooO0o;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Ljava/lang/Integer;
    .locals 8

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOO()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object p0

    sget-object p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->OooO00o:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne p0, p2, :cond_0

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

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO()D

    move-result-wide v6

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0Oo()V

    :cond_2
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, p0

    if-gtz p2, :cond_3

    cmpg-double p2, v2, p0

    if-gtz p2, :cond_3

    cmpg-double p2, v4, p0

    if-gtz p2, :cond_3

    cmpg-double p0, v6, p0

    if-gtz p0, :cond_3

    const-wide p0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p0

    mul-double/2addr v2, p0

    mul-double/2addr v4, p0

    mul-double/2addr v6, p0

    :cond_3
    double-to-int p0, v6

    double-to-int p1, v0

    double-to-int p2, v2

    double-to-int v0, v4

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
