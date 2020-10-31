.class public Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "E2EScenarioSettings"
.end annotation


# instance fields
.field private final scenarioSettings:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public enableAutoAnalysis(II)V
    .registers 8

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodEnableAutoAnalysis:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->access$200()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_25

    :try_start_6
    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodEnableAutoAnalysis:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->access$200()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    :goto_25
    return-void
.end method

.method public setHistoryLimitPerDay(I)V
    .registers 7

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetHistoryLimitPerDay:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->access$100()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_6
    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetHistoryLimitPerDay:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->access$100()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public setStatisticsMode(I)V
    .registers 7

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetStatisticsMode:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_6
    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetStatisticsMode:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-void
.end method
