.class synthetic Lmiui/maml/ActionCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$AnimStateCommand$Type:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$VideoCommand$CommandType:[I

.field static final synthetic $SwitchMap$miui$maml$SoundManager$Command:[I

.field static final synthetic $SwitchMap$miui$maml$data$VariableType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    invoke-static {}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->values()[Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

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
    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    sget-object v3, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

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
    sget-object v3, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    sget-object v4, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v4}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

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
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    sget-object v5, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v4

    :goto_3b
    const/4 v4, 0x5

    :try_start_3c
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v5

    :goto_48
    invoke-static {}, Lmiui/maml/ActionCommand$FolmeCommand$Type;->values()[Lmiui/maml/ActionCommand$FolmeCommand$Type;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

    :try_start_51
    sget-object v6, Lmiui/maml/ActionCommand$FolmeCommand$Type;->TO:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_59} :catch_5a

    goto :goto_5b

    :catch_5a
    move-exception v5

    :goto_5b
    :try_start_5b
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

    sget-object v6, Lmiui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_66

    goto :goto_67

    :catch_66
    move-exception v5

    :goto_67
    :try_start_67
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

    sget-object v6, Lmiui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_71} :catch_72

    goto :goto_73

    :catch_72
    move-exception v5

    :goto_73
    :try_start_73
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

    sget-object v6, Lmiui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_7e

    goto :goto_7f

    :catch_7e
    move-exception v5

    :goto_7f
    invoke-static {}, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->values()[Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    :try_start_88
    sget-object v6, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->UPDATE:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_90} :catch_91

    goto :goto_92

    :catch_91
    move-exception v5

    :goto_92
    :try_start_92
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    sget-object v6, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->REMOVE:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9c} :catch_9d

    goto :goto_9e

    :catch_9d
    move-exception v5

    :goto_9e
    :try_start_9e
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    sget-object v6, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->CLEAR:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_a8} :catch_a9

    goto :goto_aa

    :catch_a9
    move-exception v5

    :goto_aa
    invoke-static {}, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->values()[Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    :try_start_b3
    sget-object v6, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->UPDATE:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bb} :catch_bc

    goto :goto_bd

    :catch_bc
    move-exception v5

    :goto_bd
    :try_start_bd
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    sget-object v6, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->REMOVE:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_c7} :catch_c8

    goto :goto_c9

    :catch_c8
    move-exception v5

    :goto_c9
    :try_start_c9
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    sget-object v6, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->CLEAR:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d3} :catch_d4

    goto :goto_d5

    :catch_d4
    move-exception v5

    :goto_d5
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->values()[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    :try_start_de
    sget-object v6, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_de .. :try_end_e6} :catch_e7

    goto :goto_e8

    :catch_e7
    move-exception v5

    :goto_e8
    :try_start_e8
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f2} :catch_f3

    goto :goto_f4

    :catch_f3
    move-exception v5

    :goto_f4
    :try_start_f4
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f4 .. :try_end_fe} :catch_ff

    goto :goto_100

    :catch_ff
    move-exception v5

    :goto_100
    :try_start_100
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100 .. :try_end_10a} :catch_10b

    goto :goto_10c

    :catch_10b
    move-exception v5

    :goto_10c
    invoke-static {}, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->values()[Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    :try_start_115
    sget-object v6, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_11d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11d} :catch_11e

    goto :goto_11f

    :catch_11e
    move-exception v5

    :goto_11f
    :try_start_11f
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_12a

    goto :goto_12b

    :catch_12a
    move-exception v5

    :goto_12b
    invoke-static {}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->values()[Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    :try_start_134
    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_13c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_134 .. :try_end_13c} :catch_13d

    goto :goto_13e

    :catch_13d
    move-exception v5

    :goto_13e
    :try_start_13e
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_148
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13e .. :try_end_148} :catch_149

    goto :goto_14a

    :catch_149
    move-exception v5

    :goto_14a
    :try_start_14a
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_154
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14a .. :try_end_154} :catch_155

    goto :goto_156

    :catch_155
    move-exception v5

    :goto_156
    :try_start_156
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_160
    .catch Ljava/lang/NoSuchFieldError; {:try_start_156 .. :try_end_160} :catch_161

    goto :goto_162

    :catch_161
    move-exception v5

    :goto_162
    :try_start_162
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_16c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_162 .. :try_end_16c} :catch_16d

    goto :goto_16e

    :catch_16d
    move-exception v5

    :goto_16e
    :try_start_16e
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16e .. :try_end_179} :catch_17a

    goto :goto_17b

    :catch_17a
    move-exception v5

    :goto_17b
    :try_start_17b
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_186
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17b .. :try_end_186} :catch_187

    goto :goto_188

    :catch_187
    move-exception v5

    :goto_188
    :try_start_188
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_194
    .catch Ljava/lang/NoSuchFieldError; {:try_start_188 .. :try_end_194} :catch_195

    goto :goto_196

    :catch_195
    move-exception v5

    :goto_196
    :try_start_196
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_1a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_196 .. :try_end_1a2} :catch_1a3

    goto :goto_1a4

    :catch_1a3
    move-exception v5

    :goto_1a4
    :try_start_1a4
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_1b1

    goto :goto_1b2

    :catch_1b1
    move-exception v5

    :goto_1b2
    :try_start_1b2
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b2 .. :try_end_1be} :catch_1bf

    goto :goto_1c0

    :catch_1bf
    move-exception v5

    :goto_1c0
    :try_start_1c0
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_1cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c0 .. :try_end_1cc} :catch_1cd

    goto :goto_1ce

    :catch_1cd
    move-exception v5

    :goto_1ce
    :try_start_1ce
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_1da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ce .. :try_end_1da} :catch_1db

    goto :goto_1dc

    :catch_1db
    move-exception v5

    :goto_1dc
    :try_start_1dc
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xe

    aput v7, v5, v6
    :try_end_1e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1dc .. :try_end_1e8} :catch_1e9

    goto :goto_1ea

    :catch_1e9
    move-exception v5

    :goto_1ea
    invoke-static {}, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->values()[Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    :try_start_1f3
    sget-object v6, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_ON:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_1fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f3 .. :try_end_1fb} :catch_1fc

    goto :goto_1fd

    :catch_1fc
    move-exception v5

    :goto_1fd
    :try_start_1fd
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_OFF:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_207
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fd .. :try_end_207} :catch_208

    goto :goto_209

    :catch_208
    move-exception v5

    :goto_209
    invoke-static {}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->values()[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    :try_start_212
    sget-object v6, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_21a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_212 .. :try_end_21a} :catch_21b

    goto :goto_21c

    :catch_21b
    move-exception v5

    :goto_21c
    :try_start_21c
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_226
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21c .. :try_end_226} :catch_227

    goto :goto_228

    :catch_227
    move-exception v5

    :goto_228
    :try_start_228
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_232
    .catch Ljava/lang/NoSuchFieldError; {:try_start_228 .. :try_end_232} :catch_233

    goto :goto_234

    :catch_233
    move-exception v5

    :goto_234
    :try_start_234
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_23e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_234 .. :try_end_23e} :catch_23f

    goto :goto_240

    :catch_23f
    move-exception v5

    :goto_240
    :try_start_240
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_24a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_240 .. :try_end_24a} :catch_24b

    goto :goto_24c

    :catch_24b
    move-exception v4

    :goto_24c
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->values()[Lmiui/maml/ActionCommand$AnimationProperty$Type;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    :try_start_255
    sget-object v5, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_25d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_255 .. :try_end_25d} :catch_25e

    goto :goto_25f

    :catch_25e
    move-exception v4

    :goto_25f
    :try_start_25f
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v5, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_269
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25f .. :try_end_269} :catch_26a

    goto :goto_26b

    :catch_26a
    move-exception v4

    :goto_26b
    :try_start_26b
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v5, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_275
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26b .. :try_end_275} :catch_276

    goto :goto_277

    :catch_276
    move-exception v4

    :goto_277
    :try_start_277
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v5, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_281
    .catch Ljava/lang/NoSuchFieldError; {:try_start_277 .. :try_end_281} :catch_282

    goto :goto_283

    :catch_282
    move-exception v4

    :goto_283
    invoke-static {}, Lmiui/maml/SoundManager$Command;->values()[Lmiui/maml/SoundManager$Command;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    :try_start_28c
    sget-object v5, Lmiui/maml/SoundManager$Command;->Play:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_294
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28c .. :try_end_294} :catch_295

    goto :goto_296

    :catch_295
    move-exception v4

    :goto_296
    :try_start_296
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    sget-object v5, Lmiui/maml/SoundManager$Command;->Pause:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_2a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_296 .. :try_end_2a0} :catch_2a1

    goto :goto_2a2

    :catch_2a1
    move-exception v4

    :goto_2a2
    :try_start_2a2
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    sget-object v5, Lmiui/maml/SoundManager$Command;->Resume:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_2ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a2 .. :try_end_2ac} :catch_2ad

    goto :goto_2ae

    :catch_2ad
    move-exception v4

    :goto_2ae
    :try_start_2ae
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    sget-object v5, Lmiui/maml/SoundManager$Command;->Stop:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_2b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ae .. :try_end_2b8} :catch_2b9

    goto :goto_2ba

    :catch_2b9
    move-exception v4

    :goto_2ba
    invoke-static {}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->values()[Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    :try_start_2c3
    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_2cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c3 .. :try_end_2cb} :catch_2cc

    goto :goto_2cd

    :catch_2cc
    move-exception v4

    :goto_2cd
    :try_start_2cd
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_2d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cd .. :try_end_2d7} :catch_2d8

    goto :goto_2d9

    :catch_2d8
    move-exception v4

    :goto_2d9
    :try_start_2d9
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_2e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d9 .. :try_end_2e3} :catch_2e4

    goto :goto_2e5

    :catch_2e4
    move-exception v2

    :goto_2e5
    :try_start_2e5
    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v4, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v4}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v4

    aput v3, v2, v4
    :try_end_2ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e5 .. :try_end_2ef} :catch_2f0

    goto :goto_2f1

    :catch_2f0
    move-exception v2

    :goto_2f1
    invoke-static {}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->values()[Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    :try_start_2fa
    sget-object v3, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_302
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2fa .. :try_end_302} :catch_303

    goto :goto_304

    :catch_303
    move-exception v2

    :goto_304
    invoke-static {}, Lmiui/maml/data/VariableType;->values()[Lmiui/maml/data/VariableType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    :try_start_30d
    sget-object v3, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    invoke-virtual {v3}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_315
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30d .. :try_end_315} :catch_316

    goto :goto_317

    :catch_316
    move-exception v1

    :goto_317
    :try_start_317
    sget-object v1, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    sget-object v2, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    invoke-virtual {v2}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_321
    .catch Ljava/lang/NoSuchFieldError; {:try_start_317 .. :try_end_321} :catch_322

    goto :goto_323

    :catch_322
    move-exception v0

    :goto_323
    return-void
.end method
