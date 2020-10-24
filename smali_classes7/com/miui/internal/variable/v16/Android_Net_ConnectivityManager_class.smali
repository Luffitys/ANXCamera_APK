.class public Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;
.super Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;
.source ""


# static fields
.field private static final isNetworkSupported:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/net/ConnectivityManager;

    const-string v1, "isNetworkSupported"

    const-string v2, "(I)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;->isNetworkSupported:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;-><init>()V

    return-void
.end method


# virtual methods
.method public isNetworkSupported(Landroid/net/ConnectivityManager;I)Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Net_ConnectivityManager_class;->isNetworkSupported:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p0

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "android.os.Process.getTotalMemory"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p0
.end method
