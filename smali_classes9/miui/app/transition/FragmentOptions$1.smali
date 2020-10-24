.class synthetic Lmiui/app/transition/FragmentOptions$1;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $SwitchMap$miui$app$transition$FragmentOptions$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lmiui/app/transition/FragmentOptions$Type;->values()[Lmiui/app/transition/FragmentOptions$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/app/transition/FragmentOptions$1;->$SwitchMap$miui$app$transition$FragmentOptions$Type:[I

    :try_start_0
    sget-object v1, Lmiui/app/transition/FragmentOptions$Type;->SCALE_UP:Lmiui/app/transition/FragmentOptions$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lmiui/app/transition/FragmentOptions$1;->$SwitchMap$miui$app$transition$FragmentOptions$Type:[I

    sget-object v1, Lmiui/app/transition/FragmentOptions$Type;->SCALE_DOWN:Lmiui/app/transition/FragmentOptions$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lmiui/app/transition/FragmentOptions$1;->$SwitchMap$miui$app$transition$FragmentOptions$Type:[I

    sget-object v1, Lmiui/app/transition/FragmentOptions$Type;->PHYSIC_FADE:Lmiui/app/transition/FragmentOptions$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lmiui/app/transition/FragmentOptions$1;->$SwitchMap$miui$app$transition$FragmentOptions$Type:[I

    sget-object v1, Lmiui/app/transition/FragmentOptions$Type;->EXIT_FADE:Lmiui/app/transition/FragmentOptions$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
