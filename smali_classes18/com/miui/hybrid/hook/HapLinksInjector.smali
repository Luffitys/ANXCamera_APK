.class public Lcom/miui/hybrid/hook/HapLinksInjector;
.super Ljava/lang/Object;
.source "HapLinksInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HapLinksInjector"

.field private static sData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sFilter:Landroid/content/IntentFilter;

.field private static sResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/hybrid/hook/HapLinksInjector;->sData:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/hybrid/hook/HapLinksInjector;->sResolveInfo:Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/miui/hybrid/hook/HapLinksInjector;->sFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/hybrid/hook/HapLinksInjector;->sFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/hybrid/hook/HapLinksInjector;->sFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/hybrid/hook/HapLinksInjector;->sFilter:Landroid/content/IntentFilter;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/hybrid/hook/HapLinksInjector;->sFilter:Landroid/content/IntentFilter;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized resolveHapLinks(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .registers 12

    const-class v0, Lcom/miui/hybrid/hook/HapLinksInjector;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sget-object v2, Lcom/miui/hybrid/hook/HapLinksInjector;->sResolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_77

    if-nez v2, :cond_a

    monitor-exit v0

    return-object v1

    :cond_a
    if-nez p0, :cond_e

    monitor-exit v0

    return-object v1

    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_77

    if-nez v2, :cond_16

    monitor-exit v0

    return-object v1

    :cond_16
    :try_start_16
    sget-object v3, Lcom/miui/hybrid/hook/HapLinksInjector;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    const-string v9, "HapLinksInjector"

    move-object v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_75

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_73

    sget-object v4, Lcom/miui/hybrid/hook/HapLinksInjector;->sData:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_73

    :cond_44
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/miui/hybrid/hook/HapLinksInjector;->sData:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_54
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_75

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_72

    sget-object v1, Lcom/miui/hybrid/hook/HapLinksInjector;->sResolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_70
    .catchall {:try_start_16 .. :try_end_70} :catchall_77

    monitor-exit v0

    return-object v1

    :cond_72
    goto :goto_54

    :cond_73
    :goto_73
    monitor-exit v0

    return-object v1

    :cond_75
    monitor-exit v0

    return-object v1

    :catchall_77
    move-exception v2

    :try_start_78
    const-string v3, "HapLinksInjector"

    const-string v4, "resolve HapLinks failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_81

    monitor-exit v0

    return-object v1

    :catchall_81
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setData(Ljava/util/Map;Landroid/content/pm/ActivityInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/pm/ActivityInfo;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/miui/hybrid/hook/HapLinksInjector;

    monitor-enter v0

    if-eqz p0, :cond_2c

    if-nez p1, :cond_8

    goto :goto_2c

    :cond_8
    :try_start_8
    sput-object p0, Lcom/miui/hybrid/hook/HapLinksInjector;->sData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_27

    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    sput-object v1, Lcom/miui/hybrid/hook/HapLinksInjector;->sResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    sget-object v1, Lcom/miui/hybrid/hook/HapLinksInjector;->sResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/pm/ResolveInfo;->priority:I

    sget-object v1, Lcom/miui/hybrid/hook/HapLinksInjector;->sResolveInfo:Landroid/content/pm/ResolveInfo;

    iput v2, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    sget-object v1, Lcom/miui/hybrid/hook/HapLinksInjector;->sResolveInfo:Landroid/content/pm/ResolveInfo;

    iput v2, v1, Landroid/content/pm/ResolveInfo;->match:I

    goto :goto_2a

    :cond_27
    const/4 v1, 0x0

    sput-object v1, Lcom/miui/hybrid/hook/HapLinksInjector;->sResolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_35

    :goto_2a
    monitor-exit v0

    return-void

    :cond_2c
    :goto_2c
    :try_start_2c
    const-string v1, "HapLinksInjector"

    const-string v2, "Illegal params for setData"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_35

    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method
