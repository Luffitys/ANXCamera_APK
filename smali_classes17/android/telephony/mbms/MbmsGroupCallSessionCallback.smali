.class public interface abstract Landroid/telephony/mbms/MbmsGroupCallSessionCallback;
.super Ljava/lang/Object;
.source "MbmsGroupCallSessionCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/MbmsGroupCallSessionCallback$GroupCallError;
    }
.end annotation


# virtual methods
.method public onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onMiddlewareReady()V
    .registers 1

    return-void
.end method

.method public onServiceInterfaceAvailable(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method
