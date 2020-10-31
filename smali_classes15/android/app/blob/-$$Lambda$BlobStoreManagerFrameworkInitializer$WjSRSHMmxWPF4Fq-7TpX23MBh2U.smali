.class public final synthetic Landroid/app/blob/-$$Lambda$BlobStoreManagerFrameworkInitializer$WjSRSHMmxWPF4Fq-7TpX23MBh2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/blob/-$$Lambda$BlobStoreManagerFrameworkInitializer$WjSRSHMmxWPF4Fq-7TpX23MBh2U;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/blob/-$$Lambda$BlobStoreManagerFrameworkInitializer$WjSRSHMmxWPF4Fq-7TpX23MBh2U;

    invoke-direct {v0}, Landroid/app/blob/-$$Lambda$BlobStoreManagerFrameworkInitializer$WjSRSHMmxWPF4Fq-7TpX23MBh2U;-><init>()V

    sput-object v0, Landroid/app/blob/-$$Lambda$BlobStoreManagerFrameworkInitializer$WjSRSHMmxWPF4Fq-7TpX23MBh2U;->INSTANCE:Landroid/app/blob/-$$Lambda$BlobStoreManagerFrameworkInitializer$WjSRSHMmxWPF4Fq-7TpX23MBh2U;

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

    invoke-static {p1, p2}, Landroid/app/blob/BlobStoreManagerFrameworkInitializer;->lambda$initialize$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/blob/BlobStoreManager;

    move-result-object p1

    return-object p1
.end method
