.class Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;
.super Ljava/lang/Object;
.source "MbmsGroupCallServiceBase.java"

# interfaces
.implements Landroid/telephony/mbms/MbmsGroupCallSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

.field final synthetic val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

.field final synthetic val$subscriptionId:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;II)V
    .registers 5

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_12

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v1, v1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    :goto_12
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    :try_start_3
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    goto :goto_1e

    :catch_9
    move-exception v0

    goto :goto_13

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Middleware cannot send an unknown error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_9

    :goto_13
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v1, v1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    :goto_1e
    return-void
.end method

.method public onMiddlewareReady()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onMiddlewareReady()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_12

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v1, v1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    :goto_12
    return-void
.end method

.method public onServiceInterfaceAvailable(Ljava/lang/String;I)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onServiceInterfaceAvailable(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_12

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v1, v1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    :goto_12
    return-void
.end method
