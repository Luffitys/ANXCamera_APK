.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PreferredActivityBackupHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"

.field private static final KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final STATE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PreferredBackup"


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "preferred-activity"

    const-string v1, "default-apps"

    const-string v2, "intent-verification"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 11

    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, -0x1

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x298b2982

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_32

    const v4, -0x19949e54

    if-eq v3, v4, :cond_28

    const v4, 0x4fa3eadb

    if-eq v3, v4, :cond_1e

    :cond_1d
    goto :goto_3b

    :cond_1e
    const-string v3, "preferred-activity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v2, v7

    goto :goto_3b

    :cond_28
    const-string v3, "intent-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v2, v5

    goto :goto_3b

    :cond_32
    const-string v3, "default-apps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v2, v6

    :goto_3b
    if-eqz v2, :cond_5e

    if-eq v2, v6, :cond_5a

    if-eq v2, v5, :cond_56

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected restore key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_56
    invoke-interface {v1, p2, v7}, Landroid/content/pm/IPackageManager;->restoreIntentFilterVerification([BI)V

    goto :goto_62

    :cond_5a
    invoke-interface {v1, p2, v7}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V

    goto :goto_62

    :cond_5e
    invoke-interface {v1, p2, v7}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_61} :catch_63

    nop

    :goto_62
    goto :goto_78

    :catch_63
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    return-void
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .registers 10

    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, -0x1

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x298b2982

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_32

    const v4, -0x19949e54

    if-eq v3, v4, :cond_28

    const v4, 0x4fa3eadb

    if-eq v3, v4, :cond_1e

    :cond_1d
    goto :goto_3b

    :cond_1e
    const-string v3, "preferred-activity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v2, v7

    goto :goto_3b

    :cond_28
    const-string v3, "intent-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v2, v5

    goto :goto_3b

    :cond_32
    const-string v3, "default-apps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v2, v6

    :goto_3b
    if-eqz v2, :cond_60

    if-eq v2, v6, :cond_5b

    if-eq v2, v5, :cond_56

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected backup key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :cond_56
    invoke-interface {v1, v7}, Landroid/content/pm/IPackageManager;->getIntentFilterVerificationBackup(I)[B

    move-result-object v0

    return-object v0

    :cond_5b
    invoke-interface {v1, v7}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    move-result-object v0

    return-object v0

    :cond_60
    invoke-interface {v1, v7}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    move-result-object v0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_64} :catch_65

    return-object v0

    :catch_65
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to store payload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7a
    const/4 v0, 0x0

    return-object v0
.end method
