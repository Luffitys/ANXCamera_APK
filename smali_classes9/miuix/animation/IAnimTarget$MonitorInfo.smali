.class Lmiuix/animation/IAnimTarget$MonitorInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field monitor:Lmiuix/animation/utils/VelocityMonitor;

.field resetTask:Lmiuix/animation/IAnimTarget$ResetRunnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {v0}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    new-instance v0, Lmiuix/animation/IAnimTarget$ResetRunnable;

    invoke-direct {v0, p0}, Lmiuix/animation/IAnimTarget$ResetRunnable;-><init>(Lmiuix/animation/IAnimTarget$MonitorInfo;)V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget$MonitorInfo;->resetTask:Lmiuix/animation/IAnimTarget$ResetRunnable;

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/IAnimTarget$1;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/animation/IAnimTarget$MonitorInfo;-><init>()V

    return-void
.end method
