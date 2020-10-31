.class synthetic Lmiui/util/async/Task$1;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$util$async$Task$Delivery:[I

.field static final synthetic $SwitchMap$miui$util$async$Task$Priority:[I

.field static final synthetic $SwitchMap$miui$util$async$Task$Status:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lmiui/util/async/Task$Delivery;->values()[Lmiui/util/async/Task$Delivery;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Delivery:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lmiui/util/async/Task$Delivery;->Prepare:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v2}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Delivery:[I

    sget-object v3, Lmiui/util/async/Task$Delivery;->Finalize:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v3}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Delivery:[I

    sget-object v4, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v4}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    const/4 v3, 0x4

    :try_start_2f
    sget-object v4, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Delivery:[I

    sget-object v5, Lmiui/util/async/Task$Delivery;->Progress:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v5}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v4

    :goto_3b
    invoke-static {}, Lmiui/util/async/Task$Priority;->values()[Lmiui/util/async/Task$Priority;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Priority:[I

    :try_start_44
    sget-object v5, Lmiui/util/async/Task$Priority;->Low:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-exception v4

    :goto_4e
    :try_start_4e
    sget-object v4, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Priority:[I

    sget-object v5, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-exception v4

    :goto_5a
    :try_start_5a
    sget-object v4, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Priority:[I

    sget-object v5, Lmiui/util/async/Task$Priority;->High:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v4

    :goto_66
    :try_start_66
    sget-object v4, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Priority:[I

    sget-object v5, Lmiui/util/async/Task$Priority;->RealTime:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v4

    :goto_72
    invoke-static {}, Lmiui/util/async/Task$Status;->values()[Lmiui/util/async/Task$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    :try_start_7b
    sget-object v5, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    invoke-virtual {v5}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    move-exception v1

    :goto_85
    :try_start_85
    sget-object v1, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    sget-object v4, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    invoke-virtual {v4}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_8f} :catch_90

    goto :goto_91

    :catch_90
    move-exception v0

    :goto_91
    :try_start_91
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9b} :catch_9c

    goto :goto_9d

    :catch_9c
    move-exception v0

    :goto_9d
    :try_start_9d
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    sget-object v1, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_a8

    goto :goto_a9

    :catch_a8
    move-exception v0

    :goto_a9
    :try_start_a9
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    sget-object v1, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    move-exception v0

    :goto_b6
    return-void
.end method
