.class public Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;
.super Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;
.source ""


# static fields
.field private static final CLASS:Ljava/lang/Class;

.field private static final GET_LAST_FAILURE_MESG_AS_INT:Lmiui/reflect/Method;

.field private static final INITIALIZE:Lmiui/reflect/Field;

.field private static final LAST_FAILURE_TIME:Lmiui/reflect/Field;

.field private static final LAST_SUCCESS_TIME:Lmiui/reflect/Field;

.field private static final PENDING:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "android.content.SyncStatusInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.content.SyncStatusInfo"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->CLASS:Ljava/lang/Class;

    const-string v1, "pending"

    const-string v2, "Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->PENDING:Lmiui/reflect/Field;

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->CLASS:Ljava/lang/Class;

    const-string v1, "initialize"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->INITIALIZE:Lmiui/reflect/Field;

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->CLASS:Ljava/lang/Class;

    const-string v1, "lastSuccessTime"

    const-string v2, "J"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->LAST_SUCCESS_TIME:Lmiui/reflect/Field;

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->CLASS:Ljava/lang/Class;

    const-string v1, "lastFailureTime"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->LAST_FAILURE_TIME:Lmiui/reflect/Field;

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->CLASS:Ljava/lang/Class;

    const-string v1, "getLastFailureMesgAsInt"

    const-string v2, "(I)I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->GET_LAST_FAILURE_MESG_AS_INT:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitialize(Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->INITIALIZE:Lmiui/reflect/Field;

    invoke-virtual {p0, p1}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string v0, "android.content.SyncStatusInfo.initialize"

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getLastFailureMesgAsInt(Ljava/lang/Object;I)I
    .locals 4

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->GET_LAST_FAILURE_MESG_AS_INT:Lmiui/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string v0, "android.content.SyncStatusInfo.getLastFailureMesgAsInt"

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public getLastFailureTime(Ljava/lang/Object;)J
    .locals 1

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->LAST_FAILURE_TIME:Lmiui/reflect/Field;

    invoke-virtual {p0, p1}, Lmiui/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string v0, "android.content.SyncStatusInfo.lastFailureTime"

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getLastSuccessTime(Ljava/lang/Object;)J
    .locals 1

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->LAST_SUCCESS_TIME:Lmiui/reflect/Field;

    invoke-virtual {p0, p1}, Lmiui/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string v0, "android.content.SyncStatusInfo.lastSuccessTime"

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPending(Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->PENDING:Lmiui/reflect/Field;

    invoke-virtual {p0, p1}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string v0, "android.content.SyncStatusInfo.pending"

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method
