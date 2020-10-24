.class Lcom/airbnb/lottie/parser/moshi/OooO0oO;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Lcom/airbnb/lottie/parser/moshi/OooOOO0;
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0oO;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v1, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    :goto_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v2, :cond_1

    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v1, v2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/OooO0oO;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    return-object v0
.end method

.method OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0oO;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    return-void
.end method
