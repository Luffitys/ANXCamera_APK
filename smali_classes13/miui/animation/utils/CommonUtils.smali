.class public Lmiui/animation/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/utils/CommonUtils$OnPreDrawTask;
    }
.end annotation


# static fields
.field private static final BUILT_IN:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final KEY_BASE:I = 0x100b0000

.field public static final KEY_FOLME_FORGROUND_COLOR:I = 0x100b0003

.field public static final KEY_FOLME_INIT_LAYOUT:I = 0x100b0004

.field public static final KEY_FOLME_IN_DRAGGING:I = 0x100b0005

.field public static final KEY_FOLME_LISTVIEW_POS:I = 0x100b0001

.field public static final KEY_FOLME_LISTVIEW_TOUCH_LISTENER:I = 0x100b0002

.field public static final KEY_FOLME_SET_HEIGHT:I = 0x100b0007

.field public static final KEY_FOLME_SET_WIDTH:I = 0x100b0006

.field public static final TAG:Ljava/lang/String; = "miuisdk_anim"

.field public static final UNIT_SECOND:I = 0x3e8

.field public static final sArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field public static final sDefEase:Lmiui/animation/utils/EaseManager$EaseStyle;

.field private static sTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_54

    const/4 v2, -0x2

    invoke-static {v2, v1}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    sput-object v1, Lmiui/animation/utils/CommonUtils;->sDefEase:Lmiui/animation/utils/EaseManager$EaseStyle;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v1, Lmiui/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v1, v0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-class v2, Ljava/lang/Long;

    aput-object v2, v1, v0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const-class v2, Ljava/lang/Short;

    aput-object v2, v1, v0

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const/16 v0, 0x8

    const-class v2, Ljava/lang/Float;

    aput-object v2, v1, v0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const/16 v0, 0xa

    const-class v2, Ljava/lang/Double;

    aput-object v2, v1, v0

    sput-object v1, Lmiui/animation/utils/CommonUtils;->BUILT_IN:[Ljava/lang/Class;

    return-void

    :array_54
    .array-data 4
        0x3f59999a    # 0.85f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRect(Lmiui/animation/IAnimTarget;Landroid/graphics/RectF;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/animation/IAnimTarget;->getValue(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/animation/IAnimTarget;->getValue(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lmiui/animation/IAnimTarget;->getValue(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lmiui/animation/IAnimTarget;->getValue(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static getSize(Lmiui/animation/IAnimTarget;I)F
    .registers 4

    const/4 v0, -0x1

    if-nez p1, :cond_5

    const/4 v0, 0x6

    goto :goto_11

    :cond_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    const/4 v0, 0x5

    goto :goto_11

    :cond_a
    const/4 v1, 0x6

    if-eq p1, v1, :cond_10

    const/4 v1, 0x5

    if-ne p1, v1, :cond_11

    :cond_10
    move v0, p1

    :cond_11
    :goto_11
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    const/4 v1, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {p0, v0}, Lmiui/animation/IAnimTarget;->getValue(I)F

    move-result v1

    :goto_1a
    return v1
.end method

.method public static getTouchSlop(Landroid/view/View;)F
    .registers 3

    sget v0, Lmiui/animation/utils/CommonUtils;->sTouchSlop:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lmiui/animation/utils/CommonUtils;->sTouchSlop:F

    :cond_16
    sget v0, Lmiui/animation/utils/CommonUtils;->sTouchSlop:F

    return v0
.end method

.method public static hasFlags(JJ)Z
    .registers 8

    and-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static inArray([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    if-eqz p0, :cond_19

    array-length v1, p0

    if-lez v1, :cond_19

    array-length v1, p0

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_19

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    return v0
.end method

.method public static isArrayEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isBuiltInClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lmiui/animation/utils/CommonUtils;->BUILT_IN:[Ljava/lang/Class;

    invoke-static {v0, p0}, Lmiui/animation/utils/CommonUtils;->inArray([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_45

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_45

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_45
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static mapsToString([Ljava/util/Map;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    const/16 v3, 0xa

    if-ge v1, v2, :cond_29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    const-string v3, "    "

    invoke-static {v2, v3}, Lmiui/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method public static runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lmiui/animation/utils/CommonUtils$OnPreDrawTask;

    invoke-direct {v0, p1}, Lmiui/animation/utils/CommonUtils$OnPreDrawTask;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Lmiui/animation/utils/CommonUtils$OnPreDrawTask;->start(Landroid/view/View;)V

    return-void
.end method

.method public static toFloatValue(Ljava/lang/Object;)F
    .registers 4

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    return v0

    :cond_c
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toFloat failed, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIntArray([F)[I
    .registers 4

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_f

    aget v2, p0, v1

    float-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-object v0
.end method

.method public static toIntValue(Ljava/lang/Object;)I
    .registers 4

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_c
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toFloat failed, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
