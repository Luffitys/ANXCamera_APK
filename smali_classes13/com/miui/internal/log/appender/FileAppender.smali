.class public Lcom/miui/internal/log/appender/FileAppender;
.super Ljava/lang/Object;
.source "FileAppender.java"

# interfaces
.implements Lcom/miui/internal/log/appender/Appender;


# static fields
.field private static final TAG:Ljava/lang/String; = "FileAppender"


# instance fields
.field private mFileManager:Lcom/miui/internal/log/appender/FileManager;

.field private mFormatter:Lcom/miui/internal/log/format/Formatter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doAppend(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V
    .registers 19

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/internal/log/appender/FileAppender;->mFormatter:Lcom/miui/internal/log/format/Formatter;

    const-string v2, "FileAppender"

    if-nez v1, :cond_d

    const-string v1, "Fail to append log for formatter is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget-object v9, v0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    if-nez v9, :cond_17

    const-string v1, "Fail to append log for FileManager is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    if-nez p6, :cond_27

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p8

    invoke-interface/range {v1 .. v7}, Lcom/miui/internal/log/format/Formatter;->format(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/miui/internal/log/appender/FileManager;->write(Ljava/lang/String;)V

    goto :goto_36

    :cond_27
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/miui/internal/log/format/Formatter;->format(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/miui/internal/log/appender/FileManager;->write(Ljava/lang/String;)V

    :goto_36
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)V
    .registers 16

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/miui/internal/log/appender/FileAppender;->doAppend(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/miui/internal/log/appender/FileAppender;->doAppend(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/miui/internal/log/appender/FileManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    :cond_a
    return-void
.end method

.method public getFileManager()Lcom/miui/internal/log/appender/FileManager;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    return-object v0
.end method

.method public getFormatter()Lcom/miui/internal/log/format/Formatter;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->mFormatter:Lcom/miui/internal/log/format/Formatter;

    return-object v0
.end method

.method public setFileManager(Lcom/miui/internal/log/appender/FileManager;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/miui/internal/log/appender/FileAppender;->close()V

    iput-object p1, p0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    return-void
.end method

.method public setFormatter(Lcom/miui/internal/log/format/Formatter;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/log/appender/FileAppender;->mFormatter:Lcom/miui/internal/log/format/Formatter;

    return-void
.end method
