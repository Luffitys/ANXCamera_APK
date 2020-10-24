.class public Lcom/airbnb/lottie/o000oOoO;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final OooOo:Ljava/lang/String;

.field public static final OooOoO:I = 0x2

.field public static final OooOoO0:I = 0x1

.field public static final OooOoOO:I = -0x1


# instance fields
.field private final OooO:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final OooO00o:Landroid/graphics/Matrix;

.field private OooO0O0:Lcom/airbnb/lottie/OooOOOO;

.field private final OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

.field private OooO0Oo:F

.field private OooO0o:Z

.field private OooO0o0:Z

.field private final OooO0oO:Ljava/util/Set;

.field private final OooO0oo:Ljava/util/ArrayList;

.field private OooOO0:Landroid/widget/ImageView$ScaleType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOO0O:Lcom/airbnb/lottie/o00Oo0/OooO0O0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOO0o:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOO:Lcom/airbnb/lottie/o00Oo0/OooO00o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOO0:Lcom/airbnb/lottie/OooO0Oo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field OooOOOO:Lcom/airbnb/lottie/OooO0OO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field OooOOOo:Lcom/airbnb/lottie/ooOO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOo0:Z

.field private OooOOoo:I

.field private OooOo0:Z

.field private OooOo00:Z

.field private OooOo0O:Z

