.class public Lmiui/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addNoMedia(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_18

    :try_start_b
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_17

    return v1

    :catch_17
    move-exception v1

    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object v1, v2

    const/16 v2, 0x80

    new-array v2, v2, [B

    :goto_15
    invoke-virtual {v1, v2}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1c

    goto :goto_15

    :cond_1c
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_27

    nop

    :try_start_21
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_26

    :catch_25
    move-exception v5

    :goto_26
    return-wide v3

    :catchall_27
    move-exception v2

    if-eqz v1, :cond_2f

    :try_start_2a
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    move-exception v3

    :cond_2f
    :goto_2f
    throw v2
.end method

.method public static chmod(Ljava/lang/String;I)Z
    .registers 3

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    const/4 v0, 0x1

    if-gez p1, :cond_d

    return v0

    :cond_d
    invoke-static {p0, p1, v0}, Lcom/miui/internal/os/Native;->chmod(Ljava/lang/String;II)Z

    move-result v0

    return v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public static chown(Ljava/lang/String;II)Z
    .registers 4

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1b

    :cond_9
    const/4 v0, 0x1

    if-gez p1, :cond_f

    if-gez p2, :cond_f

    return v0

    :cond_f
    if-gez p1, :cond_13

    const/4 p1, -0x1

    goto :goto_16

    :cond_13
    if-gez p2, :cond_16

    const/4 p2, -0x1

    :cond_16
    :goto_16
    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/os/Native;->chown(Ljava/lang/String;III)Z

    move-result v0

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_16

    :try_start_6
    invoke-static {v1, p1}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_10

    move v0, v2

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    nop

    goto :goto_18

    :catchall_10
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    nop

    throw v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_16

    :catch_16
    move-exception v1

    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    :cond_e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_46

    const/16 v2, 0x1000

    :try_start_15
    new-array v2, v2, [B

    :goto_17
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    if-ltz v3, :cond_22

    invoke-virtual {v1, v2, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_34

    goto :goto_17

    :cond_22
    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_46

    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v2

    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    nop

    const/4 v0, 0x1

    return v0

    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_38} :catch_46

    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    move-exception v3

    :goto_41
    :try_start_41
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    nop

    throw v2
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_46

    :catch_46
    move-exception v1

    return v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1c

    :cond_b
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1b

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    return-object v0

    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1a

    :cond_9
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_19

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_19
    return-object p0

    :cond_1a
    :goto_1a
    const-string v0, ""

    return-object v0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .registers 9

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_26

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_25

    array-length v3, v2

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_25

    aget-object v5, v2, v4

    invoke-static {v5}, Lmiui/os/FileUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_25
    return-wide v0

    :cond_26
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    :cond_9
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_12

    const/4 v0, -0x1

    :cond_12
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_21

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_21
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_27
    return-object v2

    :cond_28
    :goto_28
    const-string v0, ""

    return-object v0
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .registers 3

    sget-object v0, Lmiui/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .registers 7

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lmiui/os/FileUtils;->chown(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v2, 0x1

    :cond_32
    return v2
.end method

.method public static normalizeDirectoryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_10

    move-object v0, p0

    goto :goto_21

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0
.end method

.method private static readFileAsBytes(Ljava/lang/String;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_17
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_29

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2e

    nop

    :try_start_23
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v5

    :goto_28
    return-object v4

    :cond_29
    const/4 v4, 0x0

    :try_start_2a
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_17

    :catchall_2e
    move-exception v1

    if-eqz v0, :cond_37

    :try_start_31
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_37

    :catch_35
    move-exception v2

    goto :goto_38

    :cond_37
    :goto_37
    nop

    :goto_38
    throw v1
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lmiui/os/FileUtils;->readFileAsBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_de

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-gtz p1, :cond_95

    cmp-long v7, v1, v4

    if-lez v7, :cond_18

    if-nez p1, :cond_18

    goto/16 :goto_95

    :cond_18
    if-gez p1, :cond_78

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_1d
    if-eqz v5, :cond_20

    const/4 v4, 0x1

    :cond_20
    move-object v8, v5

    move-object v5, v7

    move-object v7, v8

    if-nez v7, :cond_29

    neg-int v9, p1

    :try_start_26
    new-array v9, v9, [B

    move-object v7, v9

    :cond_29
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v8, v9

    array-length v9, v7
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_de

    if-eq v8, v9, :cond_1d

    if-nez v5, :cond_3a

    if-gtz v8, :cond_3a

    nop

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :cond_3a
    if-nez v5, :cond_45

    :try_start_3c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v7, v6, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_de

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :cond_45
    if-lez v8, :cond_52

    const/4 v4, 0x1

    :try_start_48
    array-length v3, v5

    sub-int/2addr v3, v8

    invoke-static {v5, v8, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v5

    sub-int/2addr v3, v8

    invoke-static {v7, v6, v5, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_52
    if-eqz p2, :cond_6f

    if-nez v4, :cond_57

    goto :goto_6f

    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_6b
    .catchall {:try_start_48 .. :try_end_6b} :catchall_de

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :cond_6f
    :goto_6f
    :try_start_6f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_de

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :cond_78
    :try_start_78
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :cond_81
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_8a

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_8a
    array-length v7, v4

    if-eq v5, v7, :cond_81

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_91
    .catchall {:try_start_78 .. :try_end_91} :catchall_de

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_95
    :goto_95
    cmp-long v4, v1, v4

    if-lez v4, :cond_a1

    if-eqz p1, :cond_a0

    int-to-long v4, p1

    cmp-long v4, v1, v4

    if-gez v4, :cond_a1

    :cond_a0
    long-to-int p1, v1

    :cond_a1
    add-int/lit8 v4, p1, 0x1

    :try_start_a3
    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_de

    if-gtz v5, :cond_b0

    nop

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :cond_b0
    if-gt v5, p1, :cond_bb

    :try_start_b2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v6, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_b7
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_de

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :cond_bb
    if-nez p2, :cond_c6

    :try_start_bd
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v6, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_de

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :cond_c6
    :try_start_c6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v6, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_da
    .catchall {:try_start_c6 .. :try_end_da} :catchall_de

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :catchall_de
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public static rm(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/internal/os/Native;->rm(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    nop

    return-void

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .registers 2

    if-eqz p0, :cond_d

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public static umask(I)I
    .registers 2

    invoke-static {p0}, Lcom/miui/internal/os/Native;->umask(I)I

    move-result v0

    return v0
.end method
