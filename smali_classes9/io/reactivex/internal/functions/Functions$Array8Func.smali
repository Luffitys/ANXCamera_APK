.class final Lio/reactivex/internal/functions/Functions$Array8Func;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field final f:Lio/reactivex/functions/Function8;


# direct methods
.method constructor <init>(Lio/reactivex/functions/Function8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$Array8Func;->f:Lio/reactivex/functions/Function8;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/functions/Functions$Array8Func;->apply([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public apply([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/functions/Functions$Array8Func;->f:Lio/reactivex/functions/Function8;

    const/4 p0, 0x0

    aget-object v3, p1, p0

    const/4 p0, 0x1

    aget-object v4, p1, p0

    const/4 p0, 0x2

    aget-object v5, p1, p0

    const/4 p0, 0x3

    aget-object v6, p1, p0

    const/4 p0, 0x4

    aget-object v7, p1, p0

    const/4 p0, 0x5

    aget-object v8, p1, p0

    const/4 p0, 0x6

    aget-object v9, p1, p0

    const/4 p0, 0x7

    aget-object v10, p1, p0

    invoke-interface/range {v2 .. v10}, Lio/reactivex/functions/Function8;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array of size 8 expected but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
