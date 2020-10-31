.class Landroid/app/backup/BackupAgent$BackupServiceBinder;
.super Landroid/app/IBackupAgent$Stub;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupServiceBinder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupServiceBinder"


# instance fields
.field final synthetic this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method private constructor <init>(Landroid/app/backup/BackupAgent;)V
    .registers 2

    iput-object p1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-direct {p0}, Landroid/app/IBackupAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;)V

    return-void
.end method

.method private doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    const-string v5, ") threw"

    const-string v6, "onRestore ("

    const-string v7, "BackupServiceBinder"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    new-instance v11, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    const-wide/16 v14, 0x0

    :try_start_22
    iget-object v10, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_24} :catch_9a
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_24} :catch_73
    .catchall {:try_start_22 .. :try_end_24} :catchall_6f

    if-eqz v4, :cond_31

    :try_start_26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_9a
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2b} :catch_73
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2c

    goto :goto_35

    :catchall_2c
    move-exception v0

    move-object v6, v0

    move-wide v4, v14

    goto/16 :goto_c4

    :cond_31
    :try_start_31
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_35} :catch_73
    .catchall {:try_start_31 .. :try_end_35} :catchall_6f

    :goto_35
    move-wide/from16 v12, p2

    move-object/from16 v16, v5

    move-wide v4, v14

    move-object/from16 v14, p4

    move-object v15, v0

    :try_start_3d
    invoke-virtual/range {v10 .. v15}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;Ljava/util/Set;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_40} :catch_64
    .catchall {:try_start_3d .. :try_end_40} :catchall_c2

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_48
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->getBackupUserId()I
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52

    goto :goto_53

    :catch_52
    move-exception v0

    :goto_53
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_63

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p4 .. p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_63
    return-void

    :catch_64
    move-exception v0

    goto :goto_77

    :catch_66
    move-exception v0

    goto :goto_6c

    :catch_68
    move-exception v0

    move-object/from16 v16, v5

    move-wide v4, v14

    :goto_6c
    move-object/from16 v12, v16

    goto :goto_9d

    :catchall_6f
    move-exception v0

    move-wide v4, v14

    :goto_71
    move-object v6, v0

    goto :goto_c4

    :catch_73
    move-exception v0

    move-object/from16 v16, v5

    move-wide v4, v14

    :goto_77
    :try_start_77
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v16

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0

    :catch_9a
    move-exception v0

    move-object v12, v5

    move-wide v4, v14

    :goto_9d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_c2
    .catchall {:try_start_77 .. :try_end_c2} :catchall_c2

    :catchall_c2
    move-exception v0

    goto :goto_71

    :goto_c4
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_cc
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->getBackupUserId()I
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_d5} :catch_d6

    goto :goto_d7

    :catch_d6
    move-exception v0

    :goto_d7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_e7

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p4 .. p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_e7
    throw v6
.end method


# virtual methods
.method public doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    const-string v3, ") threw"

    const-string v4, "onBackup ("

    const-string v5, "BackupServiceBinder"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    move-wide/from16 v9, p4

    move/from16 v11, p7

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    move-object v8, v0

    const-wide/16 v12, -0x1

    :try_start_1e
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_20} :catch_83
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_20} :catch_5b
    .catchall {:try_start_1e .. :try_end_20} :catchall_52

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    :try_start_24
    invoke-virtual {v0, v14, v8, v15}, Landroid/app/backup/BackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_27} :catch_4c
    .catchall {:try_start_24 .. :try_end_27} :catchall_4a

    const-wide/16 v3, 0x0

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_31
    invoke-interface {v2, v3, v4}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_36

    :catch_35
    move-exception v0

    :goto_36
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v0, v5, :cond_49

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p3 .. p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_49
    return-void

    :catchall_4a
    move-exception v0

    goto :goto_57

    :catch_4c
    move-exception v0

    goto :goto_60

    :catch_4e
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_8a

    :catchall_52
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    :goto_57
    move-object v3, v0

    move-object/from16 v16, v8

    goto :goto_b1

    :catch_5b
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    :goto_60
    move-object/from16 v16, v8

    :try_start_62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0

    :catch_83
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v16, v8

    :goto_8a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_af
    .catchall {:try_start_62 .. :try_end_af} :catchall_af

    :catchall_af
    move-exception v0

    move-object v3, v0

    :goto_b1
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_b9
    invoke-interface {v2, v12, v13}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_be

    :catch_bd
    move-exception v0

    :goto_be
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_d1

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p3 .. p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_d1
    throw v3
.end method

