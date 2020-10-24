.class interface abstract Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract complete()V
.end method

.method public abstract error(Ljava/lang/Throwable;)V
.end method

.method public abstract getError()Ljava/lang/Throwable;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract getValues([Ljava/lang/Object;)[Ljava/lang/Object;
.end method

.method public abstract isDone()Z
.end method

.method public abstract next(Ljava/lang/Object;)V
.end method

.method public abstract replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
.end method

.method public abstract size()I
.end method
