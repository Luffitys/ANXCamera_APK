.class public Lmiui/contentcatcher/sdk/ContentCatcherManager;
.super Ljava/lang/Object;
.source "ContentCatcherManager.java"


# static fields
.field private static final CONTENTCAP_SERVICE_NAME:Ljava/lang/String; = "miui.contentcatcher.ContentCatcherService"

.field private static DEBUG:Z = false

.field public static final MI_LIFE_VERSION:I = 0x2

.field public static final MI_MARKET_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;


# instance fields
.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private volatile mService:Lmiui/contentcatcher/IContentCatcherService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;

    invoke-direct {v0, p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;-><init>(Lmiui/contentcatcher/sdk/ContentCatcherManager;)V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/contentcatcher/sdk/ContentCatcherManager;)Lmiui/contentcatcher/IContentCatcherService;
    .registers 2

    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/contentcatcher/sdk/ContentCatcherManager;Lmiui/contentcatcher/IContentCatcherService;)Lmiui/contentcatcher/IContentCatcherService;
    .registers 2

    iput-object p1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-object p1
.end method

.method public static getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;
    .registers 2

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    if-nez v0, :cond_17

    const-class v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    if-nez v1, :cond_12

    new-instance v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    invoke-direct {v1}, Lmiui/contentcatcher/sdk/ContentCatcherManager;-><init>()V

    sput-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    return-object v0
.end method


# virtual methods
.method public decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    .registers 8

    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_22

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decorateContent listenerToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", targetInjectorToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-interface {v0, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_2c

    :cond_2b
    goto :goto_47

    :catch_2c
    move-exception v0

    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decorateContent error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-void
.end method

.method protected getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;
    .registers 4

    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    if-nez v0, :cond_37

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    if-nez v0, :cond_32

    const-string v0, "miui.contentcatcher.ContentCatcherService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/contentcatcher/IContentCatcherService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_34

    if-eqz v0, :cond_2b

    :try_start_19
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    invoke-interface {v0}, Lmiui/contentcatcher/IContentCatcherService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_26
    .catchall {:try_start_19 .. :try_end_25} :catchall_34

    goto :goto_2a

    :catch_26
    move-exception v0

    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    goto :goto_32

    :cond_2b
    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to get ContentCatcherService."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    monitor-exit p0

    goto :goto_37

    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_34

    throw v0

    :cond_37
    :goto_37
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-object v0
.end method

.method public getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;
    .registers 6

    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPageInjectorInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-interface {v0, p1}, Lmiui/contentcatcher/IContentCatcherService;->getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;

    move-result-object v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_26

    return-object v1

    :cond_25
    goto :goto_41

    :catch_26
    move-exception v0

    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPageInterested error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onContentCatched(Lmiui/contentcatcher/sdk/Content;)V
    .registers 6

    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentCatched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v0, p1}, Lmiui/contentcatcher/IContentCatcherService;->onContentCatched(Lmiui/contentcatcher/sdk/Content;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_24

    :cond_23
    goto :goto_3f

    :catch_24
    move-exception v0

    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContentCatched error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void
.end method

.method public registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V
    .registers 7

    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerContentInjector "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v0, p1, p2}, Lmiui/contentcatcher/IContentCatcherService;->registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_24

    :cond_23
    goto :goto_3f

    :catch_24
    move-exception v0

    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerContentInjector error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void
.end method

.method public registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V
    .registers 7

    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string v1, "registerContentListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0, p1, p2}, Lmiui/contentcatcher/IContentCatcherService;->registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :cond_14
    goto :goto_30

    :catch_15
    move-exception v0

    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerContentListener error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V
    .registers 6

    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string v1, "unregisterContentInjector"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0, p1}, Lmiui/contentcatcher/IContentCatcherService;->unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :cond_14
    goto :goto_30

    :catch_15
    move-exception v0

    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterContentInjector error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V
    .registers 6

    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string v1, "unregisterContentListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0, p1}, Lmiui/contentcatcher/IContentCatcherService;->unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :cond_14
    goto :goto_30

    :catch_15
    move-exception v0

    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterContentListener error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8

    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClientConfig target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " jobTag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-interface {v0, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_33} :catch_34

    :cond_33
    goto :goto_4f

    :catch_34
    move-exception v0

    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateClientConfig error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    const/4 v0, 0x1

    return v0
.end method

.method public updateConfig([Ljava/lang/String;)Z
    .registers 6

    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string v1, "updateConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0, p1}, Lmiui/contentcatcher/IContentCatcherService;->updateConfig([Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :cond_14
    goto :goto_30

    :catch_15
    move-exception v0

    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConfig error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    const/4 v0, 0x1

    return v0
.end method

.method public updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateJobValidity jobTag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-interface {v0, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_33} :catch_34

    :cond_33
    goto :goto_4f

    :catch_34
    move-exception v0

    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateJobValidity error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    return-void
.end method
