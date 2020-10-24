.class public final Lio/reactivex/internal/operators/single/SingleNever;
.super Lio/reactivex/Single;
.source ""


# static fields
.field public static final INSTANCE:Lio/reactivex/Single;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/single/SingleNever;

    invoke-direct {v0}, Lio/reactivex/internal/operators/single/SingleNever;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/single/SingleNever;->INSTANCE:Lio/reactivex/Single;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 0

    sget-object p0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
