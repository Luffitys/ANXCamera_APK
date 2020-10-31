.class public Lmiui/extension/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Extension"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mInitialized:Z

.field private final mInvoker:Ljava/lang/String;

.field private mInvokerInstance:Lmiui/extension/invoker/Invoker;

.field private final mTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/extension/Extension;->mTarget:Ljava/lang/String;

    iput-object p2, p0, Lmiui/extension/Extension;->mAction:Ljava/lang/String;

    iput-object p3, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    return-void
.end method

.method private initialize()V
    .registers 6

    const-string v0, "Fail to initialize ActivityExecutor, invoker="

    const-string v1, "Extension"

    iget-boolean v2, p0, Lmiui/extension/Extension;->mInitialized:Z

    if-eqz v2, :cond_9

    return-void

    :cond_9
    const/4 v2, 0x1

    :try_start_a
    iget-object v3, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    const-string v4, "()V"

    invoke-static {v3, v4}, Lmiui/reflect/Constructor;->of(Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/extension/invoker/Invoker;

    iput-object v4, p0, Lmiui/extension/Extension;->mInvokerInstance:Lmiui/extension/invoker/Invoker;
    :try_end_1d
    .catch Lmiui/reflect/NoSuchClassException; {:try_start_a .. :try_end_1d} :catch_3a
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_a .. :try_end_1d} :catch_23
    .catchall {:try_start_a .. :try_end_1d} :catchall_21

    nop

    :goto_1e
    iput-boolean v2, p0, Lmiui/extension/Extension;->mInitialized:Z

    goto :goto_51

    :catchall_21
    move-exception v0

    goto :goto_52

    :catch_23
    move-exception v3

    :try_start_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    goto :goto_1e

    :catch_3a
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_24 .. :try_end_4f} :catchall_21

    nop

    goto :goto_1e

    :goto_51
    return-void

    :goto_52
    iput-boolean v2, p0, Lmiui/extension/Extension;->mInitialized:Z

    throw v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/extension/Extension;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getInvoker()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/extension/Extension;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lmiui/extension/Extension;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lmiui/extension/Extension;->initialize()V

    iget-object v0, p0, Lmiui/extension/Extension;->mInvokerInstance:Lmiui/extension/invoker/Invoker;

    if-eqz v0, :cond_2f

    :try_start_12
    invoke-interface {v0, p1, p2}, Lmiui/extension/invoker/Invoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_15
    .catch Lmiui/reflect/IllegalArgumentException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_2f

    :catch_16
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to invoke ActivityExecutor, invoker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Extension"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    :goto_2f
    return-void
.end method
