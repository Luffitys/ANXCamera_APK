.class public Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;
.super Ljava/lang/Object;
.source "EgretRuntimeLoader.java"


# static fields
.field private static final GAME_ENGINE_CLASS:Ljava/lang/String; = "org.egret.egretframeworknative.engine.EgretGameEngine"

.field private static final TAG:Ljava/lang/String; = "EgretRuntimeLoader"

.field private static instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;


# instance fields
.field private egretGameEngineClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private loaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loaded:Z

    return-void
.end method

.method public static get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;
    .registers 1

    sget-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    if-nez v0, :cond_b

    new-instance v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    invoke-direct {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;-><init>()V

    sput-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    :cond_b
    sget-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    return-object v0
.end method


# virtual methods
.method public getEgretGameEngineClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loaded:Z

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loaded:Z

    const-string v0, ".jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loadJar(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public loadJar(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/File;->setExecutable(Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadJar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EgretRuntimeLoader"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2f
    new-instance v1, Ldalvik/system/DexClassLoader;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    if-nez v2, :cond_52

    const-string v2, "org.egret.egretframeworknative.engine.EgretGameEngine"

    invoke-virtual {v1, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_52} :catch_53

    :cond_52
    goto :goto_5e

    :catch_53
    move-exception v1

    const-string v2, "Loader"

    const-string v3, "need dex format jar"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5e
    return-void
.end method
