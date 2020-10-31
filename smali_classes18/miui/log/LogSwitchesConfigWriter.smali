.class public final Lmiui/log/LogSwitchesConfigWriter;
.super Ljava/lang/Object;
.source "LogSwitchesConfigWriter.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LogSwitchesConfigWriter"


# instance fields
.field private final logSwitchesFileName:Ljava/lang/String;

.field private final logSwitchesFilePath:Ljava/lang/String;

.field private final logSwitchesFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFolder:Ljava/lang/String;

    iput-object p2, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized write(Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFolder:Ljava/lang/String;

    iget-object v2, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lmiui/log/Utils;->createLogSwitchesFileIfNotExisted(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_22} :catch_43
    .catchall {:try_start_2 .. :try_end_22} :catchall_41

    if-eqz v2, :cond_37

    :try_start_24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/AppLogSwitches;

    invoke-virtual {v2}, Lmiui/log/AppLogSwitches;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_35
    .catchall {:try_start_24 .. :try_end_34} :catchall_64

    goto :goto_1e

    :catch_35
    move-exception v1

    goto :goto_44

    :cond_37
    :try_start_37
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_43
    .catchall {:try_start_37 .. :try_end_3a} :catchall_41

    nop

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_6d

    goto :goto_62

    :catch_3f
    move-exception v1

    goto :goto_62

    :catchall_41
    move-exception v1

    goto :goto_65

    :catch_43
    move-exception v1

    :goto_44
    :try_start_44
    const-string v2, "LogSwitchesConfigWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_64

    nop

    if-eqz v0, :cond_62

    :try_start_5f
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_3f
    .catchall {:try_start_5f .. :try_end_62} :catchall_6d

    :cond_62
    :goto_62
    monitor-exit p0

    return-void

    :catchall_64
    move-exception v1

    :goto_65
    if-eqz v0, :cond_6c

    :try_start_67
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6d

    goto :goto_6c

    :catch_6b
    move-exception v2

    :cond_6c
    :goto_6c
    :try_start_6c
    throw v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
