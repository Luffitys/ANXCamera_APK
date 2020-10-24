.class public Lcom/airbnb/lottie/model/OooOO0/OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/model/OooOO0/OooOOO0;


# instance fields
.field private final OooO00o:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

.field private final OooO0O0:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/OooOO0/OooO0O0;Lcom/airbnb/lottie/model/OooOO0/OooO0O0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/OooOO0/OooO;->OooO00o:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    iput-object p2, p0, Lcom/airbnb/lottie/model/OooOO0/OooO;->OooO0O0:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    return-void
.end method


# virtual methods
.method public OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;

    iget-object v1, p0, Lcom/airbnb/lottie/model/OooOO0/OooO;->OooO00o:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v1

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooOO0/OooO;->OooO0O0:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO00o()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOoo;-><init>(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    return-object v0
.end method

.method public OooO0O0()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public OooO0OO()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/OooOO0/OooO;->OooO00o:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooOO0/OooO;->OooO0O0:Lcom/airbnb/lottie/model/OooOO0/OooO0O0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/OooOO0/OooO0O0;->OooO0OO()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
