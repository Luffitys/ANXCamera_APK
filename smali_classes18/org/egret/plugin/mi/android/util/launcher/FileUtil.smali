.class public Lorg/egret/plugin/mi/android/util/launcher/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Copy(Ljava/io/File;Ljava/io/File;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_61

    if-nez p1, :cond_6

    goto :goto_61

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    const/16 v3, 0x400

    new-array v4, v3, [B

    :goto_18
    invoke-virtual {v1, v4, v0, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_23

    invoke-virtual {v2, v4, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_22} :catch_34
    .catchall {:try_start_8 .. :try_end_22} :catchall_32

    goto :goto_18

    :cond_23
    const/4 v0, 0x1

    nop

    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    nop

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_31
    return v0

    :catchall_32
    move-exception v0

    goto :goto_4d

    :catch_34
    move-exception v3

    :try_start_35
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_32

    nop

    if-eqz v1, :cond_41

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_41

    :catch_3f
    move-exception v4

    goto :goto_47

    :cond_41
    :goto_41
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_46} :catch_3f

    goto :goto_4b

    :goto_47
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    :cond_4b
    :goto_4b
    nop

    :goto_4c
    return v0

    :goto_4d
    if-eqz v1, :cond_55

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_55

    :catch_53
    move-exception v3

    goto :goto_5b

    :cond_55
    :goto_55
    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5a} :catch_53

    goto :goto_5f

    :goto_5b
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    :cond_5f
    :goto_5f
    nop

    :goto_60
    throw v0

    :cond_61
    :goto_61
    return v0
.end method

.method public static CopyToRoot(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    if-eqz p0, :cond_13

    if-nez p1, :cond_5

    goto :goto_13

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->Copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    return v1

    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method public static Move(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static MoveToRoot(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    if-eqz p0, :cond_13

    if-nez p1, :cond_5

    goto :goto_13

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->Move(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    return v1

    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v0, v2

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_1e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_32
    .catchall {:try_start_2 .. :try_end_22} :catchall_30

    nop

    :try_start_23
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    nop

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    return-object v3

    :catchall_30
    move-exception v2

    goto :goto_4b

    :catch_32
    move-exception v2

    :try_start_33
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    const/4 v3, 0x0

    if-eqz v1, :cond_3f

    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_3f

    :catch_3d
    move-exception v4

    goto :goto_45

    :cond_3f
    :goto_3f
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_3d

    goto :goto_49

    :goto_45
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a

    :cond_49
    :goto_49
    nop

    :goto_4a
    return-object v3

    :goto_4b
    if-eqz v1, :cond_53

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_53

    :catch_51
    move-exception v3

    goto :goto_59

    :cond_53
    :goto_53
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_58} :catch_51

    goto :goto_5d

    :goto_59
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5e

    :cond_5d
    :goto_5d
    nop

    :goto_5e
    throw v2
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v0, v2

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v2

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_22
    .catchall {:try_start_2 .. :try_end_11} :catchall_20

    const/4 v2, 0x1

    nop

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    nop

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_1f
    return v2

    :catchall_20
    move-exception v2

    goto :goto_3b

    :catch_22
    move-exception v2

    :try_start_23
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    :try_start_29
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_2f

    :catch_2d
    move-exception v4

    goto :goto_35

    :cond_2f
    :goto_2f
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_34} :catch_2d

    goto :goto_39

    :goto_35
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    :cond_39
    :goto_39
    nop

    :goto_3a
    return v3

    :goto_3b
    if-eqz v1, :cond_43

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_43

    :catch_41
    move-exception v3

    goto :goto_49

    :cond_43
    :goto_43
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_48} :catch_41

    goto :goto_4d

    :goto_49
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    :cond_4d
    :goto_4d
    nop

    :goto_4e
    throw v2
.end method
