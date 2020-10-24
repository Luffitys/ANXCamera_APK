.class public Lcom/miui/internal/log/Logger;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MAX_LOG_LENGTH:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "Logger"


# instance fields
.field private mAppenders:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private mLevel:Lcom/miui/internal/log/Level;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/log/Logger;->mName:Ljava/lang/String;

    sget-object p1, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    iput-object p1, p0, Lcom/miui/internal/log/Logger;->mLevel:Lcom/miui/internal/log/Level;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/log/Logger;->mAppenders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/internal/log/Logger;->mLevel:Lcom/miui/internal/log/Level;

    move-object v10, p1

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v1, v0, Lcom/miui/internal/log/Logger;->mAppenders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/log/appender/Appender;

    iget-object v3, v0, Lcom/miui/internal/log/Logger;->mName:Ljava/lang/String;

    move-object v4, p2

    move-wide v5, v11

    move-object v7, p1

    if-nez p3, :cond_0

    move-object/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/miui/internal/log/appender/Appender;->append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v2 .. v9}, Lcom/miui/internal/log/appender/Appender;->append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addAppender(Lcom/miui/internal/log/appender/Appender;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/log/Logger;->mAppenders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Appender not allowed to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppenderAt(I)Lcom/miui/internal/log/appender/Appender;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/log/Logger;->mAppenders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/log/appender/Appender;

    return-object p0
.end method

.method public getAppenderCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/log/Logger;->mAppenders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getLevel()Lcom/miui/internal/log/Level;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/log/Logger;->mLevel:Lcom/miui/internal/log/Level;

    return-object p0
.end method

.method public log(Lcom/miui/internal/log/Level;Ljava/lang/String;Lcom/miui/internal/log/message/Message;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/log/Logger;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    return-void
.end method

.method public log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/log/Logger;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    return-void
.end method

.method public log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/log/Logger;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    return-void
.end method

.method public removeAppender(Lcom/miui/internal/log/appender/Appender;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/internal/log/appender/Appender;->close()V

    iget-object p0, p0, Lcom/miui/internal/log/Logger;->mAppenders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The appender must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLevel(Lcom/miui/internal/log/Level;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/log/Logger;->mLevel:Lcom/miui/internal/log/Level;

    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/log/Logger;->mAppenders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/log/appender/Appender;

    invoke-interface {v1}, Lcom/miui/internal/log/appender/Appender;->close()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/log/Logger;->mAppenders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method
