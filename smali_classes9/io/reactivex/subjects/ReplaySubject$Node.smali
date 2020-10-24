.class final Lio/reactivex/subjects/ReplaySubject$Node;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x58e06200f2edb94cL


# instance fields
.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    return-void
.end method
