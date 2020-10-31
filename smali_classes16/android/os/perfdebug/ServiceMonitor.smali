.class public Landroid/os/perfdebug/ServiceMonitor;
.super Ljava/lang/Object;
.source "ServiceMonitor.java"


# static fields
.field public static final SERVICE_START_TYPE_BIND:I = 0x2

.field public static final SERVICE_START_TYPE_CREATE:I = 0x1

.field public static final SERVICE_START_TYPE_UNKNOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ServiceMonitor"


# instance fields
.field private mCreateServiceBeginTime:J

.field private mServiceStartType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getForegroundServiceType(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_37

    if-eqz p1, :cond_33

    const/4 v0, 0x1

    if-eq p1, v0, :cond_30

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_28

    const/16 v0, 0x8

    if-eq p1, v0, :cond_25

    const/16 v0, 0x10

    if-eq p1, v0, :cond_22

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1e

    const-string/jumbo v0, "unknown"

    goto :goto_3b

    :cond_1e
    const-string/jumbo v0, "media-projection"

    goto :goto_3b

    :cond_22
    const-string v0, "connected-device"

    goto :goto_3b

    :cond_25
    const-string v0, "location"

    goto :goto_3b

    :cond_28
    const-string/jumbo v0, "phone-call"

    goto :goto_3b

    :cond_2c
    const-string/jumbo v0, "media-playback"

    goto :goto_3b

    :cond_30
    const-string v0, "data-sync"

    goto :goto_3b

    :cond_33
    const-string/jumbo v0, "none"

    goto :goto_3b

    :cond_37
    const-string/jumbo v0, "manifest"

    nop

    :goto_3b
    return-object v0
.end method

.method private getServiceStartType(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const-string v0, " unknown"

    goto :goto_f

    :cond_9
    const-string v0, " bindService"

    goto :goto_f

    :cond_c
    const-string v0, " createService"

    nop

    :goto_f
    return-object v0
.end method


# virtual methods
.method public monitorCreateBegin(I)V
    .registers 4

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ServiceMonitor;->mCreateServiceBeginTime:J

    iput p1, p0, Landroid/os/perfdebug/ServiceMonitor;->mServiceStartType:I

    :cond_e
    return-void
.end method

.method public monitorCreateEnd(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_8b

    if-eqz p2, :cond_b

    const-wide/16 v0, 0x3a98

    goto :goto_e

    :cond_b
    const-wide/32 v0, 0x249f0

    :goto_e
    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/os/perfdebug/ServiceMonitor;->mCreateServiceBeginTime:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1b

    return-void

    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "PerfMonitor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/os/perfdebug/ServiceMonitor;->mServiceStartType:I

    invoke-direct {p0, v5}, Landroid/os/perfdebug/ServiceMonitor;->getServiceStartType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_43

    const-string v5, "foreground"

    goto :goto_45

    :cond_43
    const-string v5, "background"

    :goto_45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " processName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " callerPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_82

    const-string v5, " serviceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " foregroundServiceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getForegroundServiceType()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/os/perfdebug/ServiceMonitor;->getForegroundServiceType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ServiceMonitor"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    return-void
.end method
