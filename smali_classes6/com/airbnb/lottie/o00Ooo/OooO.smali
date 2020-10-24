.class public Lcom/airbnb/lottie/o00Ooo/OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00Ooo/Oooo0o0;


# static fields
.field public static final OooO00o:Lcom/airbnb/lottie/o00Ooo/OooO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/o00Ooo/OooO;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00Ooo/OooO;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/o00Ooo/OooO;->OooO00o:Lcom/airbnb/lottie/o00Ooo/OooO;

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

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00Ooo/OooO;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;F)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lcom/airbnb/lottie/o00Ooo/OooOOo0;->OooO0oO(Lcom/airbnb/lottie/parser/moshi/OooO0O0;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
