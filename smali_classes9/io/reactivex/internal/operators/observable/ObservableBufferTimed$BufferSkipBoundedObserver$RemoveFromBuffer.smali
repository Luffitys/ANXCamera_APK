.class final Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver$RemoveFromBuffer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Ljava/util/Collection;

.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver$RemoveFromBuffer;->this$0:Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver$RemoveFromBuffer;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver$RemoveFromBuffer;->this$0:Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver$RemoveFromBuffer;->this$0:Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;->buffers:Ljava/util/List;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver$RemoveFromBuffer;->b:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver$RemoveFromBuffer;->this$0:Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver$RemoveFromBuffer;->b:Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, v0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;->w:Lio/reactivex/Scheduler$Worker;

    invoke-static {v0, p0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;->access$000(Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
