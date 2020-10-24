.class final Lio/reactivex/internal/functions/Functions$JustValue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lio/reactivex/functions/Function;


# instance fields
.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$JustValue;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/functions/Functions$JustValue;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/functions/Functions$JustValue;->value:Ljava/lang/Object;

    return-object p0
.end method
