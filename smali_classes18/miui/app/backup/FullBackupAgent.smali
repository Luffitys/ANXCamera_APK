.class public Lmiui/app/backup/FullBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "FullBackupAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Backup:FullBackupAgent"

.field private static final TMP_BAK_NAME:Ljava/lang/String; = "_tmp_bak"


# instance fields
.field private mAttachedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupManager:Lmiui/app/backup/BackupManager;

.field private mBackupMeta:Lmiui/app/backup/BackupMeta;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    move-object v1, p1

    goto :goto_14

    :cond_a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1
.end method


# virtual methods
.method public addAttachedFile(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAttachedFile(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkVersion(I)Z
    .registers 4

    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v0, v0, Lmiui/app/backup/BackupMeta;->version:I

    invoke-virtual {p0, p1}, Lmiui/app/backup/FullBackupAgent;->getVersion(I)I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method protected getVersion(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, "Backup:FullBackupAgent"

    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    if-nez v0, :cond_10

    invoke-static/range {p0 .. p0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object v0

    iput-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v2, 0x0

    const-string v3, ""

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v11

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v0}, Lmiui/app/backup/BackupManager;->getCurrentWorkingFeature()I

    move-result v12

    invoke-virtual {v1, v12}, Lmiui/app/backup/FullBackupAgent;->getVersion(I)I

    move-result v13

    :try_start_29
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v10, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move v2, v6

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_37} :catch_3a

    move-object v3, v6

    move v14, v2

    goto :goto_41

    :catch_3a
    move-exception v0

    const-string v6, "NameNotFoundException"

    invoke-static {v9, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v14, v2

    :goto_41
    const-string v0, "\r"

    const-string v2, ""

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lmiui/app/backup/BackupMeta;

    invoke-direct {v0}, Lmiui/app/backup/BackupMeta;-><init>()V

    iput-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput v14, v0, Lmiui/app/backup/BackupMeta;->appVersionCode:I

    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v15, v0, Lmiui/app/backup/BackupMeta;->appVersionName:Ljava/lang/String;

    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v7, v0, Lmiui/app/backup/BackupMeta;->deviceName:Ljava/lang/String;

    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v6, v0, Lmiui/app/backup/BackupMeta;->miuiVersion:Ljava/lang/String;

    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput v12, v0, Lmiui/app/backup/BackupMeta;->feature:I

    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lmiui/app/backup/BackupMeta;->createTime:J

    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput v13, v0, Lmiui/app/backup/BackupMeta;->version:I

    iget-object v0, v1, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual {v0, v1, v8}, Lmiui/app/backup/BackupMeta;->writeToTar(Landroid/content/Context;Landroid/app/backup/FullBackupDataOutput;)V

    if-nez v13, :cond_9c

    invoke-super/range {p0 .. p1}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto/16 :goto_113

    :cond_9c
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "_tmp_bak"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    const/4 v2, 0x0

    :try_start_a9
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    const/high16 v0, 0x20000000

    invoke-static {v5, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_124

    move-object v4, v0

    :try_start_b3
    invoke-virtual {v1, v4, v12}, Lmiui/app/backup/FullBackupAgent;->onFullBackup(Landroid/os/ParcelFileDescriptor;I)I

    sget-object v3, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17
    :try_end_c1
    .catchall {:try_start_b3 .. :try_end_c1} :catchall_118

    move-object v2, v11

    move-object/from16 v18, v4

    move-object v4, v0

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, p1

    :try_start_d1
    invoke-static/range {v2 .. v7}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    move-result v0

    if-eqz v0, :cond_f9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err when data backup err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v2, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_f0
    .catchall {:try_start_d1 .. :try_end_f0} :catchall_114

    if-eqz v18, :cond_f5

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_f5
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    return-void

    :cond_f9
    if-eqz v18, :cond_fe

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_fe
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    nop

    invoke-virtual {v1, v11, v8, v12}, Lmiui/app/backup/FullBackupAgent;->tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I

    move-result v0

    if-eqz v0, :cond_113

    const-string v2, "err when tar attaches"

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v2, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V

    return-void

    :cond_113
    :goto_113
    return-void

    :catchall_114
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_12b

    :catchall_118
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v2, v18

    goto :goto_12b

    :catchall_124
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    :goto_12b
    if-eqz v2, :cond_130

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_130
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method protected onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    invoke-super/range {v0 .. v10}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onRestoreEnd(Lmiui/app/backup/BackupMeta;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected final onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    const-string v11, "Backup:FullBackupAgent"

    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    if-nez v0, :cond_12

    invoke-static/range {p0 .. p0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object v0

    iput-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreFile type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " domain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    new-instance v1, Lmiui/app/backup/BackupMeta;

    invoke-direct {v1}, Lmiui/app/backup/BackupMeta;-><init>()V

    iput-object v1, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v1 .. v10}, Lmiui/app/backup/BackupMeta;->buildFrom(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;JIJJ)V

    goto/16 :goto_19c

    :cond_58
    sget-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x10000000

    const/16 v16, 0x5

    if-eqz v0, :cond_d3

    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "_tmp_bak"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_6f} :catch_1a0

    move-object v10, v0

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v18, v10

    :try_start_7e
    invoke-static/range {v2 .. v10}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_c6

    move-object/from16 v2, v18

    :try_start_83
    invoke-static {v2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_c4

    move-object v1, v0

    :try_start_88
    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v0, v0, Lmiui/app/backup/BackupMeta;->feature:I

    invoke-virtual {v13, v0}, Lmiui/app/backup/FullBackupAgent;->checkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual {v13, v0, v1}, Lmiui/app/backup/FullBackupAgent;->onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I

    move-result v16

    :cond_98
    move/from16 v0, v16

    if-eqz v0, :cond_b5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err when data restoring err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v13, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v3, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_b5
    .catchall {:try_start_88 .. :try_end_b5} :catchall_c0

    :cond_b5
    if-eqz v1, :cond_ba

    :try_start_b7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_ba
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    nop

    goto/16 :goto_19c

    :catchall_c0
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_c9

    :catchall_c4
    move-exception v0

    goto :goto_c9

    :catchall_c6
    move-exception v0

    move-object/from16 v2, v18

    :goto_c9
    if-eqz v17, :cond_ce

    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_ce
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    nop

    throw v0

    :cond_d3
    sget-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    invoke-direct {v13, v15}, Lmiui/app/backup/FullBackupAgent;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_e9} :catch_1a0

    move-object v8, v0

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-wide/from16 v6, p7

    move-object/from16 v18, v8

    move-wide/from16 v8, p9

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    :try_start_fc
    invoke-static/range {v2 .. v10}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_143

    move-object/from16 v2, v18

    :try_start_101
    invoke-static {v2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_105
    .catchall {:try_start_101 .. :try_end_105} :catchall_141

    move-object v1, v0

    :try_start_106
    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v0, v0, Lmiui/app/backup/BackupMeta;->feature:I

    invoke-virtual {v13, v0}, Lmiui/app/backup/FullBackupAgent;->checkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_116

    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual {v13, v0, v1, v15}, Lmiui/app/backup/FullBackupAgent;->onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v16

    :cond_116
    move/from16 v0, v16

    if-eqz v0, :cond_133

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err when attach restoring err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v13, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v3, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_133
    .catchall {:try_start_106 .. :try_end_133} :catchall_13d

    :cond_133
    if-eqz v1, :cond_138

    :try_start_135
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_138
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    nop

    goto :goto_19c

    :catchall_13d
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_146

    :catchall_141
    move-exception v0

    goto :goto_146

    :catchall_143
    move-exception v0

    move-object/from16 v2, v18

    :goto_146
    if-eqz v17, :cond_14b

    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_14b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    nop

    throw v0

    :cond_150
    sget-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_186

    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v0, v0, Lmiui/app/backup/BackupMeta;->feature:I

    invoke-virtual {v13, v0}, Lmiui/app/backup/FullBackupAgent;->checkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_168

    iget-object v0, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual {v13, v0}, Lmiui/app/backup/FullBackupAgent;->onRestoreEnd(Lmiui/app/backup/BackupMeta;)I

    move-result v16

    :cond_168
    move/from16 v0, v16

    if-eqz v0, :cond_185

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err when restore ending err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v13, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v1, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V

    :cond_185
    goto :goto_19c

    :cond_186
    iget-object v2, v13, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_188} :catch_1a0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-object v13, v11

    move-wide/from16 v11, p9

    :try_start_199
    invoke-virtual/range {v1 .. v12}, Lmiui/app/backup/FullBackupAgent;->onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_19e

    :goto_19c
    nop

    return-void

    :catch_19e
    move-exception v0

    goto :goto_1a2

    :catch_1a0
    move-exception v0

    move-object v13, v11

    :goto_1a2
    const-string v1, "Exception when restore file"

    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public final onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super/range {p0 .. p9}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    return-void
.end method

.method protected tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_33

    new-instance v2, Ljava/io/File;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b3

    sget-object v5, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object v4, p1

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    goto/16 :goto_b3

    :cond_33
    instance-of v2, v1, Landroid/util/Pair;

    if-eqz v2, :cond_b3

    move-object v2, v1

    check-cast v2, Landroid/util/Pair;

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_48
    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    invoke-static {v3, v4}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6e

    sget-object v7, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object v6, p1

    move-object v11, p2

    invoke-static/range {v6 .. v11}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6e} :catch_79
    .catchall {:try_start_48 .. :try_end_6e} :catchall_77

    :cond_6e
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v3, :cond_b4

    :goto_73
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_b4

    :catchall_77
    move-exception v0

    goto :goto_aa

    :catch_79
    move-exception v5

    :try_start_7a
    const-string v6, "Backup:FullBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when tar attaches for uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " skip!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_7a .. :try_end_a3} :catchall_77

    nop

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v3, :cond_b4

    goto :goto_73

    :goto_aa
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v3, :cond_b2

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_b2
    throw v0

    :cond_b3
    :goto_b3
    nop

    :cond_b4
    :goto_b4
    goto/16 :goto_8

    :cond_b6
    const/4 v0, 0x0

    return v0
.end method
