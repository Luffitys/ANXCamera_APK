.class public Lcom/airbnb/lottie/model/OooO0oO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final OooO0O0:Lcom/airbnb/lottie/model/OooO0oO;


# instance fields
.field private final OooO00o:Landroidx/collection/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/model/OooO0oO;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/OooO0oO;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/OooO0oO;->OooO0O0:Lcom/airbnb/lottie/model/OooO0oO;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/OooO0oO;->OooO00o:Landroidx/collection/LruCache;

    return-void
.end method

.method public static OooO0OO()Lcom/airbnb/lottie/model/OooO0oO;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/OooO0oO;->OooO0O0:Lcom/airbnb/lottie/model/OooO0oO;

    return-object v0
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO0oO;->OooO00o:Landroidx/collection/LruCache;

    invoke-virtual {p0}, Landroidx/collection/LruCache;->evictAll()V

    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)Lcom/airbnb/lottie/OooOOOO;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO0oO;->OooO00o:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/OooOOOO;

    return-object p0
.end method

.method public OooO0Oo(Ljava/lang/String;Lcom/airbnb/lottie/OooOOOO;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO0oO;->OooO00o:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public OooO0o0(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/OooO0oO;->OooO00o:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->resize(I)V

    return-void
.end method
