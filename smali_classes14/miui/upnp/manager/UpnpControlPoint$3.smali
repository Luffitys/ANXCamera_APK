.class Lmiui/upnp/manager/UpnpControlPoint$3;
.super Lmiui/upnp/service/handler/ICompletionHandler$Stub;
.source "UpnpControlPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/upnp/manager/UpnpControlPoint;->stopScan(Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/manager/UpnpControlPoint;

.field final synthetic val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;


# direct methods
.method constructor <init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
    .registers 3

    iput-object p1, p0, Lmiui/upnp/manager/UpnpControlPoint$3;->this$0:Lmiui/upnp/manager/UpnpControlPoint;

    iput-object p2, p0, Lmiui/upnp/manager/UpnpControlPoint$3;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

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
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$3;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

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
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$3;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-interface {v0}, Lmiui/upnp/manager/handler/UpnpCompletionHandler;->onSucceed()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method
