.class Lmiui/animation/IAnimTarget$MonitorInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field monitor:Lmiui/animation/utils/VelocityMonitor;

.field resetTask:Lmiui/animation/IAnimTarget$ResetRunnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/animation/utils/VelocityMonitor;

    invoke-direct {v0}, Lmiui/animation/utils/VelocityMonitor;-><init>()V

    iput-object v0, p0, Lmiui/animation/IAnimTarget$MonitorInfo;->monitor:Lmiui/animation/utils/VelocityMonitor;

    new-instance v0, Lmiui/animation/IAnimTarget$ResetRunnable;

    invoke-direct {v0, p0}, Lmiui/animation/IAnimTarget$ResetRunnable;-><init>(Lmiui/animation/IAnimTarget$MonitorInfo;)V

    iput-object v0, p0, Lmiui/animation/IAnimTarget$MonitorInfo;->resetTask:Lmiui/animation/IAnimTarget$ResetRunnable;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/animation/IAnimTarget$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/animation/IAnimTarget$MonitorInfo;-><init>()V

    return-void
.end method
