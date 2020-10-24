.class Lcom/airbnb/lottie/OooOOo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic OooO00o:Landroid/content/Context;

.field final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/OooOOo;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, Lcom/airbnb/lottie/OooOOo;->OooO0O0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Lcom/airbnb/lottie/Ooooo00;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/OooOOo;->OooO00o:Landroid/content/Context;

    iget-object p0, p0, Lcom/airbnb/lottie/OooOOo;->OooO0O0:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/airbnb/lottie/network/OooO0O0;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/OooOOo;->OooO00o()Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0
.end method
