.class public Lcom/airbnb/lottie/model/OooOO0/OooO0o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/model/OooOO0/OooOOO0;


# instance fields
.field private final OooO00o:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/o00ooo/OooO00o;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/o00ooo/OooO00o;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/model/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o00ooo/OooO00o;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOo;

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOo;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOOO;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public OooO0O0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    return-object p0
.end method

.method public OooO0OO()Z
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/model/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/o00ooo/OooO00o;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00ooo/OooO00o;->OooO0oo()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method
