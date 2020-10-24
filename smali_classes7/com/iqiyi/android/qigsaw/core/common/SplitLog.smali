.class public Lcom/iqiyi/android/qigsaw/core/common/SplitLog;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Split.SplitLog"

.field private static defaultLogger:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

.field private static splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$1;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$1;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->defaultLogger:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getImpl()Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setSplitLogImp(Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;)V
    .locals 0

    sput-object p0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->splitLogImp:Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
