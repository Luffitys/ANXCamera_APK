.class Landroid/app/backup/BackupAgentInjector;
.super Ljava/lang/Object;
.source "BackupAgentInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static shouldSkip(I)Z
    .registers 2

    invoke-static {p0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
