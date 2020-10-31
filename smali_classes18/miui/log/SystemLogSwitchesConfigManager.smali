.class public final Lmiui/log/SystemLogSwitchesConfigManager;
.super Ljava/lang/Object;
.source "SystemLogSwitchesConfigManager.java"


# static fields
.field private static final logSwitchesFileName:Ljava/lang/String; = "switches.config"

.field private static final logSwitchesFolder:Ljava/lang/String; = "/data/system/miuilog/switches"

.field private static final logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lmiui/log/LogSwitchesConfigManager;

    const-string v1, "/data/system/miuilog/switches"

    const-string v2, "switches.config"

    invoke-direct {v0, v1, v2}, Lmiui/log/LogSwitchesConfigManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLogSwitch(Z)V
    .registers 3

    sget-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    invoke-static {}, Lmiui/log/SystemLogSwitchesConfigManager;->synchronizedReadInitialLogSwitches()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lmiui/log/LogSwitchesConfigManager;->startMonitoring(ZZ)V

    return-void
.end method

.method private static synchronizedReadInitialLogSwitches()Z
    .registers 2

    const-string v0, "sys.miui.sync_read_log_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updateLogSwitches(Landroid/content/Intent;)V
    .registers 2

    sget-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    invoke-virtual {v0, p0}, Lmiui/log/LogSwitchesConfigManager;->updateLogSwitches(Landroid/content/Intent;)V

    return-void
.end method

.method public static updatePackageName(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    invoke-virtual {v0, p0}, Lmiui/log/LogSwitchesConfigManager;->updatePackageName(Ljava/lang/String;)V

    return-void
.end method

.method public static updateProgramName()V
    .registers 1

    sget-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    invoke-virtual {v0}, Lmiui/log/LogSwitchesConfigManager;->updateProgramName()V

    return-void
.end method

.method public static updateProgramName(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    invoke-virtual {v0, p0}, Lmiui/log/LogSwitchesConfigManager;->updateProgramName(Ljava/lang/String;)V

    return-void
.end method
