.class synthetic Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$1;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $SwitchMap$com$xiaomi$camera$imagecodec$ReprocessorFactory$ReprocessorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->values()[Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$1;->$SwitchMap$com$xiaomi$camera$imagecodec$ReprocessorFactory$ReprocessorType:[I

    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->HARDWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$1;->$SwitchMap$com$xiaomi$camera$imagecodec$ReprocessorFactory$ReprocessorType:[I

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->SOFTWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$1;->$SwitchMap$com$xiaomi$camera$imagecodec$ReprocessorFactory$ReprocessorType:[I

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->ISP_INTERFACE:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
