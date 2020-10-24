.class public Lmiui/extension/Extension;
.super Ljava/lang/Object;
.source ""


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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/extension/Extension;->mTarget:Ljava/lang/String;

    iput-object p2, p0, Lmiui/extension/Extension;->mAction:Ljava/lang/String;

    iput-object p3, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    return-void
.end method

.method private initialize()V
    .locals 5

    const-string v0, "Fail to initialize ActivityExecutor, invoker="

    const-string v1, "Extension"

    iget-boolean v2, p0, Lmiui/extension/Extension;->mInitialized:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    const-string v4, "()V"

    invoke-static {v3, v4}, Lmiui/reflect/Constructor;->of(Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/extension/invoker/Invoker;

    iput-object v3, p0, Lmiui/extension/Extension;->mInvokerInstance:Lmiui/extension/invoker/Invoker;
    :try_end_0
    .catch Lmiui/reflect/NoSuchClassException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v2, p0, Lmiui/extension/Extension;->mInitialized:Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    iput-boolean v2, p0, Lmiui/extension/Extension;->mInitialized:Z

    throw v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/extension/Extension;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public getInvoker()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    return-object p0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/extension/Extension;->mTarget:Ljava/lang/String;

    return-object p0
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmiui/extension/Extension;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lmiui/extension/Extension;->initialize()V

    iget-object v0, p0, Lmiui/extension/Extension;->mInvokerInstance:Lmiui/extension/invoker/Invoker;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1, p2}, Lmiui/extension/invoker/Invoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to invoke ActivityExecutor, invoker="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/extension/Extension;->mInvoker:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Extension"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
