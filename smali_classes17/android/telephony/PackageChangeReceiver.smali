.class public abstract Landroid/telephony/PackageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageChangeReceiver.java"


# static fields
.field private static sHandlerThread:Landroid/os/HandlerThread;

.field static final sPackageIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field mRegisteredContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Landroid/telephony/PackageChangeReceiver;->sPackageIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/PackageChangeReceiver;->sPackageIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/PackageChangeReceiver;->sPackageIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/PackageChangeReceiver;->sPackageIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/PackageChangeReceiver;->sPackageIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/PackageChangeReceiver;->sPackageIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static declared-synchronized getStaticLooper()Landroid/os/Looper;
    .registers 3

    const-class v0, Landroid/telephony/PackageChangeReceiver;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/telephony/PackageChangeReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_15

    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/telephony/PackageChangeReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_15
    sget-object v1, Landroid/telephony/PackageChangeReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-object v1

    :catchall_1d
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public onHandleForceStop([Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPackageAppeared()V
    .registers 1

    return-void
.end method

.method public onPackageDisappeared()V
    .registers 1

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    invoke-virtual {p0, p2}, Landroid/telephony/PackageChangeReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p0, v1}, Landroid/telephony/PackageChangeReceiver;->onPackageUpdateFinished(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/telephony/PackageChangeReceiver;->onPackageModified(Ljava/lang/String;)V

    goto :goto_25

    :cond_22
    invoke-virtual {p0, v1}, Landroid/telephony/PackageChangeReceiver;->onPackageAdded(Ljava/lang/String;)V

    :goto_25
    invoke-virtual {p0}, Landroid/telephony/PackageChangeReceiver;->onPackageAppeared()V

    :cond_28
    goto :goto_7e

    :cond_29
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0, p2}, Landroid/telephony/PackageChangeReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual {p0, v1}, Landroid/telephony/PackageChangeReceiver;->onPackageRemoved(Ljava/lang/String;)V

    :cond_40
    invoke-virtual {p0}, Landroid/telephony/PackageChangeReceiver;->onPackageDisappeared()V

    :cond_43
    goto :goto_7e

    :cond_44
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p0, p2}, Landroid/telephony/PackageChangeReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {p0, v1}, Landroid/telephony/PackageChangeReceiver;->onPackageModified(Ljava/lang/String;)V

    :cond_55
    goto :goto_7e

    :cond_56
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Landroid/telephony/PackageChangeReceiver;->onHandleForceStop([Ljava/lang/String;Z)V

    goto :goto_7d

    :cond_68
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/telephony/PackageChangeReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2, v1}, Landroid/telephony/PackageChangeReceiver;->onHandleForceStop([Ljava/lang/String;Z)V

    goto :goto_7e

    :cond_7d
    :goto_7d
    nop

    :goto_7e
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;)V
    .registers 8

    iget-object v0, p0, Landroid/telephony/PackageChangeReceiver;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_23

    new-instance v0, Landroid/os/Handler;

    if-nez p2, :cond_d

    invoke-static {}, Landroid/telephony/PackageChangeReceiver;->getStaticLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_e

    :cond_d
    move-object v1, p2

    :goto_e
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-nez p3, :cond_15

    move-object v1, p1

    goto :goto_1a

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    :goto_1a
    iput-object v1, p0, Landroid/telephony/PackageChangeReceiver;->mRegisteredContext:Landroid/content/Context;

    sget-object v2, Landroid/telephony/PackageChangeReceiver;->sPackageIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregister()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/PackageChangeReceiver;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/PackageChangeReceiver;->mRegisteredContext:Landroid/content/Context;

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
