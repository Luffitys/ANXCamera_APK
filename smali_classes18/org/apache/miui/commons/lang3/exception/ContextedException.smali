.class public Lorg/apache/miui/commons/lang3/exception/ContextedException;
.super Ljava/lang/Exception;
.source "ContextedException.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/exception/ExceptionContext;


# static fields
.field private static final serialVersionUID:J = 0x132dd72L


# instance fields
.field private final exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/miui/commons/lang3/exception/ExceptionContext;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez p3, :cond_b

    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    move-object p3, v0

    :cond_b
    iput-object p3, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    return-void
.end method


# virtual methods
.method public addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedException;
    .registers 4

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    return-object p0
.end method

.method public bridge synthetic addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ContextedException;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedException;

    move-result-object p1

    return-object p1
.end method

.method public getContextEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getContextEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContextLabels()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getContextLabels()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContextValues(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getContextValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/exception/ContextedException;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawMessage()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedException;
    .registers 4

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    return-object p0
.end method

.method public bridge synthetic setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ContextedException;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedException;

    move-result-object p1

    return-object p1
.end method
