.class public abstract Landroid/filterfw/core/FilterPort;
.super Ljava/lang/Object;
.source "FilterPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterPort"


# instance fields
.field protected mChecksType:Z

.field protected mFilter:Landroid/filterfw/core/Filter;

.field protected mIsBlocking:Z

.field protected mIsOpen:Z

.field private mLogVerbose:Z

.field protected mName:Ljava/lang/String;

.field protected mPortFormat:Landroid/filterfw/core/FrameFormat;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    iput-object p2, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    iput-object p1, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    const-string v0, "FilterPort"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    return-void
.end method


# virtual methods
.method protected assertPortIsOpen()V
    .registers 4

    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal operation on closed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkFrameManager(Landroid/filterfw/core/Frame;Landroid/filterfw/core/FilterContext;)V
    .registers 6

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    if-ne v0, v1, :cond_11

    goto :goto_2d

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is managed by foreign FrameManager! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    :goto_2d
    return-void
.end method

.method protected checkFrameType(Landroid/filterfw/core/Frame;Z)V
    .registers 6

    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    if-nez v0, :cond_6

    if-eqz p2, :cond_44

    :cond_6
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameFormat;->isCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_44

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is of incorrect type! Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    :goto_44
    return-void
.end method

.method public abstract clear()V
.end method

.method public close()V
    .registers 3

    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterPort"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    return-void
.end method

.method public abstract filterMustClose()Z
.end method

.method public getFilter()Landroid/filterfw/core/Filter;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortFormat()Landroid/filterfw/core/FrameFormat;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    return-object v0
.end method

.method public abstract hasFrame()Z
.end method

.method public isAttached()Z
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isBlocking()Z
    .registers 2

    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    return v0
.end method

.method public isOpen()Z
    .registers 2

    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    return v0
.end method

.method public abstract isReady()Z
.end method

.method public open()V
    .registers 3

    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterPort"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    return-void
.end method

.method public abstract pullFrame()Landroid/filterfw/core/Frame;
.end method

.method public abstract pushFrame(Landroid/filterfw/core/Frame;)V
.end method

.method public setBlocking(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    return-void
.end method

.method public setChecksType(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    return-void
.end method

.method public abstract setFrame(Landroid/filterfw/core/Frame;)V
.end method

.method public setPortFormat(Landroid/filterfw/core/FrameFormat;)V
    .registers 2

    iput-object p1, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "port \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
