.class public Lcom/android/camera/aiwatermark/chain/PriorityChainFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPriorityChain(I)Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/camera/aiwatermark/chain/IndiaPriorityChain;

    invoke-direct {p0}, Lcom/android/camera/aiwatermark/chain/IndiaPriorityChain;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/camera/aiwatermark/chain/ChinaPriorityChain;

    invoke-direct {p0}, Lcom/android/camera/aiwatermark/chain/ChinaPriorityChain;-><init>()V

    :goto_0
    return-object p0
.end method
