.class public Landroid/app/job/JobSchedulerFrameworkInitializer;
.super Ljava/lang/Object;
.source "JobSchedulerFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$registerServiceWrappers$0(Landroid/os/IBinder;)Landroid/app/job/JobScheduler;
    .registers 3

    new-instance v0, Landroid/app/JobSchedulerImpl;

    invoke-static {p0}, Landroid/app/job/IJobScheduler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobScheduler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/app/job/IJobScheduler;)V

    return-object v0
.end method

.method static synthetic lambda$registerServiceWrappers$1(Landroid/content/Context;Landroid/os/IBinder;)Landroid/os/DeviceIdleManager;
    .registers 4

    new-instance v0, Landroid/os/DeviceIdleManager;

    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/os/DeviceIdleManager;-><init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V

    return-object v0
.end method

.method public static registerServiceWrappers()V
    .registers 3

    const-class v0, Landroid/app/job/JobScheduler;

    sget-object v1, Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$RHUxgww0pZFMmfQWKgaRAx0YFqA;->INSTANCE:Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$RHUxgww0pZFMmfQWKgaRAx0YFqA;

    const-string v2, "jobscheduler"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V

    const-class v0, Landroid/os/DeviceIdleManager;

    sget-object v1, Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$PtYe8PQc1PVJQXRnpm3iSxcWTR0;->INSTANCE:Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$PtYe8PQc1PVJQXRnpm3iSxcWTR0;

    const-string v2, "deviceidle"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    const-class v0, Landroid/os/PowerWhitelistManager;

    sget-object v1, Landroid/app/job/-$$Lambda$FpGlzN9oJcl8o5soW-gU-DyTvXM;->INSTANCE:Landroid/app/job/-$$Lambda$FpGlzN9oJcl8o5soW-gU-DyTvXM;

    const-string/jumbo v2, "power_whitelist"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    return-void
.end method
