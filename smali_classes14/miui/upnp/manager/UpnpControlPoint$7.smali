.class Lmiui/upnp/manager/UpnpControlPoint$7;
.super Lmiui/upnp/service/handler/ICompletionHandler$Stub;
.source "UpnpControlPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/upnp/manager/UpnpControlPoint;->unsubscribe(Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/manager/UpnpControlPoint;

.field final synthetic val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

.field final synthetic val$service:Lmiui/upnp/typedef/device/Service;


# direct methods
.method constructor <init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
    .registers 4

    iput-object p1, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->this$0:Lmiui/upnp/manager/UpnpControlPoint;

    iput-object p2, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$service:Lmiui/upnp/typedef/device/Service;

    iput-object p3, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-direct {p0}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lmiui/upnp/typedef/error/UpnpError;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-interface {v0, p1}, Lmiui/upnp/manager/handler/UpnpCompletionHandler;->onFailed(Lmiui/upnp/typedef/error/UpnpError;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public onSucceed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$service:Lmiui/upnp/typedef/device/Service;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/Service;->setSubscribed(Z)Z

    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$service:Lmiui/upnp/typedef/device/Service;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/Service;->setSubscriptionId(Ljava/lang/String;)Z

    :try_start_d
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-interface {v0}, Lmiui/upnp/manager/handler/UpnpCompletionHandler;->onSucceed()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void
.end method
