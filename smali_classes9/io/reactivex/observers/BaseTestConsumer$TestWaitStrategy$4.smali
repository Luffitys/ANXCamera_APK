.class final enum Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$4;
.super Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;
.source ""


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;-><init>(Ljava/lang/String;ILio/reactivex/observers/BaseTestConsumer$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/16 p0, 0xa

    invoke-static {p0}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->sleep(I)V

    return-void
.end method
