.class public Lorg/egret/plugin/mi/runtime/EgretLoader;
.super Ljava/lang/Object;
.source "EgretLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/runtime/EgretLoader$GameOptionName;,
        Lorg/egret/plugin/mi/runtime/EgretLoader$GameEngineMethod;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "EgretLoader"

.field private static final MI_APPID:Ljava/lang/String; = "2000"

.field private static final MI_APPKEY:Ljava/lang/String; = "3321031F35156D389B0B272910695E3F"


# instance fields
.field private activity:Landroid/app/Activity;

.field private gameEngine:Ljava/lang/Object;

.field private launcher:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

.field private options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EgretLoader"

    const-string v1, "EgretLoader(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    :cond_1c
    return-void
.end method

.method static synthetic access$000(Lorg/egret/plugin/mi/runtime/EgretLoader;Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->startGame(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lorg/egret/plugin/mi/runtime/EgretLoader;)V
    .registers 1

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->startGameEngine()V

    return-void
.end method

.method private callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    if-nez v1, :cond_8

    goto :goto_1c

    :cond_8
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    invoke-virtual {v1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_1c
    :goto_1c
    return-object v0
.end method

.method private callInitRuntime()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    aput-object v2, v0, v3

    const-string v2, "game_engine_init"

    invoke-direct {p0, v2, v1, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private callSetGameOptions()V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EgretLoader"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_4e
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/HashMap;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v3, "game_engine_set_options"

    invoke-direct {p0, v3, v2, v1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private callSetRuntimeView()V
    .registers 3

    const-string v0, "game_engine_get_view"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->setScreenOrientation()V

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :cond_12
    return-void
.end method

.method private checkContext(Landroid/content/Context;)Z
    .registers 8

    const-class v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setEgretRuntimeListener"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_23

    return v3

    :catch_23
    move-exception v0

    return v1
.end method

.method private checkEgretGameEngine()Z
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    if-nez v0, :cond_d

    const-string v0, "EgretLoader"

    const-string v1, "Egret game engine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private setScreenOrientation()V
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v1, "egret.runtime.screenOrientation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_27

    :cond_21
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_27
    return-void
.end method

.method private startGame(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_12

    nop

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    new-instance v1, Lorg/egret/plugin/mi/runtime/EgretLoader$2;

    invoke-direct {v1, p0}, Lorg/egret/plugin/mi/runtime/EgretLoader$2;-><init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private startGameEngine()V
    .registers 1

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callSetGameOptions()V

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callInitRuntime()V

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callSetRuntimeView()V

    return-void
.end method


# virtual methods
.method public checkEgretContext()Z
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    if-nez v0, :cond_d

    const-string v0, "EgretLoader"

    const-string v1, "The context is not activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EgretLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .registers 3

    const-string v0, "EgretLoader"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1a

    :cond_14
    const-string v0, "game_engine_onPause"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onResume()V
    .registers 3

    const-string v0, "EgretLoader"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1a

    :cond_14
    const-string v0, "game_engine_onResume"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onStop()V
    .registers 3

    const-string v0, "EgretLoader"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1d

    :cond_14
    const-string v0, "game_engine_onStop"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    return-void

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EgretLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-eqz v0, :cond_25

    return-void

    :cond_25
    const-string v0, "gameId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string p1, "egret.runtime.gameId"

    goto :goto_49

    :cond_30
    const-string v0, "gameUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string p1, "egret.runtime.loaderUrl"

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v1, "egret.runtime.updateUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    :goto_49
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setScreenOrientation(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "egret.runtime.screenOrientation"

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_10
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v1, "portrait"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_17
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EgretLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "egret"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v2, "egret.runtime.egretRoot"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v2, "egret.runtime.libraryLoaderType"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    iget-object v4, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    const/4 v8, 0x0

    const-string v6, "2000"

    const-string v7, "3321031F35156D389B0B272910695E3F"

    move-object v3, v1

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->launcher:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    new-instance v2, Lorg/egret/plugin/mi/runtime/EgretLoader$1;

    invoke-direct {v2, p0}, Lorg/egret/plugin/mi/runtime/EgretLoader$1;-><init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V

    invoke-virtual {v1, v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->run(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;)V

    return-void
.end method

.method public stopEgretRuntime()V
    .registers 1

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->onStop()V

    return-void
.end method
