.class Lcom/airbnb/lottie/Ooooo0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic OooO00o:Lcom/airbnb/lottie/OooooOO;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/OooooOO;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/Ooooo0o;->OooO00o:Lcom/airbnb/lottie/OooooOO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/Ooooo0o;->OooO00o:Lcom/airbnb/lottie/OooooOO;

    invoke-static {v0}, Lcom/airbnb/lottie/OooooOO;->OooO00o(Lcom/airbnb/lottie/OooooOO;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/Ooooo0o;->OooO00o:Lcom/airbnb/lottie/OooooOO;

    invoke-static {v0}, Lcom/airbnb/lottie/OooooOO;->OooO00o(Lcom/airbnb/lottie/OooooOO;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/Ooooo00;->OooO0O0()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/airbnb/lottie/Ooooo0o;->OooO00o:Lcom/airbnb/lottie/OooooOO;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/Ooooo00;->OooO0O0()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/OooooOO;->OooO0O0(Lcom/airbnb/lottie/OooooOO;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/Ooooo00;->OooO00o()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/OooooOO;->OooO0OO(Lcom/airbnb/lottie/OooooOO;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
