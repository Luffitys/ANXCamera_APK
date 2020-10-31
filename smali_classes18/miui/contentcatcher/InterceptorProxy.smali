.class public Lmiui/contentcatcher/InterceptorProxy;
.super Ljava/lang/Object;
.source "InterceptorProxy.java"

# interfaces
.implements Lcom/miui/internal/contentcatcher/IInterceptor;
.implements Lmiui/contentcatcher/IInterceptorContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/InterceptorProxy$H;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final INTERCEPTOR_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "InterceptorProxy"

.field private static mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

.field private static final sBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSpecialContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUiHandler:Landroid/os/Handler;

.field private static volatile sWorkHandler:Landroid/os/Handler;

.field private static volatile sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "interceptor.debug.on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    const-string v0, "interceptor.enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->INTERCEPTOR_ENABLED:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    const-string v1, "com.miui.home.launcher.Launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    const-string v1, "com.android.settings.FallbackHome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    const-string v1, "com.android.settings.CryptKeeper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    const-string v1, "com.miui.gallery.activity.HomePageActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sSpecialContexts:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tbs.common.resources.PluginContextWrapper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "InterceptorProxy"

    const-string v1, "InterceptorProxy create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v0, Lmiui/contentcatcher/InterceptorProxy$H;

    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lmiui/contentcatcher/InterceptorProxy$H;-><init>(Landroid/os/Looper;Landroid/app/Activity;Lmiui/contentcatcher/IInterceptorContainer;)V

    iput-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;
    .registers 2

    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    return-object v0
.end method

.method public static addMiuiApplication()V
    .registers 1

    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    if-nez v0, :cond_e

    new-instance v0, Lmiui/process/MiuiApplicationThread;

    invoke-direct {v0}, Lmiui/process/MiuiApplicationThread;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    invoke-static {v0}, Lmiui/process/ProcessManager;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;)V

    :cond_e
    return-void
.end method

.method public static checkAndInitWebView(Landroid/view/View;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/contentcatcher/InterceptorProxy;->checkAndInitWebView(Landroid/view/View;Landroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public static checkAndInitWebView(Landroid/view/View;Landroid/os/Looper;)Z
    .registers 5

    :try_start_0
    invoke-static {p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->isWebView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lmiui/contentcatcher/InterceptorProxy$1;

    invoke-direct {v0, p0}, Lmiui/contentcatcher/InterceptorProxy$1;-><init>(Landroid/view/View;)V

    invoke-static {v0, p1}, Lmiui/contentcatcher/InterceptorProxy;->postToUiHandler(Ljava/lang/Runnable;Landroid/os/Looper;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_11

    const/4 v0, 0x1

    return v0

    :cond_10
    goto :goto_28

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndInitWebView-Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentCatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    const/4 v0, 0x0

    return v0
.end method

.method public static create(Landroid/app/Activity;)Lmiui/contentcatcher/InterceptorProxy;
    .registers 5

    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->addMiuiApplication()V

    invoke-static {p0}, Lmiui/util/TypefaceUtils;->initSystemFont(Landroid/content/Context;)V

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->INTERCEPTOR_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3f

    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_37

    new-instance v1, Lmiui/contentcatcher/InterceptorProxy;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/InterceptorProxy;-><init>(Landroid/app/Activity;)V

    return-object v1

    :cond_37
    const-string v2, "InterceptorProxy"

    const-string v3, "Failed to create InterceptorProxy!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3f
    return-object v1
.end method

.method public static getAttachedActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_6c

    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_6c

    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_6c

    move-object v2, v1

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-ne v2, v1, :cond_6b

    sget-object v3, Lmiui/contentcatcher/InterceptorProxy;->sSpecialContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const-class v3, Landroid/content/Context;

    const-string v4, "mBase"

    invoke-static {v1, v4, v3}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    goto :goto_3e

    :cond_3d
    move-object v4, v0

    :goto_3e
    if-eqz v4, :cond_6a

    if-eq v1, v4, :cond_6a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get New base context : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " and Cur base context is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InterceptorProxy"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    goto :goto_6c

    :cond_6a
    return-object v0

    :cond_6b
    goto :goto_8

    :cond_6c
    :goto_6c
    if-eqz v1, :cond_76

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_76

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_76
    return-object v0
.end method

.method public static getWorkHandler()Landroid/os/Handler;
    .registers 3

    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_1f

    const-class v0, Lmiui/contentcatcher/InterceptorProxy;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    if-nez v1, :cond_1a

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1

    :cond_1f
    :goto_1f
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getWorkThread()Landroid/os/HandlerThread;
    .registers 4

    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1d

    const-class v0, Lmiui/contentcatcher/InterceptorProxy;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_18

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Binder:interceptor"

    const/4 v3, -0x4

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    sput-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    :cond_18
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1

    :cond_1d
    :goto_1d
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static postToUiHandler(Ljava/lang/Runnable;JLandroid/os/Looper;)V
    .registers 6

    if-eqz p0, :cond_f

    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    if-eqz p3, :cond_c

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v1

    :cond_c
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    return-void
.end method

.method public static postToUiHandler(Ljava/lang/Runnable;Landroid/os/Looper;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Lmiui/contentcatcher/InterceptorProxy;->postToUiHandler(Ljava/lang/Runnable;JLandroid/os/Looper;)V

    return-void
.end method

.method public static postToWorkHandler(Ljava/lang/Runnable;)V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lmiui/contentcatcher/InterceptorProxy;->postToWorkHandler(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static postToWorkHandler(Ljava/lang/Runnable;J)V
    .registers 6

    if-eqz p0, :cond_27

    :try_start_2
    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    :cond_b
    goto :goto_27

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postToWorkHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterceptorProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .registers 6

    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_2d

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " rootView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterceptorProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/internal/contentcatcher/IInterceptor;->dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result v0

    return v0

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .registers 5

    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/internal/contentcatcher/IInterceptor;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;
    .registers 2

    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .registers 2

    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public notifyActivityCreate()V
    .registers 3

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyActivityDestroy()V
    .registers 3

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyActivityPause()V
    .registers 3

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyActivityResume()V
    .registers 3

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyActivityStart()V
    .registers 3

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyActivityStop()V
    .registers 3

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyContentChange()V
    .registers 2

    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyContentChange()V

    :cond_7
    return-void
.end method

.method public notifyWebView(Landroid/view/View;Z)V
    .registers 5

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyWebView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterceptorProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_21

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyWebView(Landroid/view/View;Z)V

    :cond_21
    return-void
.end method

.method public setInterceptor(Lcom/miui/internal/contentcatcher/IInterceptor;)V
    .registers 2

    iput-object p1, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    return-void
.end method

.method public setWebView(Landroid/view/View;Z)V
    .registers 5

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWebView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterceptorProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/contentcatcher/InterceptorProxy$2;

    invoke-direct {v1, p0, p2, p1}, Lmiui/contentcatcher/InterceptorProxy$2;-><init>(Lmiui/contentcatcher/InterceptorProxy;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
