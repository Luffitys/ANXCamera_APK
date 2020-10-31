.class public Lcom/android/server/backup/ShortcutBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "ShortcutBackupHelper.java"


# static fields
.field private static final BLOB_VERSION:I = 0x1

.field private static final KEY_USER_FILE:Ljava/lang/String; = "shortcutuser.xml"

.field private static final TAG:Ljava/lang/String; = "ShortcutBackupAgent"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "shortcutuser.xml"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    return-void
.end method

.method private getShortcutService()Landroid/content/pm/IShortcutService;
    .registers 2

    nop

    const-string v0, "shortcut"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x2f430246

    if-eq v0, v2, :cond_b

    :cond_a
    goto :goto_15

    :cond_b
    const-string v0, "shortcutuser.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_16

    :goto_15
    const/4 v0, -0x1

    :goto_16
    const-string v2, "ShortcutBackupAgent"

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_2f
    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/backup/ShortcutBackupHelper;->getShortcutService()Landroid/content/pm/IShortcutService;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/content/pm/IShortcutService;->applyRestore([BI)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_37

    goto :goto_3e

    :catch_37
    move-exception v0

    const-string v1, "Restore failed"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_3e
    return-void
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x2f430246

    if-eq v0, v2, :cond_b

    :cond_a
    goto :goto_15

    :cond_b
    const-string v0, "shortcutuser.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_16

    :goto_15
    const/4 v0, -0x1

    :goto_16
    const-string v2, "ShortcutBackupAgent"

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :cond_2f
    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/backup/ShortcutBackupHelper;->getShortcutService()Landroid/content/pm/IShortcutService;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/pm/IShortcutService;->getBackupPayload(I)[B

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_38

    return-object v0

    :catch_38
    move-exception v0

    const-string v1, "Backup failed"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_3f
    const/4 v0, 0x0

    return-object v0
.end method
