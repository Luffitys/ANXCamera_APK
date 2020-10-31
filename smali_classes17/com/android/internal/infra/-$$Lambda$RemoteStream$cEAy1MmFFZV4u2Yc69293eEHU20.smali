.class public final synthetic Lcom/android/internal/infra/-$$Lambda$RemoteStream$cEAy1MmFFZV4u2Yc69293eEHU20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/infra/-$$Lambda$RemoteStream$cEAy1MmFFZV4u2Yc69293eEHU20;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    return-void
.end method


# virtual methods
.method public final applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/infra/-$$Lambda$RemoteStream$cEAy1MmFFZV4u2Yc69293eEHU20;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    check-cast p1, Ljava/io/OutputStream;

    invoke-static {v0, p1}, Lcom/android/internal/infra/RemoteStream;->lambda$sendBytes$0(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/io/OutputStream;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
