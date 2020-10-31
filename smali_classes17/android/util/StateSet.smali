.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final NOTHING:[I

.field public static final VIEW_STATE_ACCELERATED:I = 0x40

.field public static final VIEW_STATE_ACTIVATED:I = 0x20

.field public static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final VIEW_STATE_ENABLED:I = 0x8

.field public static final VIEW_STATE_FOCUSED:I = 0x4

.field public static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I

.field public static final VIEW_STATE_PRESSED:I = 0x10

.field public static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field public static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field public static final WILD_CARD:[I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_86

    sput-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v1, v1

    if-ne v0, v1, :cond_7e

    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_17
    sget-object v2, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3e

    sget-object v2, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v2, v2, v1

    const/4 v4, 0x0

    :goto_22
    sget-object v5, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v6, v5

    if-ge v4, v6, :cond_3b

    aget v6, v5, v4

    if-ne v6, v2, :cond_38

    mul-int/lit8 v6, v1, 0x2

    aput v2, v0, v6

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v3

    add-int/lit8 v7, v4, 0x1

    aget v5, v5, v7

    aput v5, v0, v6

    :cond_38
    add-int/lit8 v4, v4, 0x2

    goto :goto_22

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_3e
    sget-object v1, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    shl-int v2, v3, v1

    new-array v2, v2, [[I

    sput-object v2, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    const/4 v2, 0x0

    :goto_4a
    sget-object v4, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v4, v4

    if-ge v2, v4, :cond_72

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    new-array v5, v4, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_57
    array-length v8, v0

    if-ge v7, v8, :cond_6b

    add-int/lit8 v8, v7, 0x1

    aget v8, v0, v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_68

    add-int/lit8 v8, v6, 0x1

    aget v9, v0, v7

    aput v9, v5, v6

    move v6, v8

    :cond_68
    add-int/lit8 v7, v7, 0x2

    goto :goto_57

    :cond_6b
    sget-object v7, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aput-object v5, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_72
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    new-array v1, v3, [I

    aput v0, v1, v0

    sput-object v1, Landroid/util/StateSet;->NOTHING:[I

    return-void

    :cond_7e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_86
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAttribute([[II)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    array-length v1, p0

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_20

    aget-object v3, p0, v2

    if-nez v3, :cond_c

    goto :goto_20

    :cond_c
    array-length v4, v3

    move v5, v0

    :goto_e
    if-ge v5, v4, :cond_1d

    aget v6, v3, v5

    if-eq v6, p1, :cond_1b

    neg-int v7, v6

    if-ne v7, p1, :cond_18

    goto :goto_1b

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_20
    :goto_20
    return v0
.end method

.method public static dump([I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_3c

    aget v3, p0, v2

    sparse-switch v3, :sswitch_data_42

    goto :goto_39

    :sswitch_f
    const-string v3, "A "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :sswitch_15
    const-string v3, "P "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :sswitch_1b
    const-string v3, "S "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :sswitch_21
    const-string v3, "C "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :sswitch_27
    const-string v3, "E "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :sswitch_2d
    const-string v3, "W "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :sswitch_33
    const-string v3, "F "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_42
    .sparse-switch
        0x101009c -> :sswitch_33
        0x101009d -> :sswitch_2d
        0x101009e -> :sswitch_27
        0x10100a0 -> :sswitch_21
        0x10100a1 -> :sswitch_1b
        0x10100a7 -> :sswitch_15
        0x10102fe -> :sswitch_f
    .end sparse-switch
.end method

.method public static get(I)[I
    .registers 3

    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v1, v0

    if-ge p0, v1, :cond_8

    aget-object v0, v0, p0

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid state set mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isWildCard([I)Z
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    aget v0, p0, v1

    if-nez v0, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method public static stateSetMatches([II)Z
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x1

    if-ge v1, v0, :cond_17

    aget v3, p0, v1

    if-nez v3, :cond_a

    return v2

    :cond_a
    const/4 v2, 0x0

    if-lez v3, :cond_10

    if-eq p1, v3, :cond_14

    return v2

    :cond_10
    neg-int v4, v3

    if-ne p1, v4, :cond_14

    return v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return v2
.end method

.method public static stateSetMatches([I[I)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_e

    if-eqz p0, :cond_c

    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    move v0, v1

    :cond_d
    return v0

    :cond_e
    array-length v2, p0

    array-length v3, p1

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_3b

    aget v5, p0, v4

    if-nez v5, :cond_18

    return v1

    :cond_18
    if-lez v5, :cond_1c

    const/4 v6, 0x1

    goto :goto_1e

    :cond_1c
    const/4 v6, 0x0

    neg-int v5, v5

    :goto_1e
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_20
    if-ge v8, v3, :cond_33

    aget v9, p1, v8

    if-nez v9, :cond_29

    if-eqz v6, :cond_33

    return v0

    :cond_29
    if-ne v9, v5, :cond_30

    if-eqz v6, :cond_2f

    const/4 v7, 0x1

    goto :goto_33

    :cond_2f
    return v0

    :cond_30
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_33
    :goto_33
    if-eqz v6, :cond_38

    if-nez v7, :cond_38

    return v0

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_3b
    return v1
.end method

.method public static trimStateSet([II)[I
    .registers 4

    array-length v0, p0

    if-ne v0, p1, :cond_4

    return-object p0

    :cond_4
    new-array v0, p1, [I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
