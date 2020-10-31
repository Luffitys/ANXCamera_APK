.class Landroid/util/apk/MemoryMappedFileDataSource;
.super Ljava/lang/Object;
.source "MemoryMappedFileDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# static fields
.field private static final MEMORY_PAGE_SIZE_BYTES:J


# instance fields
.field private final mFd:Ljava/io/FileDescriptor;

.field private final mFilePosition:J

.field private final mSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    sput-wide v0, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    iput-wide p2, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    iput-wide p4, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    return-void
.end method


# virtual methods
.method public feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-wide v2, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    add-long v2, v2, p2

    sget-wide v4, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    div-long v6, v2, v4

    mul-long/2addr v6, v4

    sub-long v4, v2, v6

    long-to-int v4, v4

    add-int v0, p4, v4

    int-to-long v14, v0

    const-wide/16 v17, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v19, 0x0

    :try_start_17
    sget v12, Landroid/system/OsConstants;->PROT_READ:I

    sget v0, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v5, Landroid/system/OsConstants;->MAP_POPULATE:I

    or-int v13, v0, v5

    iget-object v0, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_21} :catch_98
    .catchall {:try_start_17 .. :try_end_21} :catchall_8e

    move-wide v10, v14

    move-wide/from16 v21, v14

    move-object v14, v0

    move-wide v15, v6

    :try_start_26
    invoke-static/range {v8 .. v16}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v8
    :try_end_2a
    .catch Landroid/system/ErrnoException; {:try_start_26 .. :try_end_2a} :catch_86
    .catchall {:try_start_26 .. :try_end_2a} :catchall_7b

    move-wide v14, v8

    :try_start_2b
    new-instance v0, Ljava/nio/DirectByteBuffer;

    int-to-long v8, v4

    add-long v10, v14, v8

    iget-object v12, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;
    :try_end_32
    .catch Landroid/system/ErrnoException; {:try_start_2b .. :try_end_32} :catch_70
    .catchall {:try_start_2b .. :try_end_32} :catchall_66

    const/4 v13, 0x0

    const/4 v5, 0x1

    move-object v8, v0

    move/from16 v9, p4

    move-wide/from16 v23, v2

    move-wide v1, v14

    move v14, v5

    :try_start_3b
    invoke-direct/range {v8 .. v14}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_3e
    .catch Landroid/system/ErrnoException; {:try_start_3b .. :try_end_3e} :catch_5e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_56

    move-object/from16 v3, p1

    :try_start_40
    invoke-interface {v3, v0}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V
    :try_end_43
    .catch Landroid/system/ErrnoException; {:try_start_40 .. :try_end_43} :catch_54
    .catchall {:try_start_40 .. :try_end_43} :catchall_52

    cmp-long v0, v1, v19

    if-eqz v0, :cond_4f

    move-wide/from16 v8, v21

    :try_start_49
    invoke-static {v1, v2, v8, v9}, Landroid/system/Os;->munmap(JJ)V
    :try_end_4c
    .catch Landroid/system/ErrnoException; {:try_start_49 .. :try_end_4c} :catch_4d

    :goto_4c
    goto :goto_51

    :catch_4d
    move-exception v0

    goto :goto_4c

    :cond_4f
    move-wide/from16 v8, v21

    :goto_51
    return-void

    :catchall_52
    move-exception v0

    goto :goto_59

    :catch_54
    move-exception v0

    goto :goto_61

    :catchall_56
    move-exception v0

    move-object/from16 v3, p1

    :goto_59
    move-wide/from16 v8, v21

    move-object v5, v0

    goto/16 :goto_be

    :catch_5e
    move-exception v0

    move-object/from16 v3, p1

    :goto_61
    move-wide/from16 v8, v21

    move-wide/from16 v17, v1

    goto :goto_9e

    :catchall_66
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v1, v14

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    move-object v5, v0

    goto :goto_be

    :catch_70
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v1, v14

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    move-wide/from16 v17, v1

    goto :goto_9e

    :catchall_7b
    move-exception v0

    move-wide/from16 v23, v2

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    move-object v5, v0

    move-wide/from16 v1, v17

    goto :goto_be

    :catch_86
    move-exception v0

    move-wide/from16 v23, v2

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    goto :goto_9e

    :catchall_8e
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v8, v14

    move-object/from16 v3, p1

    move-object v5, v0

    move-wide/from16 v1, v17

    goto :goto_be

    :catch_98
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v8, v14

    move-object/from16 v3, p1

    :goto_9e
    :try_start_9e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mmap "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_ba
    .catchall {:try_start_9e .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v0

    move-object v5, v0

    move-wide/from16 v1, v17

    :goto_be
    cmp-long v0, v1, v19

    if-eqz v0, :cond_c8

    :try_start_c2
    invoke-static {v1, v2, v8, v9}, Landroid/system/Os;->munmap(JJ)V
    :try_end_c5
    .catch Landroid/system/ErrnoException; {:try_start_c2 .. :try_end_c5} :catch_c6

    :goto_c5
    goto :goto_c8

    :catch_c6
    move-exception v0

    goto :goto_c5

    :cond_c8
    :goto_c8
    throw v5
.end method

.method public size()J
    .registers 3

    iget-wide v0, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    return-wide v0
.end method
