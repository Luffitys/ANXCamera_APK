.class Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;
.super Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;
.source "MbmsGroupCallServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    invoke-direct {p0}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    invoke-virtual {v0, p1}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->dispose(I)V

    return-void
.end method

.method public initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    new-instance v2, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;

    invoke-direct {v2, p0, p1, v0, p2}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;-><init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;II)V

    invoke-virtual {v1, v2, p2}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->initialize(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;I)I

    move-result v1

    if-nez v1, :cond_20

    invoke-interface {p1}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$2;

    invoke-direct {v3, p0, v0, p2}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$2;-><init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;II)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_20
    return v1

    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p6, :cond_25

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    new-instance v7, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;

    invoke-direct {v7, p0, p6, v0, p1}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;-><init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;Landroid/telephony/mbms/IGroupCallCallback;II)V

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/GroupCallCallback;)I

    move-result v1

    if-nez v1, :cond_24

    invoke-interface {p6}, Landroid/telephony/mbms/IGroupCallCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$4;

    invoke-direct {v3, p0, v0, p1}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$4;-><init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;II)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_24
    return v1

    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopGroupCall(IJ)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->stopGroupCall(IJ)V

    return-void
.end method

.method public updateGroupCall(IJLjava/util/List;Ljava/util/List;)V
    .registers 12

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->updateGroupCall(IJLjava/util/List;Ljava/util/List;)V

    return-void
.end method
