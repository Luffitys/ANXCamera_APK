.class Landroid/app/SystemServiceRegistry$119;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistry;->registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "TTServiceClass;>;"
    }
.end annotation


# instance fields
.field final synthetic val$serviceName:Ljava/lang/String;

.field final synthetic val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;


# direct methods
.method constructor <init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/app/SystemServiceRegistry$119;->val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;

    iput-object p2, p0, Landroid/app/SystemServiceRegistry$119;->val$serviceName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTServiceClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/SystemServiceRegistry$119;->val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;

    iget-object v1, p0, Landroid/app/SystemServiceRegistry$119;->val$serviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;->createService(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
