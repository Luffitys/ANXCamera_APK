.class public Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;->OooO00o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0(Landroid/graphics/Path;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0Oo;->OooO00o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;

    invoke-static {p1, v1}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0O0(Landroid/graphics/Path;Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
