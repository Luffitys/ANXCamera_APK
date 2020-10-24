.class public Lcom/airbnb/lottie/model/OooOO0/OooO0O0;
.super Lcom/airbnb/lottie/model/OooOO0/OooOOO;
.source ""


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/model/OooOO0/OooOOO;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/OooOO0/OooOOO;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooOO0/OooOOO;->OooO00o:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic OooO0O0()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/airbnb/lottie/model/OooOO0/OooOOO;->OooO0O0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic OooO0OO()Z
    .locals 0

    invoke-super {p0}, Lcom/airbnb/lottie/model/OooOO0/OooOOO;->OooO0OO()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/airbnb/lottie/model/OooOO0/OooOOO;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
