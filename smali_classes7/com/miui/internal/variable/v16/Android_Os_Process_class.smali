.class public Lcom/miui/internal/variable/v16/Android_Os_Process_class;
.super Lcom/miui/internal/variable/Android_Os_Process_class;
.source ""


# static fields
.field private static final getFreeMemory:Lmiui/reflect/Method;

.field private static final getTotalMemory:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/os/Process;

    const-string v1, "getTotalMemory"

    const-string v2, "()J"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Os_Process_class;->getTotalMemory:Lmiui/reflect/Method;

    const-class v0, Landroid/os/Process;

    const-string v1, "getFreeMemory"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Os_Process_class;->getFreeMemory:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Os_Process_class;-><init>()V

    return-void
.end method


# virtual methods
.method public getFreeMemory()J
    .locals 2

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Os_Process_class;->getFreeMemory:Lmiui/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lmiui/reflect/Method;->invokeLong(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.os.Process.getFreeMemory"

    invoke-virtual {v0, v1, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTotalMemory()J
    .locals 2

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Os_Process_class;->getTotalMemory:Lmiui/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lmiui/reflect/Method;->invokeLong(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.os.Process.getTotalMemory"

    invoke-virtual {v0, v1, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
