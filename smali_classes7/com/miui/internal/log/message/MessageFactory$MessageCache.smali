.class Lcom/miui/internal/log/message/MessageFactory$MessageCache;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private iCache:[Lcom/miui/internal/log/message/Message;

.field private iConstructor:Ljava/lang/reflect/Constructor;

.field private iPointer:I


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;[Lcom/miui/internal/log/message/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iConstructor:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iCache:[Lcom/miui/internal/log/message/Message;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    return-void
.end method

.method private create()Lcom/miui/internal/log/message/Message;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/message/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to construct new instance of class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MessageFactory"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createInstance(Ljava/lang/Class;I)Lcom/miui/internal/log/message/MessageFactory$MessageCache;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/miui/internal/log/message/Message;

    new-instance v1, Lcom/miui/internal/log/message/MessageFactory$MessageCache;

    invoke-direct {v1, v0, p1}, Lcom/miui/internal/log/message/MessageFactory$MessageCache;-><init>(Ljava/lang/reflect/Constructor;[Lcom/miui/internal/log/message/Message;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must have a public empty constructor"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized obtain()Lcom/miui/internal/log/message/Message;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    iget-object v1, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iCache:[Lcom/miui/internal/log/message/Message;

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/miui/internal/log/message/Message;->prepareForReuse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->create()Lcom/miui/internal/log/message/Message;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle(Lcom/miui/internal/log/message/Message;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    iget-object v1, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iCache:[Lcom/miui/internal/log/message/Message;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iCache:[Lcom/miui/internal/log/message/Message;

    iget v1, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    aput-object p1, v0, v1

    iget p1, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->iPointer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
