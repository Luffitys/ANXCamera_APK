.class public Lcom/miui/hybrid/hook/PkgInfoHook;
.super Ljava/lang/Object;
.source "PkgInfoHook.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PkgInfoHook"

.field private static volatile sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;


# instance fields
.field private fakeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;
    .registers 2

    sget-object v0, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;

    if-nez v0, :cond_17

    const-class v0, Lcom/miui/hybrid/hook/PkgInfoHook;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;

    if-nez v1, :cond_12

    new-instance v1, Lcom/miui/hybrid/hook/PkgInfoHook;

    invoke-direct {v1}, Lcom/miui/hybrid/hook/PkgInfoHook;-><init>()V

    sput-object v1, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;

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
    sget-object v0, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PkgInfoHook"

    if-eqz v0, :cond_f

    const-string v0, "Expect non-null pkgName."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public hook(Landroid/content/pm/PackageInfo;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hook "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PkgInfoHook"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_27
    return-object p1
.end method

.method public insert(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    const-string v0, "PkgInfoHook"

    if-eqz p1, :cond_2c

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2c

    :cond_d
    iget-object v1, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2c
    :goto_2c
    const-string v1, "PkgInfoHook.insert(PackageInfo) failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
