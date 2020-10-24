.class synthetic Lcom/miui/internal/log/appender/LogcatAppender$2;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $SwitchMap$com$miui$internal$log$Level:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/internal/log/Level;->values()[Lcom/miui/internal/log/Level;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/internal/log/appender/LogcatAppender$2;->$SwitchMap$com$miui$internal$log$Level:[I

    :try_start_0
    sget-object v1, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/internal/log/appender/LogcatAppender$2;->$SwitchMap$com$miui$internal$log$Level:[I

    sget-object v1, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/miui/internal/log/appender/LogcatAppender$2;->$SwitchMap$com$miui$internal$log$Level:[I

    sget-object v1, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/miui/internal/log/appender/LogcatAppender$2;->$SwitchMap$com$miui$internal$log$Level:[I

    sget-object v1, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/miui/internal/log/appender/LogcatAppender$2;->$SwitchMap$com$miui$internal$log$Level:[I

    sget-object v1, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/miui/internal/log/appender/LogcatAppender$2;->$SwitchMap$com$miui$internal$log$Level:[I

    sget-object v1, Lcom/miui/internal/log/Level;->FATAL:Lcom/miui/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
