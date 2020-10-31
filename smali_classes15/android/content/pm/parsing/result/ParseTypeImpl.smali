.class public Landroid/content/pm/parsing/result/ParseTypeImpl;
.super Ljava/lang/Object;
.source "ParseTypeImpl.java"

# interfaces
.implements Landroid/content/pm/parsing/result/ParseInput;
.implements Landroid/content/pm/parsing/result/ParseResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/parsing/result/ParseInput;",
        "Landroid/content/pm/parsing/result/ParseResult<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG_FILL_STACK_TRACE:Z = false

.field public static final DEBUG_LOG_ON_ERROR:Z = false

.field public static final DEBUG_THROW_ALL_ERRORS:Z = false

.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# instance fields
.field private mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

.field private mDeferredErrors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mException:Ljava/lang/Exception;

.field private mPackageName:Ljava/lang/String;

.field private mResult:Ljava/lang/Object;

.field private mTargetSdkVersion:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

    return-void
.end method

.method public static forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;
    .registers 3

    nop

    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    new-instance v1, Landroid/content/pm/parsing/result/ParseTypeImpl;

    new-instance v2, Landroid/content/pm/parsing/result/-$$Lambda$ParseTypeImpl$BtZ1hEXecC-DzCfE9C1vVlLdZ0o;

    invoke-direct {v2, v0}, Landroid/content/pm/parsing/result/-$$Lambda$ParseTypeImpl$BtZ1hEXecC-DzCfE9C1vVlLdZ0o;-><init>(Lcom/android/internal/compat/IPlatformCompat;)V

    invoke-direct {v1, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v1
.end method

.method public static forParsingWithoutPlatformCompat()Landroid/content/pm/parsing/result/ParseTypeImpl;
    .registers 2

    new-instance v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    sget-object v1, Landroid/content/pm/parsing/result/-$$Lambda$ParseTypeImpl$w0XQhKhTM2QZoYasGubxOSuJkI4;->INSTANCE:Landroid/content/pm/parsing/result/-$$Lambda$ParseTypeImpl$w0XQhKhTM2QZoYasGubxOSuJkI4;

    invoke-direct {v0, v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v0
.end method

.method static synthetic lambda$forDefaultParsing$1(Lcom/android/internal/compat/IPlatformCompat;JLjava/lang/String;I)Z
    .registers 9

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput p4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :try_start_9
    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_e

    return v1

    :catch_e
    move-exception v1

    const-string v2, "PackageParsing"

    const-string v3, "IPlatformCompat query failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x1

    return v2
.end method

.method static synthetic lambda$forParsingWithoutPlatformCompat$0(JLjava/lang/String;I)Z
    .registers 7

    invoke-static {p0, p1}, Landroid/content/pm/parsing/result/ParseInput$DeferredError;->getTargetSdkForChange(J)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    if-le p3, v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method


# virtual methods
.method public deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-eqz v0, :cond_18

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_18
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

    iget-object v2, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p2, p3, v2, v3}, Landroid/content/pm/parsing/result/ParseInput$Callback;->isChangeEnabled(JLjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_2d
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-nez v0, :cond_38

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    :cond_38
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_46
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-nez v0, :cond_51

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    :cond_51
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:Ljava/lang/Integer;

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_10
    const/4 v2, 0x0

    if-ltz v1, :cond_44

    iget-object v3, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

    iget-object v7, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v3, v4, v7, v8}, Landroid/content/pm/parsing/result/ParseInput$Callback;->isChangeEnabled(JLjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-virtual {p0, v5}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_3c
    iget-object v6, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_44
    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public error(I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    iput p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    iput-object p2, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    return-object p0
.end method

.method public error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    const/16 v0, -0x6c

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public isError()Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSuccess()Z
    .registers 3

    iget v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public reset()Landroid/content/pm/parsing/result/ParseInput;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mResult:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/util/ArrayMap;->erase()V

    :cond_11
    return-object p0
.end method

.method public skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    const/16 v0, -0x7d

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(TResultType;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    iget v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set to success after set to error, was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    const-string v2, "PackageParsing"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    iput-object p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mResult:Ljava/lang/Object;

    return-object p0
.end method
