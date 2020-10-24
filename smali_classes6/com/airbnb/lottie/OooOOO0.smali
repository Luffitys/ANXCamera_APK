.class final Lcom/airbnb/lottie/OooOOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/OoooOOo;
.implements Lcom/airbnb/lottie/OooO0O0;


# instance fields
.field private final OooO00o:Lcom/airbnb/lottie/OooooOo;

.field private OooO0O0:Z


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/OooooOo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/OooOOO0;->OooO0O0:Z

    iput-object p1, p0, Lcom/airbnb/lottie/OooOOO0;->OooO00o:Lcom/airbnb/lottie/OooooOo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/OooooOo;Lcom/airbnb/lottie/OooOO0o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/OooOOO0;-><init>(Lcom/airbnb/lottie/OooooOo;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/OooOOO0;->OooO0O0(Lcom/airbnb/lottie/OooOOOO;)V

    return-void
.end method

.method public OooO0O0(Lcom/airbnb/lottie/OooOOOO;)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/OooOOO0;->OooO0O0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/OooOOO0;->OooO00o:Lcom/airbnb/lottie/OooooOo;

    invoke-interface {p0, p1}, Lcom/airbnb/lottie/OooooOo;->OooO00o(Lcom/airbnb/lottie/OooOOOO;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/OooOOO0;->OooO0O0:Z

    return-void
.end method
