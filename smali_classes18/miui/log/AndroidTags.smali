.class public final Lmiui/log/AndroidTags;
.super Ljava/lang/Object;
.source "AndroidTags.java"


# static fields
.field static final TAG_AM_DEBUG_BROADCAST:Ljava/lang/String; = "com.android.server.am.ActivityManagerService.DEBUG_BROADCAST"

.field private static final androidTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AndroidTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(Ljava/lang/Class;Ljava/lang/String;Z)Lmiui/log/AndroidTag;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Lmiui/log/AndroidTag;"
        }
    .end annotation

    const-class v0, Lmiui/log/AndroidTags;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/AndroidTag;

    if-nez v1, :cond_1e

    new-instance v2, Lmiui/log/AndroidTag;

    invoke-direct {v2, p0, p1, p2}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    move-object v1, v2

    sget-object v2, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    iget-object v3, v1, Lmiui/log/AndroidTag;->fieldFullPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static create(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .registers 8

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_a

    return-object v1

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_57

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    goto :goto_57

    :cond_2e
    sget-object v5, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-static {v3, v5}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_37

    return-object v1

    :cond_37
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v5, v4, v1}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v1

    if-nez v1, :cond_40

    :goto_3f
    goto :goto_51

    :cond_40
    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_47

    goto :goto_3f

    :cond_47
    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_51
    new-instance v6, Lmiui/log/AndroidTag;

    invoke-direct {v6, v5, v4, v2}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v6

    :cond_57
    :goto_57
    return-object v1
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .registers 4

    const-class v0, Lmiui/log/AndroidTags;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/AndroidTag;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_20

    monitor-exit v0

    return-object v1

    :cond_15
    :try_start_15
    invoke-static {p0}, Lmiui/log/AndroidTags;->create(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v1

    sget-object v2, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_20

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isOn(Ljava/lang/String;)Z
    .registers 4

    const-class v0, Lmiui/log/AndroidTags;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lmiui/log/AndroidTag;->isOn()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    monitor-exit v0

    return v2

    :cond_f
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchOff(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lmiui/log/AndroidTags;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lmiui/log/AndroidTag;->switchOff()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchOn(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lmiui/log/AndroidTags;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lmiui/log/AndroidTag;->switchOn()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method
