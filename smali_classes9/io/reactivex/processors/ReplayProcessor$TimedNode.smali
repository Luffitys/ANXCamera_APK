.class final Lio/reactivex/processors/ReplayProcessor$TimedNode;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x58e06200f2edb94cL


# instance fields
.field final time:J

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    iput-wide p2, p0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    return-void
.end method
