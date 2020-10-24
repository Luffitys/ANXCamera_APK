.class final Lio/reactivex/internal/functions/Functions$ActionConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field final action:Lio/reactivex/functions/Action;


# direct methods
.method constructor <init>(Lio/reactivex/functions/Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$ActionConsumer;->action:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/functions/Functions$ActionConsumer;->action:Lio/reactivex/functions/Action;

    invoke-interface {p0}, Lio/reactivex/functions/Action;->run()V

    return-void
.end method
