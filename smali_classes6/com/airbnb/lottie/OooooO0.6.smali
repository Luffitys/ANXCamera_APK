.class Lcom/airbnb/lottie/OooooO0;
.super Ljava/util/concurrent/FutureTask;
.source ""


# instance fields
.field final synthetic OooO00o:Lcom/airbnb/lottie/OooooOO;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/OooooOO;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/OooooO0;->OooO00o:Lcom/airbnb/lottie/OooooOO;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/OooooO0;->OooO00o:Lcom/airbnb/lottie/OooooOO;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/Ooooo00;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/OooooOO;->OooO0Oo(Lcom/airbnb/lottie/OooooOO;Lcom/airbnb/lottie/Ooooo00;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/airbnb/lottie/OooooO0;->OooO00o:Lcom/airbnb/lottie/OooooOO;

    new-instance v1, Lcom/airbnb/lottie/Ooooo00;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/Ooooo00;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v1}, Lcom/airbnb/lottie/OooooOO;->OooO0Oo(Lcom/airbnb/lottie/OooooOO;Lcom/airbnb/lottie/Ooooo00;)V

    :goto_0
    return-void
.end method
