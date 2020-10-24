.class final Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowOperation;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final open:Ljava/lang/Object;

.field final w:Lio/reactivex/subjects/UnicastSubject;


# direct methods
.method constructor <init>(Lio/reactivex/subjects/UnicastSubject;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowOperation;->w:Lio/reactivex/subjects/UnicastSubject;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowOperation;->open:Ljava/lang/Object;

    return-void
.end method
