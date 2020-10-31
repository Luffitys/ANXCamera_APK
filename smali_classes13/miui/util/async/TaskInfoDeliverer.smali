.class Lmiui/util/async/TaskInfoDeliverer;
.super Ljava/lang/Object;
.source "TaskInfoDeliverer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;,
        Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
    }
.end annotation


# static fields
.field private static final TASK_DELIVERY_INFO_POOL:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool<",
            "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

.field private mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue<",
            "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskManager:Lmiui/util/async/TaskManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/util/async/TaskInfoDeliverer$1;

    invoke-direct {v0}, Lmiui/util/async/TaskInfoDeliverer$1;-><init>()V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiui/util/async/TaskInfoDeliverer;->TASK_DELIVERY_INFO_POOL:Lmiui/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Lmiui/util/async/TaskManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskManager:Lmiui/util/async/TaskManager;

    new-instance v0, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    new-instance v0, Lmiui/util/concurrent/ConcurrentRingQueue;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;

    return-void
.end method

.method static synthetic access$000(Lmiui/util/async/TaskInfoDeliverer;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/async/TaskInfoDeliverer;->processAllDelivery()V

    return-void
.end method

.method static synthetic access$102(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;)Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;
    .registers 2

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    return-object p1
.end method

.method private processAllDelivery()V
    .registers 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2f

    :goto_c
    iget-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    if-eqz v0, :cond_2e

    iget-object v1, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->task:Lmiui/util/async/Task;

    iget-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskManager:Lmiui/util/async/TaskManager;

    iget-object v3, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->delivery:Lmiui/util/async/Task$Delivery;

    iget-object v4, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->info:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lmiui/util/async/Task;->deliver(Lmiui/util/async/TaskManager;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    sget-object v1, Lmiui/util/async/TaskInfoDeliverer;->TASK_DELIVERY_INFO_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    :cond_2e
    goto :goto_c

    :cond_2f
    iget-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->post(Lmiui/util/async/TaskInfoDeliverer;)V

    :cond_34
    return-void
.end method


# virtual methods
.method public postDeliver(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;",
            "Lmiui/util/async/Task$Delivery;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object v0, Lmiui/util/async/TaskInfoDeliverer;->TASK_DELIVERY_INFO_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    iput-object p1, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->task:Lmiui/util/async/Task;

    iput-object p2, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->delivery:Lmiui/util/async/Task$Delivery;

    iput-object p3, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->info:Ljava/lang/Object;

    sget-object v1, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    if-ne p2, v1, :cond_1f

    if-nez p3, :cond_1f

    move-object v1, p1

    iget-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;

    new-instance v3, Lmiui/util/async/TaskInfoDeliverer$3;

    invoke-direct {v3, p0, v1}, Lmiui/util/async/TaskInfoDeliverer$3;-><init>(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/Task;)V

    invoke-virtual {v2, v3}, Lmiui/util/concurrent/ConcurrentRingQueue;->remove(Lmiui/util/concurrent/Queue$Predicate;)I

    :cond_1f
    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->mTaskDeliveryInfoQueue:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v1, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->put(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiui/util/async/TaskInfoDeliverer;->processAllDelivery()V

    return-void
.end method

.method public setCallbackThread(Z)V
    .registers 5

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz p1, :cond_23

    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_23

    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    new-instance v1, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-direct {v1, v0}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    goto :goto_3a

    :cond_23
    if-nez p1, :cond_3a

    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_3a

    new-instance v1, Lmiui/util/async/TaskInfoDeliverer$2;

    invoke-direct {v1, p0}, Lmiui/util/async/TaskInfoDeliverer$2;-><init>(Lmiui/util/async/TaskInfoDeliverer;)V

    const-string v2, "TaskInfoDeliverer-Callback"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_3a
    :goto_3a
    return-void
.end method
