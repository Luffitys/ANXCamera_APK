.class public final Landroid/os/perfdebug/PerfDebugMonitor;
.super Ljava/lang/Object;
.source "PerfDebugMonitor.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final MONITOR_CATALOG_ALL_FLAG:Ljava/lang/String; = "all"

.field private static final MONITOR_CATALOG_BINDER_FLAG:Ljava/lang/String; = "binder"

.field private static final MONITOR_CATALOG_DRAW_FLAG:Ljava/lang/String; = "draw"

.field private static final MONITOR_CATALOG_INPUT_FLAG:Ljava/lang/String; = "input"

.field private static final MONITOR_CATALOG_LAYOUT_FLAG:Ljava/lang/String; = "layout"

.field private static final MONITOR_CATALOG_LOOPER_FLAG:Ljava/lang/String; = "looper"

.field private static final MONITOR_CATALOG_MEASURE_FLAG:Ljava/lang/String; = "measure"

.field public static final MONITOR_NAME:Ljava/lang/String; = "PerfMonitor"

.field public static final NORMAL_LOG_CHAR_LENGTH:I = 0x100

.field private static final PROP_PERFDEBUG_MONITOR_CATALOG_ENABLE:Ljava/lang/String; = "persist.sys.perfdebug.monitor.catalog"

.field private static final PROP_PERFDEBUG_MONITOR_ENABLE:Ljava/lang/String; = "persist.sys.perfdebug.monitor.enable"

.field public static final SMALL_LOG_CHAR_LENGTH:I = 0x80

.field public static final TAG:Ljava/lang/String; = "PerfDebugMonitor"

.field public static final THREASHOLD_LOOPER_DISPATCH_MS:I = 0x32

.field public static final THRESHOLD_BOOST_FRAMEWORK_OPER_MS:I = 0x14

.field public static final THRESHOLD_BROADCAST_BG_RECEIVE_MSG:I = 0x9c40

.field public static final THRESHOLD_BROADCAST_FG_RECEIVE_MSG:I = 0x1388

.field public static final THRESHOLD_FILE_SYNC_MS:I = 0x64

.field public static final THRESHOLD_INPUT_DISPATCH_MS:I = 0x12c

.field public static final THRESHOLD_INPUT_PROCESS_MS:I = 0xc8

.field public static final THRESHOLD_PROVIDER_CREATE_MS:I = 0x1388

.field public static final THRESHOLD_QUEUED_WORK_OPER_MS:I = 0x64

.field public static final THRESHOLD_SERVICE_BG_CREATE_MS:I = 0x249f0

.field public static final THRESHOLD_SERVICE_FG_CREATE_MS:I = 0x3a98

.field public static final THRESHOLD_SLOW_DOFRAME_MS:I = 0x12c

.field private static sIsEnableLogMonitor:Z

.field private static sIsEnableTraceBinder:Z

.field private static sIsEnableTraceInput:Z

.field private static sIsEnableTraceLooper:Z

.field private static sIsEnableTraceViewDraw:Z

.field private static sIsEnableTraceViewLayout:Z

.field private static sIsEnableTraceViewMeasure:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "performance monitor"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v0, p1

    if-ge p2, v0, :cond_1e

    aget-object v0, p1, p2

    const-string/jumbo v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "performance properties update"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->loadProperties()V

    :cond_1d
    goto :goto_23

    :cond_1e
    const-string v0, "Use dumpsys activity perfdebug update"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_23
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfMonitor enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableLogMonitor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "catalog measure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewMeasure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " draw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewDraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceBinder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " looper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceLooper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static isEnableLogMonitor()Z
    .registers 1

    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableLogMonitor:Z

    return v0
.end method

.method public static isEnableTraceBinder()Z
    .registers 1

    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceBinder:Z

    return v0
.end method

.method public static isEnableTraceInput()Z
    .registers 1

    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceInput:Z

    return v0
.end method

.method public static isEnableTraceLooper()Z
    .registers 1

    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceLooper:Z

    return v0
.end method

.method public static isEnableTraceViewDraw()Z
    .registers 1

    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewDraw:Z

    return v0
.end method

.method public static isEnableTraceViewLayout()Z
    .registers 1

    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewLayout:Z

    return v0
.end method

.method public static isEnableTraceViewMeasure()Z
    .registers 1

    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewMeasure:Z

    return v0
.end method

.method private static loadProperties()V
    .registers 9

    nop

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "persist.sys.perfdebug.monitor.enable"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableLogMonitor:Z

    const-string/jumbo v0, "persist.sys.perfdebug.monitor.catalog"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/perfdebug/PerfDebugMonitor;->setAllDebugCatalogEnabled(Z)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9d

    const-string v3, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_29
    if-ge v5, v4, :cond_9d

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_9e

    :cond_39
    goto :goto_80

    :sswitch_3a
    const-string/jumbo v8, "measure"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    move v7, v1

    goto :goto_80

    :sswitch_45
    const-string v8, "input"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    const/4 v7, 0x5

    goto :goto_80

    :sswitch_4f
    const-string v8, "draw"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    const/4 v7, 0x3

    goto :goto_80

    :sswitch_59
    const-string v8, "all"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    move v7, v2

    goto :goto_80

    :sswitch_63
    const-string v8, "looper"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    const/4 v7, 0x6

    goto :goto_80

    :sswitch_6d
    const-string v8, "layout"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    const/4 v7, 0x2

    goto :goto_80

    :sswitch_77
    const-string v8, "binder"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    const/4 v7, 0x4

    :goto_80
    packed-switch v7, :pswitch_data_bc

    goto :goto_9a

    :pswitch_84
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceLooper:Z

    goto :goto_9a

    :pswitch_87
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceInput:Z

    goto :goto_9a

    :pswitch_8a
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceBinder:Z

    goto :goto_9a

    :pswitch_8d
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewDraw:Z

    goto :goto_9a

    :pswitch_90
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewLayout:Z

    goto :goto_9a

    :pswitch_93
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewMeasure:Z

    goto :goto_9a

    :pswitch_96
    invoke-static {v1}, Landroid/os/perfdebug/PerfDebugMonitor;->setAllDebugCatalogEnabled(Z)V

    nop

    :goto_9a
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_9d
    return-void

    :sswitch_data_9e
    .sparse-switch
        -0x52c9ea56 -> :sswitch_77
        -0x422504d6 -> :sswitch_6d
        -0x416445af -> :sswitch_63
        0x179a1 -> :sswitch_59
        0x2f2d44 -> :sswitch_4f
        0x5fb57ca -> :sswitch_45
        0x37eda55e -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
    .end packed-switch
.end method

.method public static prepareMonitor()V
    .registers 0

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->loadProperties()V

    return-void
.end method

.method private static setAllDebugCatalogEnabled(Z)V
    .registers 1

    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewMeasure:Z

    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewLayout:Z

    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceViewDraw:Z

    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceInput:Z

    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceBinder:Z

    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitor;->sIsEnableTraceLooper:Z

    return-void
.end method
