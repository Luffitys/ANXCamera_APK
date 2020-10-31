.class Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;
.super Landroid/view/LayoutInflater;
.source "Internal_Policy_Impl_PhoneWindow_class.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutInflaterWrapper"
.end annotation


# static fields
.field private static final FieldContext:Lmiui/reflect/Field;

.field private static final FieldTitle:Ljava/lang/reflect/Field;


# instance fields
.field private mDecorViewWindow:Landroid/view/Window;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "mContext"

    const-string v2, "Landroid/content/Context;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->FieldContext:Lmiui/reflect/Field;

    # getter for: Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;
    invoke-static {}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTitle"

    # invokes: Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    invoke-static {v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->access$100(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->FieldTitle:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V
    .registers 4

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
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->status_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method private initDefaultStartingWindow(Landroid/content/Context;Landroid/view/View;)V
    .registers 15

    sget-object v0, Lmiui/R$styleable;->ActionBar:[I

    const/4 v1, 0x0

    const v2, 0x10102ce

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v2, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    sget v4, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v5, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_3e

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    sget v7, Lmiui/R$attr;->colorPrimary:I

    invoke-static {p1, v7}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3e
    sget v6, Lcom/miui/internal/R$id;->title_layout:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/miui/internal/R$id;->action_bar_title:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget v8, Lcom/miui/internal/R$id;->up:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    and-int/lit8 v9, v4, 0x8

    if-nez v9, :cond_60

    const/4 v3, 0x4

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_60
    nop

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_80

    and-int/lit8 v10, v4, 0x2

    if-nez v10, :cond_80

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v6, v3, v10, v3, v11}, Landroid/view/View;->setPadding(IIII)V

    const/16 v10, 0x11

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v9, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_87

    :cond_80
    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_87
    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    and-int/lit8 v10, v4, 0x4

    if-eqz v10, :cond_8f

    goto :goto_91

    :cond_8f
    const/16 v3, 0x8

    :goto_91
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_99

    invoke-virtual {v7, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_99
    const/4 v3, 0x0

    :try_start_9a
    sget-object v10, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->FieldTitle:Ljava/lang/reflect/Field;

    iget-object v11, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mDecorViewWindow:Landroid/view/Window;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;
    :try_end_a4
    .catch Ljava/lang/IllegalAccessException; {:try_start_9a .. :try_end_a4} :catch_a6

    move-object v3, v10

    goto :goto_a7

    :catch_a6
    move-exception v10

    :goto_a7
    if-eqz v3, :cond_ac

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ac
    return-void
.end method

.method private setStatusBarHeight(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    sget v0, Lmiui/R$id;->status_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;

    iget-object v2, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mDecorViewWindow:Landroid/view/Window;

    invoke-direct {v1, v0, v2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V

    return-object v1
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mDecorViewWindow:Landroid/view/Window;

    invoke-static {v0}, Lcom/miui/internal/app/ActivityDelegate;->getDecorViewLayoutRes(Landroid/view/Window;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$layout;->screen_action_bar:I

    if-eq v0, v2, :cond_2a

    sget v2, Lcom/miui/internal/R$layout;->screen_action_bar_movable:I

    if-eq v0, v2, :cond_2a

    sget v2, Lcom/miui/internal/R$layout;->screen_simple:I

    if-ne v0, v2, :cond_19

    goto :goto_2a

    :cond_19
    iget-object v2, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mDecorViewWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->setStatusBarHeight(Landroid/content/Context;Landroid/view/View;)V

    sget v3, Lcom/miui/internal/R$layout;->starting_window_simple:I

    if-ne v0, v3, :cond_29

    invoke-direct {p0, v2, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->initDefaultStartingWindow(Landroid/content/Context;Landroid/view/View;)V

    :cond_29
    return-object v1

    :cond_2a
    :goto_2a
    return-object v1
.end method
