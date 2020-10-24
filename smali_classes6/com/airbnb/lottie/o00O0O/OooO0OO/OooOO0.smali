.class public Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0;
.super Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0o;
.source ""


# instance fields
.field private final OooO:Lcom/airbnb/lottie/model/content/OooO0OO;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0o;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/o00ooo/OooO00o;

    iget-object p1, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/content/OooO0OO;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/OooO0OO;->OooO0OO()I

    move-result v0

    :goto_0
    new-instance p1, Lcom/airbnb/lottie/model/content/OooO0OO;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lcom/airbnb/lottie/model/content/OooO0OO;-><init>([F[I)V

    iput-object p1, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0;->OooO:Lcom/airbnb/lottie/model/content/OooO0OO;

    return-void
.end method


# virtual methods
.method bridge synthetic OooO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0;->OooOOOO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Lcom/airbnb/lottie/model/content/OooO0OO;

    move-result-object p0

    return-object p0
.end method

.method OooOOOO(Lcom/airbnb/lottie/o00ooo/OooO00o;F)Lcom/airbnb/lottie/model/content/OooO0OO;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0;->OooO:Lcom/airbnb/lottie/model/content/OooO0OO;

    iget-object v1, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0O0:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/content/OooO0OO;

    iget-object p1, p1, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0OO:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/content/OooO0OO;

    invoke-virtual {v0, v1, p1, p2}, Lcom/airbnb/lottie/model/content/OooO0OO;->OooO0Oo(Lcom/airbnb/lottie/model/content/OooO0OO;Lcom/airbnb/lottie/model/content/OooO0OO;F)V

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOO0;->OooO:Lcom/airbnb/lottie/model/content/OooO0OO;

    return-object p0
.end method
