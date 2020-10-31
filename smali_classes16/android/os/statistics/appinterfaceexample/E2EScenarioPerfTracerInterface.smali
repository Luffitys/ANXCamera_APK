.class Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;,
        Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;,
        Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    }
.end annotation


# static fields
.field public static final STATISTICS_MODE_AVERAGE:I = 0x1

.field public static final STATISTICS_MODE_DISTRIBUTION:I = 0x4

.field public static final STATISTICS_MODE_HISTORY:I = 0x2

.field public static final STATISTICS_MODE_NONE:I

.field private static volatile sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

.field private static volatile sAbortSpecificScenario:Ljava/lang/reflect/Method;

.field private static volatile sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

.field private static volatile sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioPayloadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioPayloadMethodPutAll:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioPayloadMethodPutValues:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioPerfTracerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioSettingsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioSettingsMethodEnableAutoAnalysis:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioSettingsMethodSetHistoryLimitPerDay:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioSettingsMethodSetStatisticsMode:Ljava/lang/reflect/Method;

.field private static volatile sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

.field private static volatile sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;

.field private static final sInitLockObject:Ljava/lang/Object;

.field private static volatile sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitLockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortScenario(Landroid/os/Bundle;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_a

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_a
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortSpecificScenario:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    :try_start_e
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortSpecificScenario:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static abortScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)V
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->abortScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;)V

    return-void
.end method

