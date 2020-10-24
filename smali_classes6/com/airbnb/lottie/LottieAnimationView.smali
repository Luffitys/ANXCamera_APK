.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# static fields
.field private static final OooOOo:Ljava/lang/String;

.field private static final OooOOoo:Lcom/airbnb/lottie/OoooOOo;


# instance fields
.field private OooO:Z

.field private final OooO00o:Lcom/airbnb/lottie/OoooOOo;

.field private final OooO0O0:Lcom/airbnb/lottie/OoooOOo;

.field private OooO0OO:Lcom/airbnb/lottie/OoooOOo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooO0Oo:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private OooO0o:Z

.field private final OooO0o0:Lcom/airbnb/lottie/o000oOoO;

.field private OooO0oO:Ljava/lang/String;

.field private OooO0oo:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private OooOO0:Z

.field private OooOO0O:Z

.field private OooOO0o:Z

.field private OooOOO:Ljava/util/Set;

.field private OooOOO0:Lcom/airbnb/lottie/RenderMode;

.field private OooOOOO:I

.field private OooOOOo:Lcom/airbnb/lottie/OooooOO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOo0:Lcom/airbnb/lottie/OooOOOO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo:Ljava/lang/String;

    new-instance v0, Lcom/airbnb/lottie/OooO0o;

    invoke-direct {v0}, Lcom/airbnb/lottie/OooO0o;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOoo:Lcom/airbnb/lottie/OoooOOo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/airbnb/lottie/OooO0oO;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/OooO0oO;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o:Lcom/airbnb/lottie/OoooOOo;

    new-instance p1, Lcom/airbnb/lottie/OooO0oo;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/OooO0oo;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0:Lcom/airbnb/lottie/OoooOOo;

    const/4 p1, 0x0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0Oo:I

    new-instance v0, Lcom/airbnb/lottie/o000oOoO;

    invoke-direct {v0}, Lcom/airbnb/lottie/o000oOoO;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    sget-object v0, Lcom/airbnb/lottie/RenderMode;->OooO00o:Lcom/airbnb/lottie/RenderMode;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO0:Lcom/airbnb/lottie/RenderMode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->OooOoo(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/airbnb/lottie/OooO0oO;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/OooO0oO;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o:Lcom/airbnb/lottie/OoooOOo;

    new-instance p1, Lcom/airbnb/lottie/OooO0oo;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/OooO0oo;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0:Lcom/airbnb/lottie/OoooOOo;

    const/4 p1, 0x0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0Oo:I

    new-instance v0, Lcom/airbnb/lottie/o000oOoO;

    invoke-direct {v0}, Lcom/airbnb/lottie/o000oOoO;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    sget-object v0, Lcom/airbnb/lottie/RenderMode;->OooO00o:Lcom/airbnb/lottie/RenderMode;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO0:Lcom/airbnb/lottie/RenderMode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->OooOoo(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/airbnb/lottie/OooO0oO;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/OooO0oO;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o:Lcom/airbnb/lottie/OoooOOo;

    new-instance p1, Lcom/airbnb/lottie/OooO0oo;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/OooO0oo;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0:Lcom/airbnb/lottie/OoooOOo;

    const/4 p1, 0x0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0Oo:I

    new-instance p3, Lcom/airbnb/lottie/o000oOoO;

    invoke-direct {p3}, Lcom/airbnb/lottie/o000oOoO;-><init>()V

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    sget-object p3, Lcom/airbnb/lottie/RenderMode;->OooO00o:Lcom/airbnb/lottie/RenderMode;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO0:Lcom/airbnb/lottie/RenderMode;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->OooOoo(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic OooO00o(Lcom/airbnb/lottie/LottieAnimationView;)I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0Oo:I

    return p0
.end method

.method static synthetic OooO0O0(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/lottie/OoooOOo;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0OO:Lcom/airbnb/lottie/OoooOOo;

    return-object p0
.end method

.method static synthetic OooO0OO()Lcom/airbnb/lottie/OoooOOo;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOoo:Lcom/airbnb/lottie/OoooOOo;

    return-object v0
.end method

.method private OooOO0()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOo:Lcom/airbnb/lottie/OooooOO;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o:Lcom/airbnb/lottie/OoooOOo;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/OooooOO;->OooOO0O(Lcom/airbnb/lottie/OoooOOo;)Lcom/airbnb/lottie/OooooOO;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOo:Lcom/airbnb/lottie/OooooOO;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0:Lcom/airbnb/lottie/OoooOOo;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/OooooOO;->OooOO0(Lcom/airbnb/lottie/OoooOOo;)Lcom/airbnb/lottie/OooooOO;

    :cond_0
    return-void
.end method

.method private OooOO0O()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:Lcom/airbnb/lottie/OooOOOO;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooO()V

    return-void
.end method

.method private OooOOO()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/airbnb/lottie/OooOO0;->OooO00o:[I

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO0:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:Lcom/airbnb/lottie/OooOOOO;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/airbnb/lottie/OooOOOO;->OooOOo()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:Lcom/airbnb/lottie/OooOOOO;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/airbnb/lottie/OooOOOO;->OooOOO0()I

    move-result v1

    const/4 v5, 0x4

    if-le v1, v5, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    if-eqz v4, :cond_0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayerType()I

    move-result v0

    if-eq v2, v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method private OooOoo(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_cacheComposition:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    sget v3, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    sget v4, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v0, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->OoooO0(I)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->OoooO(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->OoooOOO(Ljava/lang/String;)V

    :cond_4
    :goto_1
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fallbackRes:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->Ooooo0o(I)V

    :cond_5
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    :cond_6
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/o000oOoO;->o00ooo(I)V

    :cond_7
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->o0ooOO0(I)V

    :cond_8
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->o00oO0O(I)V

    :cond_9
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->o0OOO0o(F)V

    :cond_a
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->Oooooo0(Ljava/lang/String;)V

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO0(Z)V

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/airbnb/lottie/o0OoOo0;

    sget v5, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/airbnb/lottie/o0OoOo0;-><init>(I)V

    new-instance v5, Lcom/airbnb/lottie/model/OooO0o0;

    const-string v6, "**"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/model/OooO0o0;-><init>([Ljava/lang/String;)V

    new-instance v6, Lcom/airbnb/lottie/o00ooo/OooOO0;

    invoke-direct {v6, v0}, Lcom/airbnb/lottie/o00ooo/OooOO0;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lcom/airbnb/lottie/OoooOoo;->OooOoo:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v5, v0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO(Lcom/airbnb/lottie/model/OooO0o0;Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    :cond_b
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    sget v5, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/o000oOoO;->o00oO0O(F)V

    :cond_c
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    sget-object v3, Lcom/airbnb/lottie/RenderMode;->OooO00o:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_d

    sget-object v0, Lcom/airbnb/lottie/RenderMode;->OooO00o:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :cond_d
    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->o00oO0o(Lcom/airbnb/lottie/RenderMode;)V

    :cond_e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/o000oOoO;->o0ooOO0(Landroid/widget/ImageView$ScaleType;)V

    :cond_f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0o(Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_10

    move v2, v1

    :cond_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/o000oOoO;->o0ooOoO(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO()V

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o:Z

    return-void
.end method

.method private OoooOoo(Lcom/airbnb/lottie/OooooOO;)V
    .locals 1

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O()V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o:Lcom/airbnb/lottie/OoooOOo;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/OooooOO;->OooO0o(Lcom/airbnb/lottie/OoooOOo;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0:Lcom/airbnb/lottie/OoooOOo;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/OooooOO;->OooO0o0(Lcom/airbnb/lottie/OoooOOo;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOo:Lcom/airbnb/lottie/OooooOO;

    return-void
.end method


# virtual methods
.method public OooO()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o000oOoO;->OooO0oo()V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO()V

    return-void
.end method

.method public OooO0Oo(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooO0OO(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public OooO0o(Lcom/airbnb/lottie/OoooOoO;)Z
    .locals 1
    .param p1    # Lcom/airbnb/lottie/OoooOoO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:Lcom/airbnb/lottie/OooOOOO;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/airbnb/lottie/OoooOoO;->OooO00o(Lcom/airbnb/lottie/OooOOOO;)V

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public OooO0o0(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooO0Oo(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public OooO0oO(Lcom/airbnb/lottie/model/OooO0o0;Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/o000oOoO;->OooO0o0(Lcom/airbnb/lottie/model/OooO0o0;Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    return-void
.end method

.method public OooO0oo(Lcom/airbnb/lottie/model/OooO0o0;Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0o;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    new-instance v1, Lcom/airbnb/lottie/OooO;

    invoke-direct {v1, p0, p3}, Lcom/airbnb/lottie/OooO;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/o00ooo/OooOO0o;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/airbnb/lottie/o000oOoO;->OooO0o0(Lcom/airbnb/lottie/model/OooO0o0;Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V

    return-void
.end method

.method public OooOO0o()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOO0()V

    return-void
.end method

.method public OooOOO0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooOOO(Z)V

    return-void
.end method

.method public OooOOOO()Lcom/airbnb/lottie/OooOOOO;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:Lcom/airbnb/lottie/OooOOOO;

    return-object p0
.end method

.method public OooOOOo()J
    .locals 2

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:Lcom/airbnb/lottie/OooOOOO;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/OooOOOO;->OooO0Oo()F

    move-result p0

    float-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public OooOOo()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOo0o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooOOo0()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOo00()I

    move-result p0

    return p0
.end method

.method public OooOOoo()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOo()F

    move-result p0

    return p0
.end method

.method public OooOo()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOooO()I

    move-result p0

    return p0
.end method

.method public OooOo0()Lcom/airbnb/lottie/OoooooO;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOoOO()Lcom/airbnb/lottie/OoooooO;

    move-result-object p0

    return-object p0
.end method

.method public OooOo00()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOoO()F

    move-result p0

    return p0
.end method

.method public OooOo0O()F
    .locals 0
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOoo0()F

    move-result p0

    return p0
.end method

.method public OooOo0o()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOoo()I

    move-result p0

    return p0
.end method

.method public OooOoO()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->Oooo000()F

    move-result p0

    return p0
.end method

.method public OooOoO0()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOooo()F

    move-result p0

    return p0
.end method

.method public OooOoOO()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->Oooo0()Z

    move-result p0

    return p0
.end method

.method public OooOoo0()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->Oooo0O0()Z

    move-result p0

    return p0
.end method

.method public OooOooO()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->Oooo0OO()Z

    move-result p0

    return p0
.end method

.method public OooOooo()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->Oooo0oO()Z

    move-result p0

    return p0
.end method

.method public Oooo()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o000oOoO;->OoooOOO()V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    :goto_0
    return-void
.end method

.method public Oooo0()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OoooO0()V

    return-void
.end method

.method public Oooo000(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o00ooo(I)V

    return-void
.end method

.method public Oooo00O()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o000oOoO;->Oooo()V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO()V

    return-void
.end method

.method public Oooo00o()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o000oOoO;->OoooO00()V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    :goto_0
    return-void
.end method

.method public Oooo0O0()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public Oooo0OO()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OoooO0O()V

    return-void
.end method

.method public Oooo0o(Lcom/airbnb/lottie/OoooOoO;)Z
    .locals 0
    .param p1    # Lcom/airbnb/lottie/OoooOoO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public Oooo0o0(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OoooO(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public Oooo0oO(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OoooOO0(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public Oooo0oo(Lcom/airbnb/lottie/model/OooO0o0;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o000oOoO(Lcom/airbnb/lottie/model/OooO0o0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public OoooO(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo:I

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/OooOoOO;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/OooOoOO;->OooO0o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->OoooOoo(Lcom/airbnb/lottie/OooooOO;)V

    return-void
.end method

.method public OoooO0(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/OooOoOO;->OooOOo(Landroid/content/Context;I)Lcom/airbnb/lottie/OooooOO;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooOOoo(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->OoooOoo(Lcom/airbnb/lottie/OooooOO;)V

    return-void
.end method

.method public OoooO00()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OoooOOo()V

    return-void
.end method

.method public OoooO0O(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/airbnb/lottie/OooOoOO;->OooO(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->OoooOoo(Lcom/airbnb/lottie/OooooOO;)V

    return-void
.end method

.method public OoooOO0(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->o000oOoO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OoooOOO(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/OooOoOO;->OooOo0O(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/OooOoOO;->OooOo0o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->OoooOoo(Lcom/airbnb/lottie/OooooOO;)V

    return-void
.end method

.method public OoooOOo(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OoooOo0(Z)V

    return-void
.end method

.method public OoooOo0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    return-void
.end method

.method public OoooOoO(Lcom/airbnb/lottie/OooOOOO;)V
    .locals 3
    .param p1    # Lcom/airbnb/lottie/OooOOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/airbnb/lottie/OooO0o0;->OooO00o:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Composition \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:Lcom/airbnb/lottie/OooOOOO;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o000oOoO;->OoooOoO(Lcom/airbnb/lottie/OooOOOO;)Z

    move-result v0

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/OoooOoO;

    invoke-interface {v0, p1}, Lcom/airbnb/lottie/OoooOoO;->OooO00o(Lcom/airbnb/lottie/OooOOOO;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Ooooo00(Lcom/airbnb/lottie/OoooOOo;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/OoooOOo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0OO:Lcom/airbnb/lottie/OoooOOo;

    return-void
.end method

.method public Ooooo0o(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0Oo:I

    return-void
.end method

.method public OooooO0(Lcom/airbnb/lottie/OooO0OO;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OoooOoo(Lcom/airbnb/lottie/OooO0OO;)V

    return-void
.end method

.method public OooooOO(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->Ooooo00(I)V

    return-void
.end method

.method public OooooOo(Lcom/airbnb/lottie/OooO0Oo;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->Ooooo0o(Lcom/airbnb/lottie/OooO0Oo;)V

    return-void
.end method

.method public Oooooo(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooooOO(I)V

    return-void
.end method

.method public Oooooo0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooooO0(Ljava/lang/String;)V

    return-void
.end method

.method public OoooooO(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OooooOo(Ljava/lang/String;)V

    return-void
.end method

.method public Ooooooo(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->Oooooo0(F)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 3

    const-string v0, "buildDrawingCache"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    invoke-super {p0, p1}, Landroid/widget/ImageView;->buildDrawingCache(Z)V

    iget v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayerType()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/airbnb/lottie/RenderMode;->OooO0O0:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->o00oO0o(Lcom/airbnb/lottie/RenderMode;)V

    :cond_0
    iget p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    if-ne v0, v1, :cond_0

    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public o000oOoO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->OoooO0O(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public o00O0O(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/o000oOoO;->Ooooooo(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public o00Oo0(FF)V
    .locals 0
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

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o000oOoO;->o0OoOo0(FF)V

    return-void
.end method

.method public o00Ooo(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->ooOO(I)V

    return-void
.end method

.method public o00o0O(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o00O0O(Ljava/lang/String;)V

    return-void
.end method

.method public o00oO0O(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o00ooo(I)V

    return-void
.end method

.method public o00oO0o(Lcom/airbnb/lottie/RenderMode;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO0:Lcom/airbnb/lottie/RenderMode;

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO()V

    return-void
.end method

.method public o00ooo(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o00Oo0(F)V

    return-void
.end method

.method public o0OO00O(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o000oOoO;->o0Oo0oo(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public o0OOO0o(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o0ooOOo(F)V

    return-void
.end method

.method public o0Oo0oo(Lcom/airbnb/lottie/ooOO;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o0OOO0o(Lcom/airbnb/lottie/ooOO;)V

    return-void
.end method

.method public o0OoOo0(II)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o000oOoO;->Oooooo(II)V

    return-void
.end method

.method public o0ooOO0(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->oo000o(I)V

    return-void
.end method

.method public o0ooOOo(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o00oO0o(Z)V

    return-void
.end method

.method public o0ooOoO(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o000oOoO;->o00oO0O(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->Oooo00o()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOooO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO00o:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->OoooO(Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0O0:I

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo:I

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->OoooO0(I)V

    :cond_2
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0OO:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0Oo:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->Oooo00o()V

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    iget-object v1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/o000oOoO;->OooooO0(Ljava/lang/String;)V

    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0o:I

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->o0ooOO0(I)V

    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0oO:I

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->o00oO0O(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO:Ljava/lang/String;

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO00o:Ljava/lang/String;

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo:I

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0O0:I

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o000oOoO;->OooOoo0()F

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0OO:F

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o000oOoO;->Oooo0OO()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0Oo:Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o000oOoO;->OooOo0o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0o0:Ljava/lang/String;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o000oOoO;->OooOooO()I

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0o:I

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->OooOoo()I

    move-result p0

    iput p0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->OooO0oO:I

    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->Oooo()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOooO()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->Oooo00O()V

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    :cond_2
    return-void
.end method

.method public oo000o(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o00Ooo(Z)V

    return-void
.end method

.method public ooOO(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->OoooooO(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o00o0O(F)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:Lcom/airbnb/lottie/o000oOoO;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/o000oOoO;->o0ooOO0(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method
