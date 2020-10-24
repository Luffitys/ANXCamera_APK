.class public Lcom/xiaomi/stat/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final A:Ljava/lang/String; = "pref_main_app_channel"

.field private static final B:Ljava/lang/String; = "pref_instance_id_last_use_time"

.field private static final C:Ljava/lang/String; = "pref_system_upload_intl_enabled"

.field private static final D:Ljava/lang/String; = "pref_upload_enabled"

.field private static final E:Ljava/lang/String; = "pref_sample_enabled"

.field private static final F:Ljava/lang/String; = "pref_basic_enabled"

.field private static final G:Ljava/lang/String; = "pref_custom_enabled"

.field private static final H:Ljava/lang/String; = "pref_crash_enabled"

.field private static final I:Ljava/lang/String; = "pref_http_event_enabled"

.field private static J:I = 0x1f

.field private static K:I = 0xf

.field private static L:[Ljava/lang/String; = null

.field private static final M:Ljava/lang/String; = ","

.field private static N:Z = false

.field private static O:Z = false

.field private static P:Ljava/lang/String; = null

.field private static Q:Z = false

.field private static R:Ljava/lang/Object; = null

.field private static S:Z = false

.field public static final a:I = -0x1

.field public static final b:I = -0x1

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = -0x1

.field public static final g:Ljava/lang/String; = "uploadInterval"

.field public static final h:Ljava/lang/String; = "configNetwork"

.field public static final i:Ljava/lang/String; = "configDelay"

.field public static final j:Ljava/lang/String; = "time"

.field public static final k:Ljava/lang/String; = "enableSample"

.field public static final l:Ljava/lang/String; = "uploadSwitch"

.field public static final m:Ljava/lang/String; = "0.0"

.field public static final n:Ljava/lang/String; = "0-0"

.field public static final o:I = 0x0

.field private static final p:Ljava/lang/String; = "pref_statistic_enabled"

.field private static final q:Ljava/lang/String; = "pref_network_access_enabled"

.field private static final r:Ljava/lang/String; = "pref_user_id"

.field private static final s:Ljava/lang/String; = "pref_random_uuid"

.field private static final t:Ljava/lang/String; = "pref_using_custom_policy_"

.field private static final u:Ljava/lang/String; = "pref_custom_policy_state_"

.field private static final v:Ljava/lang/String; = "pref_app_previous_version"

.field private static final w:Ljava/lang/String; = "pref_is_first_usage"

.field private static final x:Ljava/lang/String; = "pref_last_dau_event_time"

.field private static final y:Ljava/lang/String; = "pref_all_sub_ids_data"

.field private static final z:Ljava/lang/String; = "pref_instance_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b;->R:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Z
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_custom_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static B()Z
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_upload_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/xiaomi/stat/b;->J:I

    return-void
.end method

.method public static a(J)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_last_dau_event_time"

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/stat/b;->P:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_custom_policy_state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_using_custom_policy_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_statistic_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a()Z
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_statistic_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(I)V
    .locals 2

    const v0, 0x15180

    const/4 v1, 0x5

    if-gt p0, v1, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    :goto_0
    sput p0, Lcom/xiaomi/stat/b;->K:I

    return-void
.end method

.method public static b(J)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_instance_id_last_use_time"

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_user_id"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Z)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_network_access_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static b()Z
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_network_access_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const-wide/16 v0, 0x1388

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v2

    const-string v3, "pref_network_access_enabled"

    invoke-virtual {v2, v3}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x3e8

    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "don\'t call this on main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(I)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "configNetwork"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "configDelay"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/stat/b;->O:Z

    return-void
.end method

.method public static d()V
    .locals 4

    sget-object v0, Lcom/xiaomi/stat/b;->R:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/stat/b;->Q:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaomi/stat/b;->Q:Z

    invoke-static {}, Lcom/xiaomi/stat/d/m;->i()Z

    move-result v2

    sput-boolean v2, Lcom/xiaomi/stat/b;->O:Z

    invoke-static {}, Lcom/xiaomi/stat/d/m;->g()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/stat/b;->P:Ljava/lang/String;

    sget-boolean v3, Lcom/xiaomi/stat/b;->O:Z

    if-nez v3, :cond_1

    const-string v3, "CN"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sput-boolean v1, Lcom/xiaomi/stat/b;->O:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d(I)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "uploadInterval"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/stat/b;->S:Z

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_using_custom_policy_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_custom_policy_state_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static e(I)V
    .locals 2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_app_previous_version"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static e(Z)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_is_first_usage"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/stat/b;->Q:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/stat/b;->d()V

    :cond_0
    sget-boolean v0, Lcom/xiaomi/stat/b;->O:Z

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/stat/b;->P:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/xiaomi/stat/b;->L:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/stat/b;->L:[Ljava/lang/String;

    const-string v2, "pref_all_sub_ids_data"

    if-nez v0, :cond_2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaomi/stat/b;->L:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/stat/b;->L:[Ljava/lang/String;

    array-length v1, v1

    const/4 v3, 0x1

    :goto_1
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v3, v1, :cond_3

    sget-object v4, Lcom/xiaomi/stat/b;->L:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static f(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/stat/b;->N:Z

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_instance_id"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Z)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_system_upload_intl_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/stat/b;->S:Z

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_user_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_main_app_channel"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Z)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_sample_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static i()I
    .locals 1

    sget v0, Lcom/xiaomi/stat/b;->J:I

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_random_uuid"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Z)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_basic_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static j()I
    .locals 1

    sget v0, Lcom/xiaomi/stat/b;->K:I

    return v0
.end method

.method public static j(Z)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_custom_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "configDelay"

    const-string v2, "0-0"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Z)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_upload_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static l()I
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "configNetwork"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static m()I
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "uploadInterval"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static n()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_all_sub_ids_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/b;->L:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static o()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/stat/b;->L:[Ljava/lang/String;

    return-object v0
.end method

.method public static p()I
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_app_previous_version"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_is_first_usage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r()J
    .locals 4

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_last_dau_event_time"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static s()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_instance_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_main_app_channel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/stat/b;->N:Z

    return v0
.end method

.method public static v()J
    .locals 4

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_instance_id_last_use_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static w()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_random_uuid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x()Z
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_system_upload_intl_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static y()Z
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_sample_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static z()Z
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_basic_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
