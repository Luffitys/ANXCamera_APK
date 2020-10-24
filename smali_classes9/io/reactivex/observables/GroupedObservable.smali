.class public abstract Lio/reactivex/observables/GroupedObservable;
.super Lio/reactivex/Observable;
.source ""


# instance fields
.field final key:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/observables/GroupedObservable;->key:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lio/reactivex/observables/GroupedObservable;->key:Ljava/lang/Object;

    return-object p0
.end method
