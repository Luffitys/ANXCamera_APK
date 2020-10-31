.class public Lcom/miui/internal/server/TelocationUpdateService;
.super Landroid/app/IntentService;
.source "TelocationUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;,
        Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;,
        Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;
    }
.end annotation


# static fields
.field public static final ACTION_TELOCATION_DOWNLOAD_COMPLETED:Ljava/lang/String; = "com.miui.data.TELOCATION_DOWNLOAD_COMPLETED"

.field public static final ACTION_UPDATE_TELOCATION:Ljava/lang/String; = "com.miui.data.UPDATE_TELOCATION"

.field private static final AES_KEY:Ljava/lang/String; = "d101b17c77ff93cs"

.field private static final NEW_FILE_NAME:Ljava/lang/String; = "telocation-new"

.field private static final OLD_FILE_NAME:Ljava/lang/String; = "telocation-old"

.field private static final PARAM_MD5:Ljava/lang/String; = "m"

.field private static final PARAM_TYPE:Ljava/lang/String; = "t"

.field private static final PARAM_VER:Ljava/lang/String; = "ver"

.field private static final PATCH_FILE_NAME:Ljava/lang/String; = "telocation-patch"

.field private static final SECRET:Ljava/lang/String; = "77eb2e8a5755abd016c0d69ba74b219c"

.field private static final TAG:Ljava/lang/String; = "TelocationUpdateService"

.field private static final TARGET_FILE_MODE:I = 0x1b4

.field private static final TELOCATION_IDF_NAME:Ljava/lang/String; = "telocation.idf"

.field private static final TYPE_TELOCATION:I = 0x3

.field private static final UPDATE_URL:Ljava/lang/String;


