.class final Lmiui/log/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiLogUtils"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createConfigFolder(Ljava/io/File;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    :goto_6
    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    goto :goto_6

    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v4, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v4, v5, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_1b

    :cond_35
    return-void
.end method

.method static createLogSwitchesFileIfNotExisted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v1, 0x1

    goto :goto_18

    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v1, 0x1

    :cond_18
    :goto_18
    if-eqz v1, :cond_1d

    invoke-static {v0}, Lmiui/log/Utils;->createConfigFolder(Ljava/io/File;)V

    :cond_1d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4e

    :try_start_28
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v4}, Ljava/io/File;->setExecutable(Z)Z
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_36} :catch_37

    goto :goto_4e

    :catch_37
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to create file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiLogUtils"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4e
    :goto_4e
    return-void
.end method
