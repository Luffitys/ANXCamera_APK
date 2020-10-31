.class public final Lmiui/log/AndroidTag;
.super Ljava/lang/Object;
.source "AndroidTag.java"

# interfaces
.implements Lmiui/log/ILogTag;


# static fields
.field static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;


# instance fields
.field public final className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private clazzLoaded:Z

.field public final defaultOn:Z

.field public final fieldFullPath:Ljava/lang/String;

.field public final fieldName:Ljava/lang/String;

.field private isTagOn:Z

.field private onNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/log/AndroidTag;->className:Ljava/lang/String;

    iput-object p3, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    invoke-static {p2, p3}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/AndroidTag;->fieldFullPath:Ljava/lang/String;

    iput-boolean p4, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    iput-boolean p4, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    const/4 v0, 0x0

    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    iput-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    iput-object p1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static buildFieldFullPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadClass()V
    .registers 3

    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lmiui/log/AndroidTag;->className:Ljava/lang/String;

    sget-object v1, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    :cond_15
    return-void
.end method


# virtual methods
.method public isOn()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    return v0
.end method

.method public declared-synchronized switchOff()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lmiui/log/AndroidTag;->loadClass()V

    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    iget-object v1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_35

    :cond_20
    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    iget-object v1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchOn()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lmiui/log/AndroidTag;->loadClass()V

    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    iget-object v1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_33

    :cond_20
    if-ne v0, v1, :cond_33

    iput-boolean v1, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
