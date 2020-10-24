.class final Lio/reactivex/internal/functions/Functions$ToMapKeySelector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field private final keySelector:Lio/reactivex/functions/Function;


# direct methods
.method constructor <init>(Lio/reactivex/functions/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$ToMapKeySelector;->keySelector:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/functions/Functions$ToMapKeySelector;->accept(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/functions/Functions$ToMapKeySelector;->keySelector:Lio/reactivex/functions/Function;

    invoke-interface {p0, p2}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
