.class public Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;
.super Ljava/lang/Object;
.source "Android_App_ActivityThread_class.java"

# interfaces
.implements Lcom/miui/internal/variable/Android_App_ActivityThread_class;


# static fields
.field private static final TAG:Ljava/lang/String; = "Android_App_ActivityThread_class_v16"


# instance fields
.field private mCurrentActivityThread:Ljava/lang/Object;

.field private volatile mCurrentApplication:Landroid/app/Application;

.field private mInitialLoadedApk:Ljava/lang/Object;

.field private mInitialPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentActivityThread:Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentApplication:Landroid/app/Application;

    :try_start_8
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentActivityThread:Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_24

    goto :goto_2e

    :catch_24
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.app.ActivityThread.currentActivityThread"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public currentActivityThread()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentActivityThread:Ljava/lang/Object;

    return-object v0
.end method

.method public currentApplication()Landroid/app/Application;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentApplication:Landroid/app/Application;

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentActivityThread:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentApplication:Landroid/app/Application;

    :cond_22
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentApplication:Landroid/app/Application;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    return-object v0

    :catch_25
    move-exception v1

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "android.app.ActivityThread.currentApplication"

    invoke-virtual {v2, v3, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getInitialLoadedApk(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->getInitialPackageName(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mInitialLoadedApk:Ljava/lang/Object;

    return-object v0
.end method

.method public getInitialPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mInitialPackageName:Ljava/lang/String;

    if-nez v0, :cond_3c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPackages"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mInitialPackageName:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mInitialLoadedApk:Ljava/lang/Object;

    :cond_3c
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mInitialPackageName:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object v0

    :catch_3f
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.app.ActivityThread.mPackages"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
.end method
