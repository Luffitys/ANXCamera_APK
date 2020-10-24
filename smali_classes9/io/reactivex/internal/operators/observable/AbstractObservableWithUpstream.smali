.class abstract Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.super Lio/reactivex/Observable;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamObservableSource;


# instance fields
.field protected final source:Lio/reactivex/ObservableSource;


# direct methods
.method constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public final source()Lio/reactivex/ObservableSource;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    return-object p0
.end method
