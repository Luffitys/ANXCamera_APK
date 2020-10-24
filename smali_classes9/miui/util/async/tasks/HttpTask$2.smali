.class synthetic Lmiui/util/async/tasks/HttpTask$2;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $SwitchMap$miui$util$async$tasks$HttpTask$Method:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lmiui/util/async/tasks/HttpTask$Method;->values()[Lmiui/util/async/tasks/HttpTask$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/util/async/tasks/HttpTask$2;->$SwitchMap$miui$util$async$tasks$HttpTask$Method:[I

    :try_start_0
    sget-object v1, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lmiui/util/async/tasks/HttpTask$2;->$SwitchMap$miui$util$async$tasks$HttpTask$Method:[I

    sget-object v1, Lmiui/util/async/tasks/HttpTask$Method;->Post:Lmiui/util/async/tasks/HttpTask$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
