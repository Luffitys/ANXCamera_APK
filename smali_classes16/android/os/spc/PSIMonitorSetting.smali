.class public final Landroid/os/spc/PSIMonitorSetting;
.super Ljava/lang/Object;
.source "PSIMonitorSetting.java"


# static fields
.field public static final DEBUG:Z

.field public static final JANK_TYPE:I = 0x3e9

.field public static final MONITOR_CPU_SOME:I = 0x4

.field public static final MONITOR_IO_FULL:I = 0x3

.field public static final MONITOR_IO_SOME:I = 0x2

.field public static final MONITOR_MEMORY_FULL:I = 0x1

.field public static final MONITOR_MEMORY_SOME:I = 0x0

.field public static final MONITOR_TYPE_COUNT:I = 0x5

.field public static final PSI_CPU_NODE:Ljava/lang/String; = "/proc/pressure/cpu"

.field public static final PSI_IO_NODE:Ljava/lang/String; = "/proc/pressure/io"

.field public static final PSI_MEMORY_NODE:Ljava/lang/String; = "/proc/pressure/memory"

.field public static final PSI_MONITORS:[Landroid/os/spc/PSIMonitorSetting;

.field public static final TAG:Ljava/lang/String; = "SystemPressureControl"


# instance fields
.field public final id:I

.field public final monitorType:I

.field public final name:Ljava/lang/String;

.field public final thresholdMillis:J

.field public final windowMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 18

    sget-boolean v0, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    sput-boolean v0, Landroid/os/spc/PSIMonitorSetting;->DEBUG:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/spc/PSIMonitorSetting;

    new-instance v9, Landroid/os/spc/PSIMonitorSetting;

    const/4 v2, 0x0

    const-string v3, "MEMORY_SOME"

    const/4 v4, 0x0

    const-wide/16 v5, 0x14

    const-wide/16 v7, 0x3e8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/os/spc/PSIMonitorSetting;-><init>(ILjava/lang/String;IJJ)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    new-instance v1, Landroid/os/spc/PSIMonitorSetting;

    const/4 v11, 0x1

    const-string v12, "MEMORY_FULL"

    const/4 v13, 0x1

    const-wide/16 v14, 0x14

    const-wide/16 v16, 0x3e8

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/os/spc/PSIMonitorSetting;-><init>(ILjava/lang/String;IJJ)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/spc/PSIMonitorSetting;->PSI_MONITORS:[Landroid/os/spc/PSIMonitorSetting;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IJJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/spc/PSIMonitorSetting;->id:I

    iput-object p2, p0, Landroid/os/spc/PSIMonitorSetting;->name:Ljava/lang/String;

    iput p3, p0, Landroid/os/spc/PSIMonitorSetting;->monitorType:I

    iput-wide p4, p0, Landroid/os/spc/PSIMonitorSetting;->thresholdMillis:J

    iput-wide p6, p0, Landroid/os/spc/PSIMonitorSetting;->windowMillis:J

    return-void
.end method

.method public static getEventType(I)I
    .registers 3

    sget-object v0, Landroid/os/spc/PSIMonitorSetting;->PSI_MONITORS:[Landroid/os/spc/PSIMonitorSetting;

    array-length v1, v0

    if-ge p0, v1, :cond_c

    if-ltz p0, :cond_c

    aget-object v0, v0, p0

    iget v0, v0, Landroid/os/spc/PSIMonitorSetting;->monitorType:I

    return v0

    :cond_c
    return p0
.end method

.method public static getTypeName(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/os/spc/PSIMonitorSetting;->PSI_MONITORS:[Landroid/os/spc/PSIMonitorSetting;

    array-length v1, v0

    if-ge p0, v1, :cond_c

    if-ltz p0, :cond_c

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/os/spc/PSIMonitorSetting;->name:Ljava/lang/String;

    return-object v0

    :cond_c
    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_13

    const-string v0, ""

    return-object v0

    :cond_13
    const-string v0, "JANK"

    return-object v0
.end method


# virtual methods
.method public generateMonitorCommand()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/os/spc/PSIMonitorSetting;->monitorType:I

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1e

    const-string v1, ""

    return-object v1

    :cond_18
    const-string v1, "full "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_1e
    const-string/jumbo v1, "some "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_25
    iget-wide v1, p0, Landroid/os/spc/PSIMonitorSetting;->thresholdMillis:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/spc/PSIMonitorSetting;->windowMillis:J

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMonitorId()I
    .registers 2

    iget v0, p0, Landroid/os/spc/PSIMonitorSetting;->id:I

    return v0
.end method

.method public getPSINode()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/os/spc/PSIMonitorSetting;->monitorType:I

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    const-string v0, ""

    return-object v0

    :cond_13
    const-string v0, "/proc/pressure/cpu"

    return-object v0

    :cond_16
    const-string v0, "/proc/pressure/io"

    return-object v0

    :cond_19
    const-string v0, "/proc/pressure/memory"

    return-object v0
.end method
