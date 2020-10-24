.class public Lmiui/util/Log$Facade;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "LogcatFacade"


# instance fields
.field private mLogger:Lcom/miui/internal/log/Logger;


# direct methods
.method private constructor <init>(Lcom/miui/internal/log/Logger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/Log$Facade;->mLogger:Lcom/miui/internal/log/Logger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/log/Logger;Lmiui/util/Log$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/Log$Facade;-><init>(Lcom/miui/internal/log/Logger;)V

    return-void
.end method

.method private log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lmiui/util/Log$Facade;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    return-void
.end method

.method private varargs logf(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/miui/internal/log/message/StringFormattedMessage;->obtain()Lcom/miui/internal/log/message/StringFormattedMessage;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/internal/log/message/StringFormattedMessage;->setFormat(Ljava/lang/String;)Lcom/miui/internal/log/message/StringFormattedMessage;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/miui/internal/log/message/StringFormattedMessage;->setParameters([Ljava/lang/Object;)Lcom/miui/internal/log/message/StringFormattedMessage;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/util/Log$Facade;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->logf(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V
    .locals 0

    iget-object p0, p0, Lmiui/util/Log$Facade;->mLogger:Lcom/miui/internal/log/Logger;

    if-nez p0, :cond_0

    const-string p0, "LogcatFacade"

    const-string p1, "mLogger is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/log/Logger;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p5}, Lcom/miui/internal/log/Logger;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Lcom/miui/internal/log/message/Message;)V

    invoke-interface {p5}, Lcom/miui/internal/log/message/Message;->recycle()V

    :goto_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->logf(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/miui/internal/log/Level;->FATAL:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->FATAL:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->FATAL:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->logf(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->logf(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->logf(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->logf(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
