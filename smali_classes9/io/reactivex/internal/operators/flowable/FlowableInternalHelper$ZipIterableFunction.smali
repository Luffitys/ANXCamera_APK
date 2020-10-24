.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final zipper:Lio/reactivex/functions/Function;


# direct methods
.method constructor <init>(Lio/reactivex/functions/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;->zipper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;->apply(Ljava/util/List;)Lorg/reactivestreams/Publisher;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/util/List;)Lorg/reactivestreams/Publisher;
    .locals 2

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;->zipper:Lio/reactivex/functions/Function;

    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0}, Lio/reactivex/Flowable;->zipIterable(Ljava/lang/Iterable;Lio/reactivex/functions/Function;ZI)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method
