.class public Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;
.super Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;
.source "Android_Net_ConnectivityManager_class.java"


# static fields
.field private static final isNetworkSupported:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/net/ConnectivityManager;

    const-string v1, "isNetworkSupported"

    const-string v2, "(I)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;->isNetworkSupported:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;-><init>()V

    return-void
.end method


# virtual methods
.method public isNetworkSupported(Landroid/net/ConnectivityManager;I)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;->isNetworkSupported:Lmiui/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, p1, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v1

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "android.os.Process.getTotalMemory"

    invoke-virtual {v2, v3, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
