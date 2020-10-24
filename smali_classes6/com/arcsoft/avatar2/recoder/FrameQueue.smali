.class public Lcom/arcsoft/avatar2/recoder/FrameQueue;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "FrameQueue"


# instance fields
.field private b:Lcom/arcsoft/avatar2/recoder/FrameItem;

.field private c:Lcom/arcsoft/avatar2/recoder/FrameItem;

.field private d:Ljava/util/List;

.field private e:Ljava/util/Queue;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public addEmptyFrameForConsumer()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    :cond_0
    return-void
.end method

.method public addFrameForProducer()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    :cond_0
    return-void
.end method

.method public deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    iget-wide v2, p1, Lcom/arcsoft/avatar2/recoder/FrameItem;->a:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    iget-wide v2, p1, Lcom/arcsoft/avatar2/recoder/FrameItem;->a:J

    invoke-static {v2, v3}, Landroid/opengl/GLES30;->glDeleteSync(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iput-wide v0, p1, Lcom/arcsoft/avatar2/recoder/FrameItem;->a:J

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-wide v0, p1, Lcom/arcsoft/avatar2/recoder/FrameItem;->a:J

    throw p0
.end method

.method public getFrameForConsumer()Lcom/arcsoft/avatar2/recoder/FrameItem;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/recoder/FrameItem;

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFrameForProducer()Lcom/arcsoft/avatar2/recoder/FrameItem;
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/arcsoft/avatar2/recoder/FrameItem;

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(IIIZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->unInit()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_0

    new-instance v2, Lcom/arcsoft/avatar2/recoder/FrameItem;

    invoke-direct {v2}, Lcom/arcsoft/avatar2/recoder/FrameItem;-><init>()V

    iput-boolean v1, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mIsEmpty:Z

    iput-boolean v1, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mIsInited:Z

    iput v0, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFrameIndex:I

    new-instance v1, Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    invoke-direct {v1}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;-><init>()V

    iput-object v1, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    invoke-virtual {v1, p2, p3, p4}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->init(IIZ)V

    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->f:Z

    return-void
.end method

.method public isIsInited()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->f:Z

    return p0
.end method

.method public queueSize()I
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    return p0
.end method

.method public unInit()V
    .locals 4

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->unInit()V

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    invoke-virtual {p0, v0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    iput-object v1, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->unInit()V

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    invoke-virtual {p0, v0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    iput-object v1, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    :cond_1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar2/recoder/FrameItem;

    iget-object v3, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->unInit()V

    invoke-virtual {p0, v2}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V

    iput-object v1, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->unInit()V

    invoke-virtual {p0, v0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V

    iput-object v1, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->f:Z

    return-void
.end method
