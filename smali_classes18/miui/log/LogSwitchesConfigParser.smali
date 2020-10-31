.class public final Lmiui/log/LogSwitchesConfigParser;
.super Ljava/lang/Object;
.source "LogSwitchesConfigParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogSwitchesConfigParser"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseLogSwitchesConfig(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "LogSwitchesConfigParser"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :cond_15
    const/4 v3, 0x0

    :try_start_16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    :goto_26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_64

    nop

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lmiui/log/AppLogSwitches;->parseAppLogSwitches(Ljava/lang/String;)Lmiui/log/AppLogSwitches;

    move-result-object v7

    if-eqz v7, :cond_5b

    iget-object v8, v7, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/log/AppLogSwitches;

    if-eqz v8, :cond_56

    invoke-virtual {v8, v7}, Lmiui/log/AppLogSwitches;->merge(Lmiui/log/AppLogSwitches;)V

    goto :goto_5b

    :cond_56
    iget-object v9, v7, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_5b} :catch_9a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_5b} :catch_78
    .catchall {:try_start_16 .. :try_end_5b} :catchall_76

    :cond_5b
    :goto_5b
    goto :goto_36

    :cond_5c
    nop

    nop

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_63

    :catch_62
    move-exception v1

    :goto_63
    return-object v0

    :cond_64
    :try_start_64
    const-string v6, "\r"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_74} :catch_9a
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_74} :catch_78
    .catchall {:try_start_64 .. :try_end_74} :catchall_76

    nop

    goto :goto_26

    :catchall_76
    move-exception v0

    goto :goto_bc

    :catch_78
    move-exception v0

    :try_start_79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_92
    .catchall {:try_start_79 .. :try_end_92} :catchall_76

    if-eqz v3, :cond_99

    :try_start_94
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_99

    :catch_98
    move-exception v4

    :cond_99
    :goto_99
    return-object v1

    :catch_9a
    move-exception v0

    :try_start_9b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_b4
    .catchall {:try_start_9b .. :try_end_b4} :catchall_76

    if-eqz v3, :cond_bb

    :try_start_b6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_bb

    :catch_ba
    move-exception v4

    :cond_bb
    :goto_bb
    return-object v1

    :goto_bc
    if-eqz v3, :cond_c3

    :try_start_be
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2

    goto :goto_c3

    :catch_c2
    move-exception v1

    :cond_c3
    :goto_c3
    throw v0
.end method
