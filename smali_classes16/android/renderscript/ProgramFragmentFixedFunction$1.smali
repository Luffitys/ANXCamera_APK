.class synthetic Landroid/renderscript/ProgramFragmentFixedFunction$1;
.super Ljava/lang/Object;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$EnvMode:[I

.field static final synthetic $SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->values()[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$1;->$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$EnvMode:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

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
    sget-object v2, Landroid/renderscript/ProgramFragmentFixedFunction$1;->$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$EnvMode:[I

    sget-object v3, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

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
    sget-object v3, Landroid/renderscript/ProgramFragmentFixedFunction$1;->$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$EnvMode:[I

    sget-object v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->DECAL:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v4}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->values()[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Landroid/renderscript/ProgramFragmentFixedFunction$1;->$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format:[I

    :try_start_37
    sget-object v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v4}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    move-exception v1

    :goto_41
    :try_start_41
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$1;->$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format:[I

    sget-object v3, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->LUMINANCE_ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4c

    goto :goto_4d

    :catch_4c
    move-exception v0

    :goto_4d
    :try_start_4d
    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$1;->$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format:[I

    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGB:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    move-exception v0

    :goto_59
    :try_start_59
    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$1;->$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format:[I

    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v0

    :goto_66
    return-void
.end method
