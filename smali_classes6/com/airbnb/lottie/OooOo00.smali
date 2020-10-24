.class Lcom/airbnb/lottie/OooOo00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic OooO00o:Ljava/lang/ref/WeakReference;

.field final synthetic OooO0O0:Landroid/content/Context;

.field final synthetic OooO0OO:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/OooOo00;->OooO00o:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/airbnb/lottie/OooOo00;->OooO0O0:Landroid/content/Context;

    iput p3, p0, Lcom/airbnb/lottie/OooOo00;->OooO0OO:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Lcom/airbnb/lottie/Ooooo00;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/OooOo00;->OooO00o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/OooOo00;->OooO0O0:Landroid/content/Context;

    :goto_0
    iget p0, p0, Lcom/airbnb/lottie/OooOo00;->OooO0OO:I

    invoke-static {v0, p0}, Lcom/airbnb/lottie/OooOoOO;->OooOo00(Landroid/content/Context;I)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/OooOo00;->OooO00o()Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0
.end method
