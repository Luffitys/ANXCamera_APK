.class public Landroid/location/MiuiLocationManagerProxy;
.super Ljava/lang/Object;
.source "MiuiLocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/MiuiLocationManagerProxy$ProxyBinder;,
        Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;
    }
.end annotation


# static fields
.field private static sInvokeMonitor:Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;
    .registers 1

    sget-object v0, Landroid/location/MiuiLocationManagerProxy;->sInvokeMonitor:Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;

    return-object v0
.end method

.method public static getProxy(Landroid/location/ILocationManager;)Landroid/location/ILocationManager;
    .registers 3

    new-instance v0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;

    invoke-interface {p0}, Landroid/location/ILocationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    return-object v0
.end method

.method public static setInvokeMonitor(Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;)V
    .registers 3

    const-class v0, Landroid/location/MiuiLocationManagerProxy;

    monitor-enter v0

    :try_start_3
    sput-object p0, Landroid/location/MiuiLocationManagerProxy;->sInvokeMonitor:Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
