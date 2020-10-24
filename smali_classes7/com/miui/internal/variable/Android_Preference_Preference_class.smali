.class public abstract Lcom/miui/internal/variable/Android_Preference_Preference_class;
.super Lcom/miui/internal/util/ClassProxy;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# static fields
.field protected static final mCanRecycleLayout:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/preference/Preference;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    const-string v1, "mCanRecycleLayout"

    goto :goto_0

    :cond_0
    const-string v1, "mRecycleEnabled"

    :goto_0
    const-string v2, "Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Android_Preference_Preference_class;->mCanRecycleLayout:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->clickPreferenceScreen(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private clickPreferenceScreen(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z
    .locals 9

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    const/4 v8, 0x1

    if-ne v4, p2, :cond_2

    move-object v5, p3

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    instance-of v6, v5, Landroid/widget/ListView;

    if-eqz v6, :cond_1

    move-object v0, v5

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int v5, v3, v1

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v8

    :cond_1
    check-cast v5, Landroid/view/View;

    goto :goto_1

    :cond_2
    instance-of v5, v4, Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    check-cast v4, Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4, p2, p3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->clickPreferenceScreen(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private onBindViewForCheckBoxPreference(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V
    .locals 2

    const v0, 0x1020001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_0

    check-cast v0, Lmiui/widget/SlidingButton;

    new-instance v1, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;-><init>(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/view/View;Landroid/preference/CheckBoxPreference;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method private setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;)V
    .locals 1

    invoke-virtual {p2}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;Z)V

    return-void
.end method

.method private setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;Landroid/preference/PreferenceGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object p3

    if-ne p2, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;Z)V

    return-void
.end method

.method private setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;Z)V
    .locals 0

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p3, :cond_0

    sget p2, Lcom/miui/internal/R$attr;->preferenceCategoryFirstNoTitleBackground:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/miui/internal/R$attr;->preferenceCategoryNoTitleBackground:I

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p3, :cond_2

    sget p2, Lcom/miui/internal/R$attr;->preferenceCategoryFirstBackground:I

    goto :goto_0

    :cond_2
    sget p2, Lcom/miui/internal/R$attr;->preferenceCategoryBackground:I

    :goto_0
    invoke-static {p0, p2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/util/ClassProxy;->attachConstructor(Ljava/lang/String;)J

    const-string v0, "onBindView"

    const-string v1, "(Landroid/view/View;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->originalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    return-void
.end method

.method protected callOriginal_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->original_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected abstract getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;
.end method

.method protected handle()V
    .locals 7

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->handle_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->handleOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    return-void
.end method

.method protected handleOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    instance-of v1, p3, Landroid/preference/PreferenceCategory;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getParent"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :catch_0
    if-eqz v1, :cond_0

    invoke-direct {p0, p4, p3, v1}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;Landroid/preference/PreferenceGroup;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4, p3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;)V

    :goto_0
    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/miui/internal/R$attr;->preferenceBackground:I

    invoke-static {v1, v3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p4}, Lcom/miui/internal/widget/Android_Preference_Preference_class_helper;->setPreferenceTouchAnim(Landroid/view/View;)V

    :cond_2
    :goto_1
    instance-of v1, p3, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    move-object v1, p3

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->onBindViewForCheckBoxPreference(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V

    :cond_3
    sget v1, Lcom/miui/internal/R$id;->arrow_right:I

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->preference_horizontal_extra_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_6
    instance-of v2, p3, Lmiui/preference/RadioButtonPreference;

    if-eqz v2, :cond_7

    invoke-virtual {p3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$dimen;->preference_item_padding_side_zero:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_7
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p4, v2, v0, v1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->callOriginalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    return-void
.end method

.method protected handle_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->callOriginal_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p0, Lcom/miui/internal/variable/Android_Preference_Preference_class;->mCanRecycleLayout:Lmiui/reflect/Field;

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected originalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.Android_Preference_Preference_class.originalOnBindView(long, Preference, View)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected original_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.Android_Preference_Preference_class.original_init_(long, View, Context, AttributeSet, int)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
