.class public final Leu/xiaomi/util/FileUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 p0, 0x1000

    invoke-direct {v2, v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_27

    :goto_12
    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_24

    goto :goto_12

    :cond_1c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_24
    move-exception p0

    move-object v1, v2

    goto :goto_28

    :catchall_27
    move-exception p0

    :goto_28
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_2d
    throw p0
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 p0, 0x1000

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    :try_start_d
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-void

    :catchall_14
    move-exception p0

    move-object v0, v1

    goto :goto_18

    :catchall_17
    move-exception p0

    :goto_18
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_1d
    throw p0
.end method
