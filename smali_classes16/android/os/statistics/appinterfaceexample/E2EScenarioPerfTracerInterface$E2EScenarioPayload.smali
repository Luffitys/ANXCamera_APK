.class public Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "E2EScenarioPayload"
.end annotation


# instance fields
.field private final payload:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public putAll(Ljava/util/Map;)V
    .registers 6

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutAll:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->access$400()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1a

    :try_start_6
    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutAll:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->access$400()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public varargs putValues([Ljava/lang/Object;)V
    .registers 6

    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutValues:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->access$300()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1a

    :try_start_6
    # getter for: Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutValues:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->access$300()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    :goto_1a
    return-void
.end method