.field private OooOo0o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/o000oOoO;->OooOo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO00o:Landroid/graphics/Matrix;

    new-instance v0, Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-direct {v0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0Oo:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0o0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0o:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oO:Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v2, Lcom/airbnb/lottie/Oooo0O0;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/Oooo0O0;-><init>(Lcom/airbnb/lottie/o000oOoO;)V

    iput-object v2, p0, Lcom/airbnb/lottie/o000oOoO;->OooO:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v3, 0xff

    iput v3, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOoo:I

    iput-boolean v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo0O:Z

    iput-boolean v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo0o:Z

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/o00o0O/OooO00o;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic OooO00o(Lcom/airbnb/lottie/o000oOoO;)Lcom/airbnb/lottie/model/layer/OooO0o0;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    return-object p0
.end method

.method static synthetic OooO0O0(Lcom/airbnb/lottie/o000oOoO;)Lcom/airbnb/lottie/o00o0O/OooO0o0;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    return-object p0
.end method

.method private OooO0oO()V
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/model/layer/OooO0o0;

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-static {v1}, Lcom/airbnb/lottie/o00Ooo/OooOo00;->OooO00o(Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/layer/OooO0oO;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/OooOOOO;->OooOO0()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/airbnb/lottie/model/layer/OooO0o0;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;Ljava/util/List;Lcom/airbnb/lottie/OooOOOO;)V

    iput-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    return-void
.end method

.method private OooOO0O(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooOO0o(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooOOO0(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private OooOO0o(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v3}, Lcom/airbnb/lottie/OooOOOO;->OooO0O0()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v4}, Lcom/airbnb/lottie/OooOOOO;->OooO0O0()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-boolean v4, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo0O:Z

    if-eqz v4, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    div-float v6, v5, v4

    div-float/2addr v2, v6

    div-float/2addr v3, v6

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    mul-float v7, v5, v4

    mul-float/2addr v4, v1

    sub-float/2addr v5, v7

    sub-float/2addr v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v6, v6, v7, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    iget-object v2, p0, Lcom/airbnb/lottie/o000oOoO;->OooO00o:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOoo:I

    invoke-virtual {v1, p1, v2, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method private OooOOO0(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0Oo:F

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooOoO0(Landroid/graphics/Canvas;)F

    move-result v1

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    iget v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0Oo:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    move v0, v3

    :goto_0
    const/4 v2, -0x1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v3}, Lcom/airbnb/lottie/OooOOOO;->OooO0O0()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v5}, Lcom/airbnb/lottie/OooOOOO;->OooO0O0()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v4, v3, v1

    mul-float v6, v5, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOooo()F

    move-result v7

    mul-float/2addr v7, v3

    sub-float/2addr v7, v4

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOooo()F

    move-result v3

    mul-float/2addr v3, v5

    sub-float/2addr v3, v6

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO00o:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOoo:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method private OooOOo()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private OooOOoo()Lcom/airbnb/lottie/o00Oo0/OooO00o;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOO:Lcom/airbnb/lottie/o00Oo0/OooO00o;

    if-nez v0, :cond_1

    new-instance v0, Lcom/airbnb/lottie/o00Oo0/OooO00o;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOOO:Lcom/airbnb/lottie/OooO0OO;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/o00Oo0/OooO00o;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/OooO0OO;)V

    iput-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOO:Lcom/airbnb/lottie/o00Oo0/OooO00o;

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOO:Lcom/airbnb/lottie/o00Oo0/OooO00o;

    return-object p0
.end method

.method private OooOo0O()Lcom/airbnb/lottie/o00Oo0/OooO0O0;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0O:Lcom/airbnb/lottie/o00Oo0/OooO0O0;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOOo()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/o00Oo0/OooO0O0;->OooO0O0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0O:Lcom/airbnb/lottie/o00Oo0/OooO0O0;

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0O:Lcom/airbnb/lottie/o00Oo0/OooO0O0;

    if-nez v0, :cond_2

    new-instance v0, Lcom/airbnb/lottie/o00Oo0/OooO0O0;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0o:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOO0:Lcom/airbnb/lottie/OooO0Oo;

    iget-object v4, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v4}, Lcom/airbnb/lottie/OooOOOO;->OooO()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/o00Oo0/OooO0O0;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/OooO0Oo;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0O:Lcom/airbnb/lottie/o00Oo0/OooO0O0;

    :cond_2
    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0O:Lcom/airbnb/lottie/o00Oo0/OooO0O0;

    return-object p0
.end method

.method private OooOoO0(Landroid/graphics/Canvas;)F
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/OooOOOO;->OooO0O0()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/OooOOOO;->OooO0O0()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private o0OO00O()V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOooo()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/OooOOOO;->OooO0O0()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/OooOOOO;->OooO0O0()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public OooO()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    iput-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    iput-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0O:Lcom/airbnb/lottie/o00Oo0/OooO0O0;

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooO0o()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->invalidateSelf()V

    return-void
.end method

.method public OooO0OO(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO00o;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public OooO0Oo(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO00o;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public OooO0o(Lcom/airbnb/lottie/model/OooO0o0;Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0o;)V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/Oooo0;

    invoke-direct {v0, p0, p3}, Lcom/airbnb/lottie/Oooo0;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/o00ooo/OooOO0o;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/airbnb/lottie/o000oOoO;->OooO0o0(Lcom/airbnb/lottie/model/OooO0o0;Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    return-void
.end method

.method public OooO0o0(Lcom/airbnb/lottie/model/OooO0o0;Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/Oooo00o;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/Oooo00o;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/OooO0o0;Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooO0o0;->OooO0Oo()Lcom/airbnb/lottie/model/OooO0o;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooO0o0;->OooO0Oo()Lcom/airbnb/lottie/model/OooO0o;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/airbnb/lottie/model/OooO0o;->OooO0oO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o000oOoO(Lcom/airbnb/lottie/model/OooO0o0;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/OooO0o0;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/OooO0o0;->OooO0Oo()Lcom/airbnb/lottie/model/OooO0o;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/airbnb/lottie/model/OooO0o;->OooO0oO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v1, p1

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->invalidateSelf()V

    sget-object p1, Lcom/airbnb/lottie/OoooOoo;->OooOoOO:Ljava/lang/Float;

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOoo0()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o00o0O(F)V

    :cond_3
    return-void
.end method

.method public OooO0oo()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->cancel()V

    return-void
.end method

.method public OooOO0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo0O:Z

    return-void
.end method

.method public OooOOO(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo0:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const-string p0, "Merge paths are not supported pre-Kit Kat."

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0Oo;->OooO0o0(Ljava/lang/String;)V

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo0:Z

    iget-object p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/airbnb/lottie/o000oOoO;->OooO0oO()V

    :cond_2
    return-void
.end method

.method public OooOOOO()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo0:Z

    return p0
.end method

.method public OooOOOo()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooO0oO()V

    return-void
.end method

.method public OooOOo0()Lcom/airbnb/lottie/OooOOOO;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    return-object p0
.end method

.method public OooOo()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOO0O()F

    move-result p0

    return p0
.end method

.method public OooOo0(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOo0O()Lcom/airbnb/lottie/o00Oo0/OooO0O0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00Oo0/OooO0O0;->OooO00o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public OooOo00()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooO()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public OooOo0o()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0o:Ljava/lang/String;

    return-object p0
.end method

.method public OooOoO()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOO0o()F

    move-result p0

    return p0
.end method

.method public OooOoOO()Lcom/airbnb/lottie/OoooooO;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/OooOOOO;->OooOOO()Lcom/airbnb/lottie/OoooooO;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public OooOoo()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public OooOoo0()F
    .locals 0
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooO0oo()F

    move-result p0

    return p0
.end method

.method public OooOooO()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public OooOooo()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0Oo:F

    return p0
.end method

.method public Oooo()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOOOO()V

    return-void
.end method

.method public Oooo0()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Oooo000()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOOO0()F

    move-result p0

    return p0
.end method

.method public Oooo00O()Lcom/airbnb/lottie/ooOO;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOOo:Lcom/airbnb/lottie/ooOO;

    return-object p0
.end method

.method public Oooo00o(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOOoo()Lcom/airbnb/lottie/o00Oo0/OooO00o;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00Oo0/OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public Oooo0O0()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0o0;->Oooo0O0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Oooo0OO()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->isRunning()Z

    move-result p0

    return p0
.end method

.method public Oooo0o()Z
    .locals 1

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Oooo0o0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo0:Z

    return p0
.end method

.method public Oooo0oO()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo0:Z

    return p0
.end method

.method public Oooo0oo(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public OoooO(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO00o;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public OoooO0()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO00o;->removeAllListeners()V

    return-void
.end method

.method public OoooO00()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/Oooo0OO;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/Oooo0OO;-><init>(Lcom/airbnb/lottie/o000oOoO;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0o0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOoo()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOOOo()V

    :cond_2
    iget-boolean v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0o0:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->Oooo000()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOoO()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOo()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/o000oOoO;->Ooooo00(I)V

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooO0oO()V

    :cond_4
    return-void
.end method

.method public OoooO0O()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00o0O/OooO00o;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/o00o0O/OooO00o;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public OoooOO0(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO00o;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public OoooOOO()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/Oooo0o0;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/Oooo0o0;-><init>(Lcom/airbnb/lottie/o000oOoO;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0o0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOoo()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOo00()V

    :cond_2
    iget-boolean v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0o0:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->Oooo000()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOoO()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOo()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/o000oOoO;->Ooooo00(I)V

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooO0oO()V

    :cond_4
    return-void
.end method

.method public OoooOOo()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOo0()V

    return-void
.end method

.method public OoooOo0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo0:Z

    return-void
.end method

.method public OoooOoO(Lcom/airbnb/lottie/OooOOOO;)Z
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo0o:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooO()V

    iput-object p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-direct {p0}, Lcom/airbnb/lottie/o000oOoO;->OooO0oO()V

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOo0O(Lcom/airbnb/lottie/OooOOOO;)V

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/o000oOoO;->o00o0O(F)V

    iget v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0Oo:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/o000oOoO;->o00oO0O(F)V

    invoke-direct {p0}, Lcom/airbnb/lottie/o000oOoO;->o0OO00O()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/OoooO;

    invoke-interface {v1, p1}, Lcom/airbnb/lottie/OoooO;->OooO00o(Lcom/airbnb/lottie/OooOOOO;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo00:Z

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/OooOOOO;->OooOo(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public OoooOoo(Lcom/airbnb/lottie/OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOOO:Lcom/airbnb/lottie/OooO0OO;

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOO:Lcom/airbnb/lottie/o00Oo0/OooO00o;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00Oo0/OooO00o;->OooO0Oo(Lcom/airbnb/lottie/OooO0OO;)V

    :cond_0
    return-void
.end method

.method public Ooooo00(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/Oooo000;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/Oooo000;-><init>(Lcom/airbnb/lottie/o000oOoO;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOo0o(F)V

    return-void
.end method

.method public Ooooo0o(Lcom/airbnb/lottie/OooO0Oo;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOO0:Lcom/airbnb/lottie/OooO0Oo;

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0O:Lcom/airbnb/lottie/o00Oo0/OooO0O0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00Oo0/OooO0O0;->OooO0Oo(Lcom/airbnb/lottie/OooO0Oo;)V

    :cond_0
    return-void
.end method

.method public OooooO0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0o:Ljava/lang/String;

    return-void
.end method

.method public OooooOO(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/Oooo0oo;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/Oooo0oo;-><init>(Lcom/airbnb/lottie/o000oOoO;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOo(F)V

    return-void
.end method

.method public OooooOo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/OoooO0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/OoooO0;-><init>(Lcom/airbnb/lottie/o000oOoO;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/OooOOOO;->OooOO0O(Ljava/lang/String;)Lcom/airbnb/lottie/model/OooO0oo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/airbnb/lottie/model/OooO0oo;->OooO0O0:F

    iget v0, v0, Lcom/airbnb/lottie/model/OooO0oo;->OooO0OO:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooooOO(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Oooooo(II)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/OooOooO;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/OooOooO;-><init>(Lcom/airbnb/lottie/o000oOoO;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOoO0(FF)V

    return-void
.end method

.method public Oooooo0(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/Oooo;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/Oooo;-><init>(Lcom/airbnb/lottie/o000oOoO;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/OooOOOO;->OooOOOo()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/OooOOOO;->OooO0o()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooooOO(I)V

    return-void
.end method

.method public OoooooO(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/OooOoo0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/OooOoo0;-><init>(Lcom/airbnb/lottie/o000oOoO;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/OooOOOO;->OooOO0O(Ljava/lang/String;)Lcom/airbnb/lottie/model/OooO0oo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/airbnb/lottie/model/OooO0oo;->OooO0O0:F

    float-to-int p1, p1

    iget v0, v0, Lcom/airbnb/lottie/model/OooO0oo;->OooO0OO:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/o000oOoO;->Oooooo(II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Ooooooo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/OooOoo;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/OooOoo;-><init>(Lcom/airbnb/lottie/o000oOoO;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/OooOOOO;->OooOO0O(Ljava/lang/String;)Lcom/airbnb/lottie/model/OooO0oo;

    move-result-object v0

    const-string v1, "."

    const-string v2, "Cannot find marker with name "

    if-eqz v0, :cond_3

    iget p1, v0, Lcom/airbnb/lottie/model/OooO0oo;->OooO0O0:F

    float-to-int p1, p1

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/OooOOOO;->OooOO0O(Ljava/lang/String;)Lcom/airbnb/lottie/model/OooO0oo;

    move-result-object v0

    if-eqz p2, :cond_2

    iget p2, v0, Lcom/airbnb/lottie/model/OooO0oo;->OooO0O0:F

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o000oOoO;->Oooooo(II)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo0o:Z

    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0o:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooOO0O(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Lottie crashed in draw!"

    invoke-static {p1, p0}, Lcom/airbnb/lottie/o00o0O/OooO0Oo;->OooO0OO(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooOO0O(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOoo:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/OooOOOO;->OooO0O0()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOooo()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/OooOOOO;->OooO0O0()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOooo()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo0o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo0o:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->Oooo0OO()Z

    move-result p0

    return p0
.end method

.method public o000oOoO(Lcom/airbnb/lottie/model/OooO0o0;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    if-nez v0, :cond_0

    const-string p0, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0Oo;->OooO0o0(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0o0;

    new-instance v1, Lcom/airbnb/lottie/model/OooO0o0;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/airbnb/lottie/model/OooO0o0;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;)V

    return-object v0
.end method

.method public o00O0O(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/OoooO00;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/OoooO00;-><init>(Lcom/airbnb/lottie/o000oOoO;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/OooOOOO;->OooOO0O(Ljava/lang/String;)Lcom/airbnb/lottie/model/OooO0oo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/airbnb/lottie/model/OooO0oo;->OooO0O0:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->ooOO(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o00Oo0(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/Oooo0oO;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/Oooo0oO;-><init>(Lcom/airbnb/lottie/o000oOoO;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/OooOOOO;->OooOOOo()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/OooOOOO;->OooO0o()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->ooOO(I)V

    return-void
.end method

.method public o00Ooo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOo00:Z

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/OooOOOO;->OooOo(Z)V

    :cond_0
    return-void
.end method

.method public o00o0O(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/Oooo00O;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/Oooo00O;-><init>(Lcom/airbnb/lottie/o000oOoO;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    iget-object v2, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/OooOOOO;->OooOOOo()F

    move-result v2

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/OooOOOO;->OooO0o()F

    move-result p0

    invoke-static {v2, p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0(FFF)F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOo0o(F)V

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public o00oO0O(F)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0Oo:F

    invoke-direct {p0}, Lcom/airbnb/lottie/o000oOoO;->o0OO00O()V

    return-void
.end method

.method public o00oO0o(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0o:Z

    return-void
.end method

.method public o00ooo(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public o0OOO0o(Lcom/airbnb/lottie/ooOO;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOOo:Lcom/airbnb/lottie/ooOO;

    return-void
.end method

.method public o0Oo0oo(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOo0O()Lcom/airbnb/lottie/o00Oo0/OooO0O0;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0Oo;->OooO0o0(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/o00Oo0/OooO0O0;->OooO0o0(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->invalidateSelf()V

    return-object p1
.end method

.method public o0OoOo0(FF)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/OooOooo;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/OooOooo;-><init>(Lcom/airbnb/lottie/o000oOoO;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/OooOOOO;->OooOOOo()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/OooOOOO;->OooO0o()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/OooOOOO;->OooOOOo()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/OooOOOO;->OooO0o()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/o00o0O/OooO0oO;->OooOO0(FFF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o000oOoO;->Oooooo(II)V

    return-void
.end method

.method o0ooOO0(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOO0:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public o0ooOOo(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOoOO(F)V

    return-void
.end method

.method o0ooOoO(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0o0:Z

    return-void
.end method

.method public oo000o(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->setRepeatMode(I)V

    return-void
.end method

.method public oo0o0Oo()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOOo:Lcom/airbnb/lottie/ooOO;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/OooOOOO;->OooO0OO()Landroidx/collection/SparseArrayCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ooOO(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0O0:Lcom/airbnb/lottie/OooOOOO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/Oooo0o;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/Oooo0o;-><init>(Lcom/airbnb/lottie/o000oOoO;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/o000oOoO;->OooO0OO:Lcom/airbnb/lottie/o00o0O/OooO0o0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o00o0O/OooO0o0;->OooOoO(I)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iput p1, p0, Lcom/airbnb/lottie/o000oOoO;->OooOOoo:I

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p0, "Use addColorFilter instead."

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0Oo;->OooO0o0(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OoooO00()V

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOOOo()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
