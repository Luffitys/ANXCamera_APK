.class public Lcom/miui/internal/log/appender/FileAppender;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/log/appender/Appender;


# static fields
.field private static final TAG:Ljava/lang/String; = "FileAppender"


# instance fields
.field private mFileManager:Lcom/miui/internal/log/appender/FileManager;

.field private mFormatter:Lcom/miui/internal/log/format/Formatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doAppend(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V
    .locals 9

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/internal/log/appender/FileAppender;->mFormatter:Lcom/miui/internal/log/format/Formatter;

    const-string v2, "FileAppender"

    if-nez v1, :cond_0

    const-string v0, "Fail to append log for formatter is null"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v8, v0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    if-nez v8, :cond_1

    const-string v0, "Fail to append log for FileManager is null"

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    if-nez p6, :cond_2

    move-object/from16 v6, p8

    invoke-interface/range {v0 .. v6}, Lcom/miui/internal/log/format/Formatter;->format(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/miui/internal/log/format/Formatter;->format(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v8, v0}, Lcom/miui/internal/log/appender/FileManager;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)V
    .locals 9

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
    .locals 9

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
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/log/appender/FileManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    :cond_0
    return-void
.end method

.method public getFileManager()Lcom/miui/internal/log/appender/FileManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    return-object p0
.end method

.method public getFormatter()Lcom/miui/internal/log/format/Formatter;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/log/appender/FileAppender;->mFormatter:Lcom/miui/internal/log/format/Formatter;

    return-object p0
.end method

.method public setFileManager(Lcom/miui/internal/log/appender/FileManager;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/log/appender/FileAppender;->close()V

    iput-object p1, p0, Lcom/miui/internal/log/appender/FileAppender;->mFileManager:Lcom/miui/internal/log/appender/FileManager;

    return-void
.end method

.method public setFormatter(Lcom/miui/internal/log/format/Formatter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/log/appender/FileAppender;->mFormatter:Lcom/miui/internal/log/format/Formatter;

    return-void
.end method