.method public doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    .registers 23

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, ") threw"

    const-string v5, "Unable to finalize backup stream!"

    const-string v6, "onFullBackup ("

    const-string v7, "BackupServiceBinder"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    const/4 v12, 0x4

    :try_start_18
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    new-instance v13, Landroid/app/backup/FullBackupDataOutput;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_95
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1c} :catch_6d
    .catchall {:try_start_18 .. :try_end_1c} :catchall_64

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :try_start_22
    invoke-direct {v13, v14, v10, v11, v15}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    invoke-virtual {v0, v13}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_28} :catch_60
    .catchall {:try_start_22 .. :try_end_28} :catchall_5e

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    :try_start_2d
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-array v4, v12, [B

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v0

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_43
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->getBackupUserId()I
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v4, 0x0

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4e} :catch_4f

    goto :goto_50

    :catch_4f
    move-exception v0

    :goto_50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_5d

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_5d
    return-void

    :catchall_5e
    move-exception v0

    goto :goto_6b

    :catch_60
    move-exception v0

    goto :goto_74

    :catch_62
    move-exception v0

    goto :goto_9c

    :catchall_64
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :goto_6b
    move-object v4, v0

    goto :goto_c1

    :catch_6d
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :goto_74
    :try_start_74
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0

    :catch_95
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :goto_9c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_c1
    .catchall {:try_start_74 .. :try_end_c1} :catchall_5e

    :goto_c1
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    :try_start_c6
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-array v6, v12, [B

    invoke-virtual {v0, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_d4} :catch_d5

    goto :goto_d9

    :catch_d5
    move-exception v0

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_dc
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->getBackupUserId()I
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v5, 0x0

    invoke-interface {v3, v0, v2, v5, v6}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_e7} :catch_e8

    goto :goto_e9

    :catch_e8
    move-exception v0

    :goto_e9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v0, v5, :cond_f6

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_f6
    throw v4
.end method

.method public doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V
    .registers 14

    const-string v0, ") threw"

    const-string v1, "onFullBackup[M] ("

    const-string v2, "BackupServiceBinder"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    new-instance v5, Landroid/app/backup/FullBackupDataOutput;

    invoke-direct {v5, p1, p2, p5}, Landroid/app/backup/FullBackupDataOutput;-><init>(JI)V

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v6}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    :try_start_14
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6, v5}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_2f
    .catchall {:try_start_14 .. :try_end_19} :catchall_2d

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_1c
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->getBackupUserId()I
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-virtual {v5}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v1

    invoke-interface {p4, v0, p3, v1, v2}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_2a

    goto :goto_2c

    :catch_2a
    move-exception v0

    nop

    :goto_2c
    return-void

    :catchall_2d
    move-exception v0

    goto :goto_77

    :catch_2f
    move-exception v6

    :try_start_30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v6

    :catch_51
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_77
    .catchall {:try_start_30 .. :try_end_77} :catchall_2d

    :goto_77
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_7a
    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->getBackupUserId()I
    invoke-static {v1}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;)I

    move-result v1

    invoke-virtual {v5}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v6

    invoke-interface {p4, v1, p3, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_87} :catch_88

    goto :goto_89

    :catch_88
    move-exception v1

    :goto_89
    throw v0
.end method

.method public doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V
    .registers 14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    :try_start_6
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/app/backup/BackupAgent;->onQuotaExceeded(JJ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_1e
    .catchall {:try_start_6 .. :try_end_b} :catchall_1c

    const-wide/16 v2, 0x0

    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_15
    invoke-interface {p5, v2, v3}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1b

    :catch_19
    move-exception v4

    nop

    :goto_1b
    return-void

    :catchall_1c
    move-exception v4

    goto :goto_46

    :catch_1e
    move-exception v4

    :try_start_1f
    const-string v5, "BackupServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQuotaExceeded("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") threw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v4
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_1c

    :goto_46
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v5}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_4e
    invoke-interface {p5, v2, v3}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_53

    :catch_52
    move-exception v5

    :goto_53
    throw v4
.end method

.method public doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    return-void
.end method

.method public doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p11

    move-object/from16 v3, p12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    :try_start_c
    iget-object v8, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    invoke-virtual/range {v8 .. v18}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1f} :catch_48
    .catchall {:try_start_c .. :try_end_1f} :catchall_45

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_2c
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->getBackupUserId()I
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move-exception v0

    :goto_37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v0, v6, :cond_44

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_44
    return-void

    :catchall_45
    move-exception v0

    move-object v8, v0

    goto :goto_74

    :catch_48
    move-exception v0

    :try_start_49
    const-string v8, "BackupServiceBinder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onRestoreFile ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") threw"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_74
    .catchall {:try_start_49 .. :try_end_74} :catchall_45

    :goto_74
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_81
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->getBackupUserId()I
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v0

    :goto_8c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v0, v6, :cond_99

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_99
    throw v8
.end method

.method public doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .registers 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    :try_start_6
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_22
    .catchall {:try_start_6 .. :try_end_b} :catchall_20

    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_13
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->getBackupUserId()I
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;)I

    move-result v4

    invoke-interface {p2, v4, p1, v2, v3}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_1f

    :catch_1d
    move-exception v2

    nop

    :goto_1f
    return-void

    :catchall_20
    move-exception v4

    goto :goto_4a

    :catch_22
    move-exception v4

    :try_start_23
    const-string v5, "BackupServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRestoreFinished ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") threw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v4
    :try_end_4a
    .catchall {:try_start_23 .. :try_end_4a} :catchall_20

    :goto_4a
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V
    invoke-static {v5}, Landroid/app/backup/BackupAgent;->access$100(Landroid/app/backup/BackupAgent;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_52
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    # invokes: Landroid/app/backup/BackupAgent;->getBackupUserId()I
    invoke-static {v5}, Landroid/app/backup/BackupAgent;->access$200(Landroid/app/backup/BackupAgent;)I

    move-result v5

    invoke-interface {p2, v5, p1, v2, v3}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    move-exception v2

    :goto_5d
    throw v4
.end method

.method public doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/backup/BackupAgent$FailRunnable;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupAgent$FailRunnable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
