.class public Lcom/google/android/mms/util/DrmConvertSession;
.super Ljava/lang/Object;
.source "DrmConvertSession.java"


# static fields
.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field private static final TAG:Ljava/lang/String; = "DrmConvertSession"


# instance fields
.field private mConvertSessionId:I

.field private mDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method private constructor <init>(Landroid/drm/DrmManagerClient;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iput p2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    return-void
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;
    .registers 8

    const-string v0, "DrmConvertSession"

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p0, :cond_4c

    if-eqz p1, :cond_4c

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    :try_start_10
    new-instance v3, Landroid/drm/DrmManagerClient;

    invoke-direct {v3, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_15} :catch_46
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_15} :catch_3f

    move-object v1, v3

    :try_start_16
    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1a} :catch_23
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1a} :catch_1c

    move v2, v0

    goto :goto_4c

    :catch_1c
    move-exception v3

    :try_start_1d
    const-string v4, "Could not access Open DrmFramework."

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    :catch_23
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversion of Mimetype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_3d} :catch_46
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_3d} :catch_3f

    nop

    goto :goto_4c

    :catch_3f
    move-exception v3

    const-string v4, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :catch_46
    move-exception v3

    const-string v4, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    if-eqz v1, :cond_57

    if-gez v2, :cond_51

    goto :goto_57

    :cond_51
    new-instance v0, Lcom/google/android/mms/util/DrmConvertSession;

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/util/DrmConvertSession;-><init>(Landroid/drm/DrmManagerClient;I)V

    return-object v0

    :cond_57
    :goto_57
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public close(Ljava/lang/String;)I
    .registers 11

    const-string v0, "."

    const-string v1, "Failed to close File:"

    const-string v2, "DrmConvertSession"

    const/4 v3, 0x0

    const/16 v4, 0x1eb

    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v5, :cond_16a

    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    if-ltz v6, :cond_16a

    :try_start_11
    invoke-virtual {v5, v6}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_14f

    iget v5, v3, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14f

    iget-object v5, v3, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_1f} :catch_153

    if-nez v5, :cond_23

    goto/16 :goto_14f

    :cond_23
    const/4 v5, 0x0

    :try_start_24
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v6, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    iget v6, v3, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v6, v3, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_37} :catch_f4
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_37} :catch_ba
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_37} :catch_92
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_37} :catch_58
    .catchall {:try_start_24 .. :try_end_37} :catchall_55

    const/16 v4, 0xc8

    nop

    :try_start_3a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3f
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_3d} :catch_153

    :goto_3d
    goto/16 :goto_152

    :catch_3f
    move-exception v6

    const/16 v4, 0x1ec

    :try_start_42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_54
    .catch Ljava/lang/IllegalStateException; {:try_start_42 .. :try_end_54} :catch_153

    goto :goto_8e

    :catchall_55
    move-exception v6

    goto/16 :goto_12f

    :catch_58
    move-exception v6

    :try_start_59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Access to File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " was denied denied by SecurityManager."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_55

    nop

    if-eqz v5, :cond_152

    :try_start_75
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79
    .catch Ljava/lang/IllegalStateException; {:try_start_75 .. :try_end_78} :catch_153

    goto :goto_3d

    :catch_79
    move-exception v6

    const/16 v4, 0x1ec

    :try_start_7c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8e
    invoke-static {v2, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catch Ljava/lang/IllegalStateException; {:try_start_7c .. :try_end_91} :catch_153

    goto :goto_b7

    :catch_92
    move-exception v6

    const/16 v4, 0x1ec

    :try_start_95
    const-string v7, "Could not open file in mode: rw"

    invoke-static {v2, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_55

    nop

    if-eqz v5, :cond_152

    :try_start_9d
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1
    .catch Ljava/lang/IllegalStateException; {:try_start_9d .. :try_end_a0} :catch_153

    goto :goto_3d

    :catch_a1
    move-exception v6

    const/16 v4, 0x1ec

    :try_start_a4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_b6
    .catch Ljava/lang/IllegalStateException; {:try_start_a4 .. :try_end_b6} :catch_153

    goto :goto_8e

    :goto_b7
    nop

    goto/16 :goto_152

    :catch_ba
    move-exception v6

    const/16 v4, 0x1ec

    :try_start_bd
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not access File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d6
    .catchall {:try_start_bd .. :try_end_d6} :catchall_55

    nop

    if-eqz v5, :cond_152

    :try_start_d9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_de
    .catch Ljava/lang/IllegalStateException; {:try_start_d9 .. :try_end_dc} :catch_153

    goto/16 :goto_3d

    :catch_de
    move-exception v6

    const/16 v4, 0x1ec

    :try_start_e1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_f3
    .catch Ljava/lang/IllegalStateException; {:try_start_e1 .. :try_end_f3} :catch_153

    goto :goto_8e

    :catch_f4
    move-exception v6

    const/16 v4, 0x1ec

    :try_start_f7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " could not be found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_110
    .catchall {:try_start_f7 .. :try_end_110} :catchall_55

    nop

    if-eqz v5, :cond_152

    :try_start_113
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_118
    .catch Ljava/lang/IllegalStateException; {:try_start_113 .. :try_end_116} :catch_153

    goto/16 :goto_3d

    :catch_118
    move-exception v6

    const/16 v4, 0x1ec

    :try_start_11b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_12d
    .catch Ljava/lang/IllegalStateException; {:try_start_11b .. :try_end_12d} :catch_153

    goto/16 :goto_8e

    :goto_12f
    if-eqz v5, :cond_14d

    :try_start_131
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_134} :catch_135
    .catch Ljava/lang/IllegalStateException; {:try_start_131 .. :try_end_134} :catch_153

    goto :goto_14d

    :catch_135
    move-exception v7

    const/16 v4, 0x1ec

    :try_start_138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14d
    :goto_14d
    nop

    throw v6
    :try_end_14f
    .catch Ljava/lang/IllegalStateException; {:try_start_138 .. :try_end_14f} :catch_153

    :cond_14f
    :goto_14f
    const/16 v0, 0x196

    move v4, v0

    :cond_152
    :goto_152
    goto :goto_16a

    :catch_153
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not close convertsession. Convertsession: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16a
    :goto_16a
    return v4
.end method

.method public convert([BI)[B
    .registers 9

    const-string v0, "DrmConvertSession"

    const/4 v1, 0x0

    if-eqz p1, :cond_63

    const/4 v2, 0x0

    :try_start_6
    array-length v3, p1

    if-eq p2, v3, :cond_19

    new-array v3, p2, [B

    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5, v3}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v4

    move-object v2, v4

    goto :goto_22

    :cond_19
    iget-object v3, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v4, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v3, v4, p1}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v3

    move-object v2, v3

    :goto_22
    if-eqz v2, :cond_30

    iget v3, v2, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_30

    iget-object v3, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    if-eqz v3, :cond_30

    iget-object v0, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_2f} :catch_49
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_2f} :catch_31

    move-object v1, v0

    :cond_30
    :goto_30
    goto :goto_61

    :catch_31
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not convert data. Convertsession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    :catch_49
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Buffer with data to convert is illegal. Convertsession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    :goto_61
    nop

    return-object v1

    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter inBuffer is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
