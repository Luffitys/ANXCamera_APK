.class Lcom/airbnb/lottie/OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/OoooOOo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/OooO0o;->OooO0O0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooO0O0(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooOO0O(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Unable to load composition."

    invoke-static {p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO0Oo;->OooO0o(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