# instance fields
.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mOldVersion:J

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/internal/server/DataUpdateManager;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cspmisc/patch/info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/server/TelocationUpdateService;->UPDATE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "TelocationUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/miui/internal/server/TelocationUpdateService;->decodeBase64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private applyUpdate(Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyUpdate: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelocationUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [J

    iget-wide v4, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    iget-object v3, p0, Lcom/miui/internal/server/TelocationUpdateService;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_10b

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_10b

    :try_start_36
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyUpdate: Download failed! Status="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_36 .. :try_end_5b} :catchall_106

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_5f
    :try_start_5f
    const-string v5, "applyUpdate: Download Success!"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_106

    nop

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    nop

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v7, "telocation-patch"

    invoke-direct {v4, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_75
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/miui/internal/server/TelocationUpdateService;->mDownloadManager:Landroid/app/DownloadManager;

    iget-wide v9, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    invoke-virtual {v8, v9, v10}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v5, v7

    invoke-static {v5, v4}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_99

    const-string v2, "applyUpdate: File copy failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_75 .. :try_end_92} :catchall_fd

    nop

    :try_start_93
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_98

    :catch_97
    move-exception v1

    :goto_98
    return-void

    :cond_99
    nop

    :try_start_9a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e

    :goto_9d
    goto :goto_a0

    :catch_9e
    move-exception v7

    goto :goto_9d

    :goto_a0
    const/4 v7, 0x0

    iget-object v8, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->newFileMd5Sum:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyUpdate: downloadInfo.patchType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->patchType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->patchType:I

    if-nez v9, :cond_c8

    iget-object v9, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadFileMd5Sum:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v8, v10}, Lcom/miui/internal/server/TelocationUpdateService;->updateWithDiffFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto :goto_d6

    :cond_c8
    iget v9, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->patchType:I

    if-ne v9, v2, :cond_d6

    iget-object v9, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadFileMd5Sum:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/miui/internal/server/TelocationUpdateService;->updateWithFullFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    :cond_d6
    :goto_d6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyUpdate: result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_fc

    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService;->mDownloadManager:Landroid/app/DownloadManager;

    new-array v2, v2, [J

    iget-wide v9, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    aput-wide v9, v2, v6

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->remove([J)I

    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->deleteFromPreferences(Landroid/content/SharedPreferences;)V

    :cond_fc
    return-void

    :catchall_fd
    move-exception v1

    if-eqz v5, :cond_105

    :try_start_100
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_103} :catch_104

    goto :goto_105

    :catch_104
    move-exception v2

    :cond_105
    :goto_105
    throw v1

    :catchall_106
    move-exception v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_10b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyUpdate: Null download info! Download_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static decodeBase64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4b

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_4a

    array-length v2, v0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1a

    goto :goto_4a

    :cond_1a
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_21
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const-string v5, "0102030405060708"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v5, 0x0

    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    if-nez v5, :cond_3e

    return-object v1

    :cond_3e
    invoke-virtual {v3, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_47} :catch_48

    return-object v7

    :catch_48
    move-exception v3

    return-object v1

    :cond_4a
    :goto_4a
    return-object v1

    :cond_4b
    :goto_4b
    return-object v1
.end method

.method private downloadFile(Ljava/lang/String;)J
    .registers 5

    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v1

    return-wide v1
.end method

.method private static getMd5Digest(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MD5"

    invoke-static {p0, v1}, Lmiui/security/DigestUtils;->get(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_19
    .catchall {:try_start_1 .. :try_end_b} :catchall_17

    move-object v0, v1

    if-eqz p0, :cond_23

    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    :goto_11
    goto :goto_23

    :catch_12
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :catchall_17
    move-exception v1

    goto :goto_24

    :catch_19
    move-exception v1

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_17

    if-eqz p0, :cond_23

    :try_start_1f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_12

    goto :goto_11

    :cond_23
    :goto_23
    return-object v0

    :goto_24
    if-eqz p0, :cond_2e

    :try_start_26
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2e
    :goto_2e
    throw v1
.end method

.method private static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/internal/server/TelocationUpdateService;->getMd5Digest(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private getTelocationInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "telocation.idf"

    invoke-static {v0, v1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1

    :cond_22
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method private requestUpdate(Z)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelocationUpdateService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    iget-wide v5, v0, Lcom/miui/internal/server/TelocationUpdateService;->mOldVersion:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ver"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "t"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/TelocationUpdateService;->getTelocationInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/internal/server/TelocationUpdateService;->getMd5Digest(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_102

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local file md5 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_57

    const-string v5, "-1"

    goto :goto_5b

    :cond_57
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :goto_5b
    const-string v6, "m"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/miui/internal/server/TelocationUpdateService;->UPDATE_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/server/TelocationUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "77eb2e8a5755abd016c0d69ba74b219c"

    invoke-static {v2, v6, v7}, Lcom/miui/internal/util/DataUpdateUtils;->getSignedUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->request(Ljava/lang/String;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->shouldUpdate()Z

    move-result v7

    if-eqz v7, :cond_101

    iget-object v7, v6, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->data:Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    iget-object v8, v7, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->fileUrl:Ljava/lang/String;

    iget-object v9, v7, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->md5Sum:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Patch file md5: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/miui/internal/server/TelocationUpdateService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v10}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->readFromPreferences(Landroid/content/SharedPreferences;)Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;

    move-result-object v10

    if-eqz v10, :cond_cf

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "oldDownloadInfo.id= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v10, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v0, Lcom/miui/internal/server/TelocationUpdateService;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v12, 0x1

    new-array v12, v12, [J

    const/4 v13, 0x0

    iget-wide v14, v10, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    aput-wide v14, v12, v13

    invoke-virtual {v11, v12}, Landroid/app/DownloadManager;->remove([J)I

    :cond_cf
    invoke-direct {v0, v8}, Lcom/miui/internal/server/TelocationUpdateService;->downloadFile(Ljava/lang/String;)J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "newDownloadId= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;

    iget-object v13, v7, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->md5Sum:Ljava/lang/String;

    iget-object v14, v7, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->newMd5Sum:Ljava/lang/String;

    iget v15, v7, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->patchType:I

    move-object/from16 v16, v3

    move-wide/from16 v17, v11

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v21, v15

    invoke-direct/range {v16 .. v21}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v13, v0, Lcom/miui/internal/server/TelocationUpdateService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v3, v13}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->writeToPreferences(Landroid/content/SharedPreferences;)V

    :cond_101
    return-void

    :cond_102
    return-void
.end method

.method private tryReplaceTelocationFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    invoke-static {p1}, Lcom/miui/internal/server/TelocationUpdateService;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelocationUpdateService"

    if-eqz v0, :cond_2c

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "telocation.idf"

    invoke-static {p0, p1, v2}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->replaceDirectIndexedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->reloadInstance()V

    goto :goto_2b

    :cond_1e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v3, "replaceTelocationFile fail"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return v2

    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: new telocation file md5 mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private updateWithDiffFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWithDiffFile: patchFileMd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newFileMd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " diffPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelocationUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p3}, Lcom/miui/internal/server/TelocationUpdateService;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWithDiffFile: diffMD5Local="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_ee

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ee

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "telocation-old"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "telocation-new"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    :goto_66
    if-lez v5, :cond_e5

    const/4 v6, 0x0

    :try_start_69
    invoke-direct {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getTelocationInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v6, v7

    invoke-static {v6, v3}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_e0

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    nop

    :try_start_75
    new-instance v7, Lmiui/util/Patcher;

    invoke-direct {v7}, Lmiui/util/Patcher;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, p3}, Lmiui/util/Patcher;->applyPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_c0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/miui/internal/server/TelocationUpdateService;->tryReplaceTelocationFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    move v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Telocation Patch Update from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/miui/internal/server/TelocationUpdateService;->mOldVersion:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v9

    invoke-virtual {v9}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getVersion()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    :cond_c0
    const-string v8, "updateWithDiffFile: ApplyPatch failed."

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_75 .. :try_end_c5} :catchall_d8

    :goto_c5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    nop

    if-eqz v0, :cond_d4

    const-string v7, "updateWithDiffFile: success"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    :cond_d4
    nop

    add-int/lit8 v5, v5, -0x1

    goto :goto_66

    :catchall_d8
    move-exception v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v1

    :catchall_e0
    move-exception v1

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1

    :cond_e5
    :goto_e5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_102

    :cond_ee
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: patch file md5 mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_102
    if-nez v0, :cond_10d

    const/4 v1, 0x1

    :try_start_105
    invoke-direct {p0, v1}, Lcom/miui/internal/server/TelocationUpdateService;->requestUpdate(Z)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_108} :catch_109

    goto :goto_10d

    :catch_109
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10d
    :goto_10d
    return v0
.end method

.method private updateWithFullFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lcom/miui/internal/server/TelocationUpdateService;->tryReplaceTelocationFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telocation Full Update from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/internal/server/TelocationUpdateService;->mOldVersion:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelocationUpdateService"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/miui/internal/server/TelocationUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 10

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getVersion()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/miui/internal/server/TelocationUpdateService;->mOldVersion:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleIntent mOldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/internal/server/TelocationUpdateService;->mOldVersion:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelocationUpdateService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.miui.data.UPDATE_TELOCATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3e

    :try_start_30
    invoke-direct {p0, v3}, Lcom/miui/internal/server/TelocationUpdateService;->requestUpdate(Z)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    :goto_33
    goto :goto_98

    :catch_34
    move-exception v1

    const-string v3, "Telocation requestUpdate failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    :cond_3e
    const-string v1, "com.miui.data.TELOCATION_DOWNLOAD_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->readFromPreferences(Landroid/content/SharedPreferences;)Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;

    move-result-object v1

    const-wide/16 v4, 0x0

    const-string v6, "extra_download_id"

    invoke-virtual {p1, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Local download.id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " downloadInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_69

    const/4 v3, 0x1

    :cond_69
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | System download.id="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_92

    iget-wide v6, v1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_84

    goto :goto_92

    :cond_84
    :try_start_84
    invoke-direct {p0, v1}, Lcom/miui/internal/server/TelocationUpdateService;->applyUpdate(Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_98

    :catch_88
    move-exception v3

    const-string v6, "Telocation applyUpdate failed"

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_98

    :cond_92
    :goto_92
    const-string v3, "download info error!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_98
    :goto_98
    return-void
.end method
