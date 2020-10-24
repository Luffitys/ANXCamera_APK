.class public abstract Lio/reactivex/subjects/Subject;
.super Lio/reactivex/Observable;
.source ""

# interfaces
.implements Lio/reactivex/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getThrowable()Ljava/lang/Throwable;
    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end method

.method public abstract hasComplete()Z
.end method

.method public abstract hasObservers()Z
.end method

.method public abstract hasThrowable()Z
.end method

.method public final toSerialized()Lio/reactivex/subjects/Subject;
    .locals 1
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    instance-of v0, p0, Lio/reactivex/subjects/SerializedSubject;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lio/reactivex/subjects/SerializedSubject;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/SerializedSubject;-><init>(Lio/reactivex/subjects/Subject;)V

    return-object v0
.end method
