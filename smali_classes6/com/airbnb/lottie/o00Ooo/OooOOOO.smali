.class public Lcom/airbnb/lottie/o00Ooo/OooOOOO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00Ooo/Oooo0o0;


# static fields
.field public static final OooO00o:Lcom/airbnb/lottie/o00Ooo/OooOOOO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/o00Ooo/OooOOOO;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00Ooo/OooOOOO;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/o00Ooo/OooOOOO;->OooO00o:Lcom/airbnb/lottie/o00Ooo/OooOOOO;

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

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00Ooo/OooOOOO;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lcom/airbnb/lottie/o00Ooo/OooOOo0;->OooO0oO(Lcom/airbnb/lottie/parser/moshi/OooO0O0;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
