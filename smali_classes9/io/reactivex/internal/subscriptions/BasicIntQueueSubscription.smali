.class public abstract Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/QueueSubscription;


# static fields
.field private static final serialVersionUID:J = -0x5c95ffaa2e3a1e66L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
