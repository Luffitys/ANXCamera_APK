.class public Lmiui/process/MiuiApplicationThread;
.super Lmiui/process/IMiuiApplicationThread$Stub;
.source "MiuiApplicationThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiApplicationThread"


# instance fields
.field private mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/process/IMiuiApplicationThread$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpMessage()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const-string v1, ""

    :try_start_3
    const-class v2, Landroid/os/BaseLooper;

    const-string v3, "dumpAll"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_26

    move-object v1, v3

    goto :goto_2e

    :catch_26
    move-exception v2

    const-string v3, "MiuiApplicationThread"

    const-string v4, "error in dumpMessage."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    return-object v1
.end method

.method public longScreenshot(II)Z
    .registers 4

    iget-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-direct {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;-><init>()V

    iput-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    :cond_b
    iget-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-virtual {v0, p1, p2}, Lmiui/util/LongScreenshotUtils$ContentPort;->longScreenshot(II)Z

    move-result v0

    return v0
.end method