.method public static abortScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_a

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_a
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_26

    :try_start_e
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->scenario:Ljava/lang/Object;
    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->access$800(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    :goto_26
    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetStatisticsMode:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetHistoryLimitPerDay:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodEnableAutoAnalysis:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutValues:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutAll:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)V
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .registers 4

    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .registers 12

    if-eqz p0, :cond_64

    if-nez p1, :cond_5

    goto :goto_64

    :cond_5
    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_c

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_c
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v0, :cond_3b

    :try_start_16
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Object;

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->scenario:Ljava/lang/Object;
    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->access$800(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v4

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;
    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->access$900(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v3

    aput-object p2, v5, v2

    if-nez p3, :cond_2c

    move-object v2, v6

    goto :goto_30

    :cond_2c
    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;
    invoke-static {p3}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->access$1000(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;

    move-result-object v2

    :goto_30
    aput-object v2, v5, v1

    invoke-virtual {v0, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3a
    goto :goto_63

    :cond_3b
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_63

    :try_start_3f
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Object;

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->scenario:Ljava/lang/Object;
    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->access$800(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v4

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;
    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->access$900(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v3

    aput-object p2, v5, v2

    if-nez p3, :cond_55

    move-object v2, v6

    goto :goto_59

    :cond_55
    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;
    invoke-static {p3}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->access$1000(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;

    move-result-object v2

    :goto_59
    aput-object v2, v5, v1

    invoke-virtual {v0, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_63
    :goto_63
    return-void

    :cond_64
    :goto_64
    return-void
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Landroid/os/Bundle;
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;
    .registers 4

    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    if-nez p1, :cond_6

    goto :goto_3e

    :cond_6
    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v1, :cond_d

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_d
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3d

    :try_start_11
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->scenario:Ljava/lang/Object;
    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->access$800(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;
    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->access$900(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    if-nez p3, :cond_2c

    move-object v4, v0

    goto :goto_30

    :cond_2c
    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;
    invoke-static {p3}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->access$1000(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;

    move-result-object v4

    :goto_30
    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_38} :catch_39

    return-object v1

    :catch_39
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    return-object v0

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method public static createE2EScenario(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .registers 7

    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_7
    const/4 v0, 0x0

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_24

    :try_start_c
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_20

    move-object v0, v1

    goto :goto_24

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    :goto_24
    const/4 v1, 0x0

    if-nez v0, :cond_28

    goto :goto_2e

    :cond_28
    new-instance v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;

    invoke-direct {v2, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;-><init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$1;)V

    move-object v1, v2

    :goto_2e
    return-object v1
.end method

.method public static createE2EScenarioPayload()Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;
    .registers 3

    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_7
    const/4 v0, 0x0

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_1b

    :try_start_c
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_17

    move-object v0, v1

    goto :goto_1b

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    if-nez v0, :cond_1f

    goto :goto_25

    :cond_1f
    new-instance v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;

    invoke-direct {v2, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;-><init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$1;)V

    move-object v1, v2

    :goto_25
    return-object v1
.end method

.method public static createE2EScenarioSettings()Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
    .registers 3

    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_7
    const/4 v0, 0x0

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_1b

    :try_start_c
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_17

    move-object v0, v1

    goto :goto_1b

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    if-nez v0, :cond_1f

    goto :goto_25

    :cond_1f
    new-instance v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;

    invoke-direct {v2, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;-><init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$1;)V

    move-object v1, v2

    :goto_25
    return-object v1
.end method

.method public static finishScenario(Landroid/os/Bundle;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/Bundle;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/Bundle;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_a

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_a
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2a

    :try_start_e
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1c

    move-object v4, v3

    goto :goto_20

    :cond_1c
    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;
    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->access$1000(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;

    move-result-object v4

    :goto_20
    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)V
    .registers 3

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .registers 3

    const-string v0, ""

    invoke-static {p0, v0, p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_a

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_a
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_31

    :try_start_e
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->scenario:Ljava/lang/Object;
    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->access$800(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p2, :cond_23

    move-object v4, v3

    goto :goto_27

    :cond_23
    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;
    invoke-static {p2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->access$1000(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;

    move-result-object v4

    :goto_27
    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    :goto_31
    return-void
.end method

.method public static init()V
    .registers 10

    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_14b

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_148

    if-nez v1, :cond_146

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_f
    const-string v5, "android.os.statistics.E2EScenario"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2d} :catch_2e
    .catchall {:try_start_f .. :try_end_2d} :catchall_148

    goto :goto_2f

    :catch_2e
    move-exception v5

    :goto_2f
    :try_start_2f
    const-string v5, "android.os.statistics.E2EScenarioSettings"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const-string/jumbo v6, "setStatisticsMode"

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetStatisticsMode:Ljava/lang/reflect/Method;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const-string/jumbo v6, "setHistoryLimitPerDay"

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetHistoryLimitPerDay:Ljava/lang/reflect/Method;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const-string v6, "enableAutoAnalysis"

    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodEnableAutoAnalysis:Ljava/lang/reflect/Method;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_77} :catch_78
    .catchall {:try_start_2f .. :try_end_77} :catchall_148

    goto :goto_79

    :catch_78
    move-exception v5

    :goto_79
    :try_start_79
    const-string v5, "android.os.statistics.E2EScenarioPayload"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const-string/jumbo v6, "putValues"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, [Ljava/lang/Object;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutValues:Ljava/lang/reflect/Method;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const-string/jumbo v6, "putAll"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/util/Map;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutAll:Ljava/lang/reflect/Method;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_ad} :catch_ae
    .catchall {:try_start_79 .. :try_end_ad} :catchall_148

    goto :goto_af

    :catch_ae
    move-exception v5

    :goto_af
    :try_start_af
    const-string v5, "android.os.statistics.E2EScenarioPerfTracer"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string v6, "beginScenario"

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    aput-object v9, v8, v3

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v2

    sget-object v9, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_d4} :catch_143
    .catchall {:try_start_af .. :try_end_d4} :catchall_148

    :try_start_d4
    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string v6, "asyncBeginScenario"

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    sget-object v8, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_f0} :catch_f1
    .catchall {:try_start_d4 .. :try_end_f0} :catchall_148

    goto :goto_f2

    :catch_f1
    move-exception v5

    :goto_f2
    :try_start_f2
    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string v6, "abortScenario"

    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string v6, "abortScenario"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortSpecificScenario:Ljava/lang/reflect/Method;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string v6, "finishScenario"

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v7, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    aput-object v7, v1, v4

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v3

    sget-object v7, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    aput-object v7, v1, v2

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string v5, "finishScenario"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v2, v4

    sget-object v4, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_142} :catch_143
    .catchall {:try_start_f2 .. :try_end_142} :catchall_148

    goto :goto_144

    :catch_143
    move-exception v1

    :goto_144
    :try_start_144
    sput-boolean v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    :cond_146
    monitor-exit v0

    goto :goto_14b

    :catchall_148
    move-exception v1

    monitor-exit v0
    :try_end_14a
    .catchall {:try_start_144 .. :try_end_14a} :catchall_148

    throw v1

    :cond_14b
    :goto_14b
    return-void
.end method

.method public static isUsable()Z
    .registers 1

    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_7
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method
