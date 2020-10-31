.class Landroid/os/SystemClock$4;
.super Landroid/os/SimpleClock;
.source "SystemClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/SystemClock;->currentGnssTimeClock()Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMgr:Landroid/location/ILocationManager;


# direct methods
.method constructor <init>(Ljava/time/ZoneId;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    nop

    const-string v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemClock$4;->mMgr:Landroid/location/ILocationManager;

    return-void
.end method


# virtual methods
.method public millis()J
    .registers 8

    :try_start_0
    iget-object v0, p0, Landroid/os/SystemClock$4;->mMgr:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_25

    nop

    if-eqz v0, :cond_1d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/LocationTime;->getElapsedRealtimeNanos()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-virtual {v0}, Landroid/location/LocationTime;->getTime()J

    move-result-wide v5

    add-long/2addr v5, v3

    return-wide v5

    :cond_1d
    new-instance v1, Ljava/time/DateTimeException;

    const-string v2, "Gnss based time is not available."

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const-wide/16 v1, 0x0

    return-wide v1
.end method
