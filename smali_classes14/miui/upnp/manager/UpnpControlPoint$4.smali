.class Lmiui/upnp/manager/UpnpControlPoint$4;
.super Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub;
.source "UpnpControlPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/upnp/manager/UpnpControlPoint;->invoke(Lmiui/upnp/typedef/device/invocation/ActionInfo;Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/manager/UpnpControlPoint;

.field final synthetic val$handler:Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;


# direct methods
.method constructor <init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;)V
    .registers 3

    iput-object p1, p0, Lmiui/upnp/manager/UpnpControlPoint$4;->this$0:Lmiui/upnp/manager/UpnpControlPoint;

    iput-object p2, p0, Lmiui/upnp/manager/UpnpControlPoint$4;->val$handler:Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;

    invoke-direct {p0}, Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub;-><init>()V

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
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$4;->val$handler:Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;

    invoke-interface {v0, p1}, Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;->onFailed(Lmiui/upnp/typedef/error/UpnpError;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public onSucceed(Lmiui/upnp/typedef/device/invocation/ActionInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$4;->val$handler:Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;

    invoke-interface {v0, p1}, Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;->onSucceed(Lmiui/upnp/typedef/device/invocation/ActionInfo;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method
