.class public Lcom/miui/internal/analytics/PersistenceHelper;
.super Ljava/lang/Object;
.source "PersistenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/analytics/PersistenceHelper$RunThread;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lcom/miui/internal/analytics/PersistenceHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_WRITE_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PersistenceHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventBuilder:Lcom/miui/internal/analytics/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/analytics/ObjectBuilder<",
            "Lcom/miui/internal/analytics/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mStore:Lcom/miui/internal/analytics/Storable;

.field private mStoreBuilder:Lcom/miui/internal/analytics/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/analytics/ObjectBuilder<",
            "Lcom/miui/internal/analytics/Storable;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;

.field private final mWorkerReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/internal/analytics/PersistenceHelper$1;

    invoke-direct {v0}, Lcom/miui/internal/analytics/PersistenceHelper$1;-><init>()V

    sput-object v0, Lcom/miui/internal/analytics/PersistenceHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mWorkerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-direct {v0}, Lcom/miui/internal/analytics/ObjectBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mStoreBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    new-instance v0, Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-direct {v0}, Lcom/miui/internal/analytics/ObjectBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mEventBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/TrackEvent;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mEventBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/LogEvent;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mEventBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/TrackPageViewEvent;

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mStoreBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/SQLiteStore;

    const-string v2, "ANALYTICS.SQLITESTORE"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/internal/analytics/PersistenceHelper;->createStore()V

    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mWorkerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_46
    new-instance v1, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;-><init>(Lcom/miui/internal/analytics/PersistenceHelper;Lcom/miui/internal/analytics/PersistenceHelper$1;)V

    invoke-virtual {v1}, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->start()V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_61

    :goto_4f
    :try_start_4f
    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mWorkerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mWorkerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_5c} :catch_5e
    .catchall {:try_start_4f .. :try_end_5c} :catchall_61

    goto :goto_4f

    :cond_5d
    goto :goto_5f

    :catch_5e
    move-exception v1

    :goto_5f
    :try_start_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_61

    throw v1
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/PersistenceHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/analytics/PersistenceHelper;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/internal/analytics/PersistenceHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mWorkerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/internal/analytics/PersistenceHelper;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/internal/analytics/PersistenceHelper;Lcom/miui/internal/analytics/Event;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/PersistenceHelper;->writeEventImp(Lcom/miui/internal/analytics/Event;)V

    return-void
.end method

.method private createStore()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mStoreBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-string v1, "ANALYTICS.SQLITESTORE"

    invoke-virtual {v0, v1}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/Storable;

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mStore:Lcom/miui/internal/analytics/Storable;

    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/miui/internal/analytics/Storable;->create(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/analytics/PersistenceHelper;
    .registers 1

    sget-object v0, Lcom/miui/internal/analytics/PersistenceHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/PersistenceHelper;

    return-object v0
.end method

.method private writeEventImp(Lcom/miui/internal/analytics/Event;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mStore:Lcom/miui/internal/analytics/Storable;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Lcom/miui/internal/analytics/Event;->writeEvent(Lcom/miui/internal/analytics/Storable;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mStore:Lcom/miui/internal/analytics/Storable;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/miui/internal/analytics/Storable;->close()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mStore:Lcom/miui/internal/analytics/Storable;

    :cond_15
    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Item;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Event;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mStore:Lcom/miui/internal/analytics/Storable;

    if-eqz v0, :cond_79

    invoke-interface {v0, p1}, Lcom/miui/internal/analytics/Storable;->readDataset(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_79

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    :try_start_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v2, "type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mEventBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/analytics/Event;

    if-eqz v3, :cond_6b

    invoke-virtual {v3, v0}, Lcom/miui/internal/analytics/Event;->restore(Landroid/database/Cursor;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/analytics/Item;

    invoke-virtual {v3}, Lcom/miui/internal/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/internal/analytics/Item;->idMatches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/miui/internal/analytics/Item;->isDispatch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-virtual {v5}, Lcom/miui/internal/analytics/Item;->getPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/analytics/Event;->setPolicy(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_69} :catch_6d

    goto :goto_6b

    :cond_6a
    goto :goto_41

    :cond_6b
    :goto_6b
    goto :goto_f

    :cond_6c
    goto :goto_75

    :catch_6d
    move-exception v2

    const-string v3, "PersistenceHelper"

    const-string v4, "IllegalArgumentException catched when readEvents from storage"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public selectStore(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mStoreBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-virtual {v1, p1}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Storable;

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mStore:Lcom/miui/internal/analytics/Storable;

    if-eqz v2, :cond_12

    invoke-interface {v2}, Lcom/miui/internal/analytics/Storable;->close()V

    :cond_12
    iput-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mStore:Lcom/miui/internal/analytics/Storable;

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public writeEvent(Lcom/miui/internal/analytics/Event;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method public writeEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    new-instance v6, Lcom/miui/internal/analytics/TrackEvent;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/analytics/TrackEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    invoke-virtual {p0, v6}, Lcom/miui/internal/analytics/PersistenceHelper;->writeEvent(Lcom/miui/internal/analytics/Event;)V

    return-void
.end method
