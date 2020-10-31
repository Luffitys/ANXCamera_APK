.class public final synthetic Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$RHUxgww0pZFMmfQWKgaRAx0YFqA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$RHUxgww0pZFMmfQWKgaRAx0YFqA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$RHUxgww0pZFMmfQWKgaRAx0YFqA;

    invoke-direct {v0}, Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$RHUxgww0pZFMmfQWKgaRAx0YFqA;-><init>()V

    sput-object v0, Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$RHUxgww0pZFMmfQWKgaRAx0YFqA;->INSTANCE:Landroid/app/job/-$$Lambda$JobSchedulerFrameworkInitializer$RHUxgww0pZFMmfQWKgaRAx0YFqA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createService(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/app/job/JobSchedulerFrameworkInitializer;->lambda$registerServiceWrappers$0(Landroid/os/IBinder;)Landroid/app/job/JobScheduler;

    move-result-object p1

    return-object p1
.end method
