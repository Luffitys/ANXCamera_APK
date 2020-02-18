.class public Lmiui/os/SystemProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final PROP_VALUE_MAX:I = 0x5b

.field private static final ZO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/os/SystemProperties;->ZO:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p0, Ljava/lang/InstantiationException;

    const-string v0, "Cannot instantiate utility class"

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addChangeCallback(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    sget-object v0, Lmiui/os/SystemProperties;->ZO:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lmiui/os/SystemProperties;->ZO:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_10

    .line 3
    const-class v1, Lmiui/os/SystemProperties;

    invoke-static {v1}, Lcom/miui/internal/os/Native;->addPropertyChangeCallbackNative(Ljava/lang/Class;)V

    .line 4
    :cond_10
    sget-object v1, Lmiui/os/SystemProperties;->ZO:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method protected static callChangeCallbacks()V
    .registers 4

    .line 1
    sget-object v0, Lmiui/os/SystemProperties;->ZO:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lmiui/os/SystemProperties;->ZO:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lmiui/os/SystemProperties;->ZO:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 5
    :goto_15
    sget-object v3, Lmiui/os/SystemProperties;->ZO:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 7
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_d

    .line 2
    invoke-static {p0}, Lcom/miui/internal/os/Native;->getPropertyNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "key.length > 31"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_16

    .line 5
    invoke-static {p0}, Lcom/miui/internal/os/Native;->getPropertyNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    move-object p0, p1

    :cond_15
    return-object p0

    .line 7
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key.length > 31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_d

    .line 2
    invoke-static {p0, p1}, Lcom/miui/internal/os/Native;->getBooleanPropertyNative(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 3
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key.length > 31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_d

    .line 2
    invoke-static {p0, p1}, Lcom/miui/internal/os/Native;->getIntPropertyNative(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 3
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key.length > 31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_d

    .line 2
    invoke-static {p0, p1, p2}, Lcom/miui/internal/os/Native;->getLongPropertyNative(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    .line 3
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key.length > 31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeChangeCallback(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    sget-object v0, Lmiui/os/SystemProperties;->ZO:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lmiui/os/SystemProperties;->ZO:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static set(Ljava/lang/String;I)V
    .registers 2

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static set(Ljava/lang/String;J)V
    .registers 3

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1f

    if-eqz p1, :cond_1b

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5b

    if-gt v0, v1, :cond_13

    goto :goto_1b

    .line 3
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "val.length > 91"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1b
    :goto_1b
    invoke-static {p0, p1}, Lcom/miui/internal/os/Native;->setPropertyNative(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key.length > 31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static set(Ljava/lang/String;Z)V
    .registers 2

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
