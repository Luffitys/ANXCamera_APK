.class public Lcom/miui/internal/vip/utils/VipDataPref;
.super Ljava/lang/Object;
.source "VipDataPref.java"


# static fields
.field private static final UpdatePostFix:Ljava/lang/String; = "_update"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private volatile mPref:Landroid/content/SharedPreferences;

.field private mPrefName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mCtx:Landroid/content/Context;

    return-void
.end method

.method private getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_11
    return-void
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_1d
    return v1
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 7

    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1

    :cond_1e
    return-wide v1
.end method

.method public getPref()Landroid/content/SharedPreferences;
    .registers 5

    invoke-direct {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/internal/vip/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-enter p0

    :try_start_1e
    iget-object v2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPrefName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    iput-object v1, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPrefName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mCtx:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPref:Landroid/content/SharedPreferences;

    :cond_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_35

    iget-object v2, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPref:Landroid/content/SharedPreferences;

    return-object v2

    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2

    :cond_38
    const/4 v1, 0x0

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_d

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    return-object v1
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_11
    return-void
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPrefName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/internal/vip/utils/VipDataPref;->mPref:Landroid/content/SharedPreferences;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInt(Ljava/lang/String;I)V
    .registers 7

    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_22
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .registers 8

    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_22
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/VipDataPref;->getPref()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_11
    return-void
.end method
