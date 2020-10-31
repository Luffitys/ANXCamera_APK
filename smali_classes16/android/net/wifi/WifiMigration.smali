.class public final Landroid/net/wifi/WifiMigration;
.super Ljava/lang/Object;
.source "WifiMigration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiMigration$SettingsMigrationData;,
        Landroid/net/wifi/WifiMigration$UserStoreFileId;,
        Landroid/net/wifi/WifiMigration$SharedStoreFileId;
    }
.end annotation


# static fields
.field private static final LEGACY_WIFI_STORE_DIRECTORY_NAME:Ljava/lang/String; = "wifi"

.field public static final STORE_FILE_SHARED_GENERAL:I = 0x0

.field public static final STORE_FILE_SHARED_SOFTAP:I = 0x1

.field public static final STORE_FILE_USER_GENERAL:I = 0x2

.field public static final STORE_FILE_USER_NETWORK_SUGGESTIONS:I = 0x3

.field private static final STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/WifiMigration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiMigration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiMigration;->STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAndRetrieveSharedConfigStoreFile(I)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    if-ne p0, v0, :cond_6

    goto :goto_e

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid shared store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_e
    :try_start_e
    invoke-static {p0}, Landroid/net/wifi/WifiMigration;->getSharedAtomicFile(I)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v1

    if-ne p0, v0, :cond_1f

    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convert()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static convertAndRetrieveUserConfigStoreFile(ILandroid/os/UserHandle;)Ljava/io/InputStream;
    .registers 4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    goto :goto_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid user store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_f
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_12
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiMigration;->getUserAtomicFile(II)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getLegacyWifiSharedDirectory()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getLegacyWifiUserDirectory(I)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataMiscCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSharedAtomicFile(I)Landroid/util/AtomicFile;
    .registers 5

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/net/wifi/WifiMigration;->getLegacyWifiSharedDirectory()Ljava/io/File;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiMigration;->STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private static getUserAtomicFile(II)Landroid/util/AtomicFile;
    .registers 6

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/net/wifi/WifiMigration;->getLegacyWifiUserDirectory(I)Ljava/io/File;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiMigration;->STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static loadFromSettings(Landroid/content/Context;)Landroid/net/wifi/WifiMigration$SettingsMigrationData;
    .registers 7

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_migration_completed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    new-instance v0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_scan_always_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_26

    move v4, v3

    goto :goto_27

    :cond_26
    move v4, v2

    :goto_27
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setScanAlwaysAvailable(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_p2p_pending_factory_reset"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3a

    move v4, v3

    goto :goto_3b

    :cond_3a
    move v4, v2

    :goto_3b
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setP2pFactoryResetPending(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_p2p_device_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setP2pDeviceName(Ljava/lang/String;)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "soft_ap_timeout_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_5d

    move v4, v3

    goto :goto_5e

    :cond_5d
    move v4, v2

    :goto_5e
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setSoftApTimeoutEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_wakeup_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_71

    move v4, v3

    goto :goto_72

    :cond_71
    move v4, v2

    :goto_72
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setWakeUpEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_scan_throttle_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_85

    move v4, v3

    goto :goto_86

    :cond_85
    move v4, v2

    :goto_86
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setScanThrottleEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_verbose_logging_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_98

    move v2, v3

    :cond_98
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setVerboseLoggingEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->build()Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    move-result-object v0

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-object v0
.end method

.method public static removeSharedConfigStoreFile(I)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    if-ne p0, v0, :cond_6

    goto :goto_e

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid shared store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_e
    invoke-static {p0}, Landroid/net/wifi/WifiMigration;->getSharedAtomicFile(I)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    return-void

    :cond_1c
    if-ne p0, v0, :cond_21

    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->remove()V

    :cond_21
    return-void
.end method

.method public static removeUserConfigStoreFile(ILandroid/os/UserHandle;)V
    .registers 4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    goto :goto_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid user store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_f
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiMigration;->getUserAtomicFile(II)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    :cond_23
    return-void
.end method
