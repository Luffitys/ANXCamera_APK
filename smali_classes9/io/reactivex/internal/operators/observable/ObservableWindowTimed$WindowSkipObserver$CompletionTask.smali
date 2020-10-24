.class final Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;

.field private final w:Lio/reactivex/subjects/UnicastSubject;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;Lio/reactivex/subjects/UnicastSubject;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;->w:Lio/reactivex/subjects/UnicastSubject;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;->w:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->complete(Lio/reactivex/subjects/UnicastSubject;)V

    return-void
.end method
