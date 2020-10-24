.class final Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/maybe/MaybeZipIterable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/MaybeZipIterable;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;->this$0:Lio/reactivex/internal/operators/maybe/MaybeZipIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;->this$0:Lio/reactivex/internal/operators/maybe/MaybeZipIterable;

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->zipper:Lio/reactivex/functions/Function;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-interface {p0, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The zipper returned a null value"

    invoke-static {p0, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
