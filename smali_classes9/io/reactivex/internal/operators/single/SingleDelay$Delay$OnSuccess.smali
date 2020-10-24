.class final Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lio/reactivex/internal/operators/single/SingleDelay$Delay;

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleDelay$Delay;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;->this$1:Lio/reactivex/internal/operators/single/SingleDelay$Delay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;->this$1:Lio/reactivex/internal/operators/single/SingleDelay$Delay;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->s:Lio/reactivex/SingleObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;->value:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
