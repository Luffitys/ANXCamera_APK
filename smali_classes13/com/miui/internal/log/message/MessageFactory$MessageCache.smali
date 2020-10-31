.class Lcom/miui/internal/log/message/MessageFactory$MessageCache;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/log/message/MessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/internal/log/message/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private iCache:[Lcom/miui/internal/log/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private iConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private iPointer:I


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;[Lcom/miui/internal/log/message/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;[TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iConstructor:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iCache:[Lcom/miui/internal/log/message/Message;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    return-void
.end method

.method private create()Lcom/miui/internal/log/message/Message;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/message/Message;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to construct new instance of class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageFactory"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static createInstance(Ljava/lang/Class;I)Lcom/miui/internal/log/message/MessageFactory$MessageCache;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/internal/log/message/Message;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/miui/internal/log/message/MessageFactory$MessageCache<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/miui/internal/log/message/Message;

    new-instance v2, Lcom/miui/internal/log/message/MessageFactory$MessageCache;

    invoke-direct {v2, v0, v1}, Lcom/miui/internal/log/message/MessageFactory$MessageCache;-><init>(Ljava/lang/reflect/Constructor;[Lcom/miui/internal/log/message/Message;)V
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v2

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must have a public empty constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized obtain()Lcom/miui/internal/log/message/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    if-lez v0, :cond_14

    iget v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    iget-object v1, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iCache:[Lcom/miui/internal/log/message/Message;

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/miui/internal/log/message/Message;->prepareForReuse()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_14
    invoke-direct {p0}, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->create()Lcom/miui/internal/log/message/Message;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle(Lcom/miui/internal/log/message/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    iget-object v1, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iCache:[Lcom/miui/internal/log/message/Message;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iCache:[Lcom/miui/internal/log/message/Message;

    iget v1, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method
