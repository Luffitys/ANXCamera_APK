.class public abstract Lcom/miui/internal/util/ClassProxy;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/miui/internal/util/ClassProxy;->onClassProxyDisabled()V

    return-void
.end method

.method private addCookie(J)V
    .locals 0

    return-void
.end method

.method public static getProcName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static setDebugModules([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setupClassHook(ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static setupInterpreterHook()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static setupResourceHook()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected final attachConstructor(Ljava/lang/String;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method protected final attachMethod(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method protected final detachMethod(J)V
    .locals 0

    return-void
.end method

.method protected final dispose()V
    .locals 0

    return-void
.end method

.method protected abstract handle()V
.end method

.method protected onClassProxyDisabled()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no hook applied for class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miuisdk"

    invoke-static {v0, p0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
