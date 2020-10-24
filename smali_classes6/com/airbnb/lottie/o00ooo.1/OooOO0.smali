.class public Lcom/airbnb/lottie/o00ooo/OooOO0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lcom/airbnb/lottie/o00ooo/OooO0O0;

.field private OooO0O0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected OooO0OO:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/o00ooo/OooO0O0;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00ooo/OooO0O0;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO00o:Lcom/airbnb/lottie/o00ooo/OooO0O0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0OO:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/o00ooo/OooO0O0;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00ooo/OooO0O0;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO00o:Lcom/airbnb/lottie/o00ooo/OooO0O0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0OO:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0OO:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/airbnb/lottie/o00ooo/OooO0O0;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0OO:Ljava/lang/Object;

    return-object p0
.end method

.method public final OooO0O0(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO00o:Lcom/airbnb/lottie/o00ooo/OooO0O0;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/lottie/o00ooo/OooO0O0;->OooO0oo(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/airbnb/lottie/o00ooo/OooO0O0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO00o(Lcom/airbnb/lottie/o00ooo/OooO0O0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final OooO0OO(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0O0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    return-void
.end method

.method public final OooO0Oo(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0OO:Ljava/lang/Object;

    iget-object p0, p0, Lcom/airbnb/lottie/o00ooo/OooOO0;->OooO0O0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0()V

    :cond_0
    return-void
.end method
