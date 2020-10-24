.class Lcom/airbnb/lottie/model/layer/OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;


# instance fields
.field final synthetic OooO00o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

.field final synthetic OooO0O0:Lcom/airbnb/lottie/model/layer/OooO0OO;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO00o;->OooO0O0:Lcom/airbnb/lottie/model/layer/OooO0OO;

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO00o;->OooO00o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO00o;->OooO0O0:Lcom/airbnb/lottie/model/layer/OooO0OO;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO00o;->OooO00o:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;->OooOOOO()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o0(Lcom/airbnb/lottie/model/layer/OooO0OO;Z)V

    return-void
.end method
