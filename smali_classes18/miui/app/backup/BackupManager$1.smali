.class Lmiui/app/backup/BackupManager$1;
.super Ljava/lang/Thread;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/backup/BackupManager;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/backup/BackupManager;

.field final synthetic val$fd:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$writeSide:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lmiui/app/backup/BackupManager;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    iput-object p1, p0, Lmiui/app/backup/BackupManager$1;->this$0:Lmiui/app/backup/BackupManager;

    iput-object p2, p0, Lmiui/app/backup/BackupManager$1;->val$fd:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "IOException"

    const-string v1, "Backup:BackupManager"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lmiui/app/backup/BackupManager$1;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v2, v4

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v4

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_22
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_2e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2d} :catch_47
    .catchall {:try_start_6 .. :try_end_2d} :catchall_45

    goto :goto_22

    :cond_2e
    nop

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    nop

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    iget-object v4, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3f} :catch_40

    :cond_3f
    :goto_3f
    goto :goto_5f

    :catch_40
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :catchall_45
    move-exception v4

    goto :goto_60

    :catch_47
    move-exception v4

    :try_start_48
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_45

    if-eqz v2, :cond_50

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_50
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_55
    iget-object v4, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5e} :catch_40

    goto :goto_3f

    :goto_5f
    return-void

    :goto_60
    if-eqz v2, :cond_68

    :try_start_62
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_68

    :catch_66
    move-exception v5

    goto :goto_77

    :cond_68
    :goto_68
    if-eqz v3, :cond_6d

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_6d
    iget-object v5, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_76

    iget-object v5, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_76} :catch_66

    :cond_76
    goto :goto_7a

    :goto_77
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7a
    throw v4
.end method
