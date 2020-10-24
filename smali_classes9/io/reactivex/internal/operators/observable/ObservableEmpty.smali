.class public final Lio/reactivex/internal/operators/observable/ObservableEmpty;
.super Lio/reactivex/Observable;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/ScalarCallable;


# static fields
.field public static final INSTANCE:Lio/reactivex/Observable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableEmpty;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/ObservableEmpty;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableEmpty;->INSTANCE:Lio/reactivex/Observable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 0

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    return-void
.end method
