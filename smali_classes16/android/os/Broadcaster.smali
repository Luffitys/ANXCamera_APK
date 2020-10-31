.class public Landroid/os/Broadcaster;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Broadcaster$Registration;
    }
.end annotation


# instance fields
.field private mReg:Landroid/os/Broadcaster$Registration;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcast(Landroid/os/Message;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    move-object v2, v1

    :cond_c
    iget v3, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v3, v0, :cond_11

    goto :goto_16

    :cond_11
    iget-object v3, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v2, v3

    if-ne v2, v1, :cond_c

    :goto_16
    iget v3, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v3, v0, :cond_36

    iget-object v3, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v4, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    array-length v5, v3

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v5, :cond_36

    aget-object v7, v3, v6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    aget v9, v4, v6

    iput v9, v8, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public cancelRequest(ILandroid/os/Handler;I)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    move-object v1, v0

    if-nez v1, :cond_8

    monitor-exit p0

    return-void

    :cond_8
    iget v2, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v2, p1, :cond_d

    goto :goto_12

    :cond_d
    iget-object v2, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v1, v2

    if-ne v1, v0, :cond_8

    :goto_12
    iget v2, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v2, p1, :cond_57

    iget-object v2, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v3, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_57

    aget-object v6, v2, v5

    if-ne v6, p2, :cond_54

    aget v6, v3, v5

    if-ne v6, p3, :cond_54

    add-int/lit8 v6, v4, -0x1

    new-array v6, v6, [Landroid/os/Handler;

    iput-object v6, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    add-int/lit8 v6, v4, -0x1

    new-array v6, v6, [I

    iput-object v6, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    if-lez v5, :cond_3f

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-static {v2, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v3, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3f
    sub-int v6, v4, v5

    add-int/lit8 v6, v6, -0x1

    if-eqz v6, :cond_57

    add-int/lit8 v7, v5, 0x1

    iget-object v8, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v2, v7, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v5, 0x1

    iget-object v8, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v3, v7, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_57

    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_57
    :goto_57
    monitor-exit p0

    return-void

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public dumpRegistrations()V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcaster "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_6d

    move-object v1, v0

    :cond_21
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    senderWhat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_3d
    if-ge v3, v2, :cond_68

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_68
    iget-object v3, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v1, v3

    if-ne v1, v0, :cond_21

    :cond_6d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_77
    move-exception v0

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_1 .. :try_end_79} :catchall_77

    throw v0
.end method

.method public request(ILandroid/os/Handler;I)V
    .registers 12

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_29

    new-instance v1, Landroid/os/Broadcaster$Registration;

    invoke-direct {v1, p0, v2}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$1;)V

    move-object v0, v1

    iput p1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    new-array v1, v4, [Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    new-array v1, v4, [I

    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    iget-object v1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, v1, v3

    iget-object v1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, v1, v3

    iput-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    goto/16 :goto_9a

    :cond_29
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    move-object v0, v1

    :cond_2c
    iget v5, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v5, p1, :cond_31

    goto :goto_36

    :cond_31
    iget-object v5, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v0, v5

    if-ne v0, v1, :cond_2c

    :goto_36
    iget v5, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-eq v5, p1, :cond_65

    new-instance v3, Landroid/os/Broadcaster$Registration;

    invoke-direct {v3, p0, v2}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$1;)V

    move-object v2, v3

    iput p1, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    new-array v3, v4, [Landroid/os/Handler;

    iput-object v3, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    new-array v3, v4, [I

    iput-object v3, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    iput-object v0, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    iget-object v3, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v3, v2, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iget-object v3, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v2, v3, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    iput-object v2, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iget-object v3, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-ne v0, v3, :cond_62

    iget v3, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    iget v4, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-le v3, v4, :cond_62

    iput-object v2, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    :cond_62
    move-object v0, v2

    const/4 v2, 0x0

    goto :goto_92

    :cond_65
    iget-object v2, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v2, v2

    iget-object v4, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v5, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    const/4 v6, 0x0

    :goto_6d
    if-ge v6, v2, :cond_7c

    aget-object v7, v4, v6

    if-ne v7, p2, :cond_79

    aget v7, v5, v6

    if-ne v7, p3, :cond_79

    monitor-exit p0

    return-void

    :cond_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_6d

    :cond_7c
    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [Landroid/os/Handler;

    iput-object v6, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v6, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v4, v3, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [I

    iput-object v6, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    iget-object v6, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v5, v3, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_92
    iget-object v3, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, v3, v2

    iget-object v3, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, v3, v2

    :goto_9a
    monitor-exit p0

    return-void

    :catchall_9c
    move-exception v0

    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_2 .. :try_end_9e} :catchall_9c

    throw v0
.end method
