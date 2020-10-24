.class Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;
.super Landroid/view/LayoutInflater;
.source ""


# static fields
.field private static final FieldContext:Lmiui/reflect/Field;

.field private static final FieldTitle:Ljava/lang/reflect/Field;


# instance fields
.field private mDecorViewWindow:Landroid/view/Window;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "mContext"

    const-string v2, "Landroid/content/Context;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->FieldContext:Lmiui/reflect/Field;

    invoke-static {}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTitle"

    invoke-static {v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->access$100(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->FieldTitle:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V
    .locals 1

    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->FieldContext:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mDecorViewWindow:Landroid/view/Window;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/LayoutInflater;Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/miui/internal/R$dimen;->status_bar_height:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private initDefaultStartingWindow(Landroid/content/Context;Landroid/view/View;)V
    .locals 10

    sget-object v0, Lmiui/R$styleable;->ActionBar:[I

    const/4 v1, 0x0

    const v2, 0x10102ce

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v4, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    sget v5, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    sget v7, Lmiui/R$attr;->colorPrimary:I

    invoke-static {p1, v7}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v6, Lcom/miui/internal/R$id;->title_layout:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget v6, Lcom/miui/internal/R$id;->action_bar_title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/miui/internal/R$id;->up:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    and-int/lit8 v7, v5, 0x8

    const/4 v8, 0x4

    if-nez v7, :cond_1

    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_2

    and-int/lit8 v4, v5, 0x2

    if-nez v4, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {p2, v3, v4, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    const/16 v4, 0x11

    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_0
    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    and-int/lit8 p2, v5, 0x4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v2, :cond_4

    invoke-virtual {v6, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_4
    :try_start_0
    sget-object p1, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->FieldTitle:Ljava/lang/reflect/Field;

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mDecorViewWindow:Landroid/view/Window;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    :catch_0
    if-eqz v1, :cond_5

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private setStatusBarHeight(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    sget v0, Lmiui/R$id;->status_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    new-instance v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mDecorViewWindow:Landroid/view/Window;

    invoke-direct {v0, p1, p0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mDecorViewWindow:Landroid/view/Window;

    invoke-static {p1}, Lcom/miui/internal/app/ActivityDelegate;->getDecorViewLayoutRes(Landroid/view/Window;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/miui/internal/R$layout;->screen_action_bar:I

    if-eq p1, p3, :cond_1

    sget p3, Lcom/miui/internal/R$layout;->screen_action_bar_movable:I

    if-eq p1, p3, :cond_1

    sget p3, Lcom/miui/internal/R$layout;->screen_simple:I

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mDecorViewWindow:Landroid/view/Window;

    invoke-virtual {p3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->setStatusBarHeight(Landroid/content/Context;Landroid/view/View;)V

    sget v0, Lcom/miui/internal/R$layout;->starting_window_simple:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p3, p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->initDefaultStartingWindow(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-object p2
.end method
