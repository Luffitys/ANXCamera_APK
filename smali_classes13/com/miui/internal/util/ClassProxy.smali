.class public abstract Lcom/miui/internal/util/ClassProxy;
.super Ljava/lang/Object;
.source "ClassProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/miui/internal/util/ClassProxy;->onClassProxyDisabled()V

    return-void
.end method

.method private addCookie(J)V
    .registers 3

    return-void
.end method

.method public static getProcName()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static setDebugModules([Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static setupClassHook(ILjava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public static setupInterpreterHook()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static setupResourceHook()V
    .registers 0

    return-void
.end method


# virtual methods
.method protected final attachConstructor(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final attachMethod(Ljava/lang/String;Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final detachMethod(J)V
    .registers 3

    return-void
.end method

.method protected final dispose()V
    .registers 1

    return-void
.end method

.method protected abstract handle()V
.end method

.method protected onClassProxyDisabled()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no hook applied for class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuisdk"

    invoke-static {v1, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
