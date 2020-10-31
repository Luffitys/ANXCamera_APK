.class synthetic Lmiui/maml/elements/ScreenElement$2;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$maml$elements$ScreenElement$Align:[I

.field static final synthetic $SwitchMap$miui$maml$elements$ScreenElement$AlignV:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lmiui/maml/elements/ScreenElement$Align;->values()[Lmiui/maml/elements/ScreenElement$Align;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/elements/ScreenElement$2;->$SwitchMap$miui$maml$elements$ScreenElement$Align:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

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
    sget-object v2, Lmiui/maml/elements/ScreenElement$2;->$SwitchMap$miui$maml$elements$ScreenElement$Align:[I

    sget-object v3, Lmiui/maml/elements/ScreenElement$Align;->RIGHT:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    invoke-static {}, Lmiui/maml/elements/ScreenElement$AlignV;->values()[Lmiui/maml/elements/ScreenElement$AlignV;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lmiui/maml/elements/ScreenElement$2;->$SwitchMap$miui$maml$elements$ScreenElement$AlignV:[I

    :try_start_2a
    sget-object v3, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception v1

    :goto_34
    :try_start_34
    sget-object v1, Lmiui/maml/elements/ScreenElement$2;->$SwitchMap$miui$maml$elements$ScreenElement$AlignV:[I

    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3f

    goto :goto_40

    :catch_3f
    move-exception v0

    :goto_40
    return-void
.end method
