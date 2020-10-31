.class public final synthetic Lcom/android/internal/infra/-$$Lambda$AndroidFuture$dkSvpmqaFOFKPCZgb7C7XLP_QpE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiConsumer;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/infra/-$$Lambda$AndroidFuture$dkSvpmqaFOFKPCZgb7C7XLP_QpE;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/android/internal/infra/-$$Lambda$AndroidFuture$dkSvpmqaFOFKPCZgb7C7XLP_QpE;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/infra/-$$Lambda$AndroidFuture$dkSvpmqaFOFKPCZgb7C7XLP_QpE;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/internal/infra/-$$Lambda$AndroidFuture$dkSvpmqaFOFKPCZgb7C7XLP_QpE;->f$1:Ljava/util/function/BiConsumer;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->lambda$whenCompleteAsync$0(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
