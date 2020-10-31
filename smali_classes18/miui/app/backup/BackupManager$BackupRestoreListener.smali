.class public interface abstract Lmiui/app/backup/BackupManager$BackupRestoreListener;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackupRestoreListener"
.end annotation


# virtual methods
.method public abstract onBackupDataTransaction(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract onBackupEnd(Ljava/lang/String;I)V
.end method

.method public abstract onBackupStart(Ljava/lang/String;I)V
.end method

.method public abstract onCustomProgressChange(Ljava/lang/String;IIJJ)V
.end method

.method public abstract onError(Ljava/lang/String;II)V
.end method

.method public abstract onRestoreEnd(Ljava/lang/String;I)V
.end method

.method public abstract onRestoreProgress(Ljava/lang/String;IJ)V
.end method

.method public abstract onRestoreStart(Ljava/lang/String;I)V
.end method
