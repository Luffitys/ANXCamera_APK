.class public final synthetic Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$PtYe8PQc1PVJQXRnpm3iSxcWTR0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$PtYe8PQc1PVJQXRnpm3iSxcWTR0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$PtYe8PQc1PVJQXRnpm3iSxcWTR0;

    invoke-direct {v0}, Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$PtYe8PQc1PVJQXRnpm3iSxcWTR0;-><init>()V

    sput-object v0, Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$PtYe8PQc1PVJQXRnpm3iSxcWTR0;->INSTANCE:Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$PtYe8PQc1PVJQXRnpm3iSxcWTR0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1, p2}, Landroid/app/job/JobSchedulerFrameworkInitializer;->lambda$registerServiceWrappers$1(Landroid/content/Context;Landroid/os/IBinder;)Landroid/os/DeviceIdleManager;

    move-result-object p1

    return-object p1
.end method
