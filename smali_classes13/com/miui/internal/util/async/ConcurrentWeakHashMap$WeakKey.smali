.class Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;
.super Ljava/lang/ref/WeakReference;
.source "ConcurrentWeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/util/async/ConcurrentWeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mHashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->setHashCode(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->setHashCode(Ljava/lang/Object;)V

    return-void
.end method

.method private setHashCode(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->mHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-virtual {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_1e

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->mHashCode:I

    return v0
.end method
