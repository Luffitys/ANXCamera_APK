.class public abstract Lcom/miui/internal/variable/Android_Preference_Preference_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_Preference_Preference_class.java"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/preference/Preference;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field protected static final mCanRecycleLayout:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/preference/Preference;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_b

    const-string v1, "mCanRecycleLayout"

    goto :goto_d

    :cond_b
    const-string v1, "mRecycleEnabled"

    :goto_d
    const-string v2, "Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Android_Preference_Preference_class;->mCanRecycleLayout:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->clickPreferenceScreen(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private clickPreferenceScreen(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z
    .registers 18

    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    const/4 v2, 0x0

    move v9, v2

    :goto_c
    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v9, v2, :cond_5b

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/preference/Preference;

    const/4 v11, 0x1

    if-ne v10, v0, :cond_44

    move-object/from16 v2, p3

    move-object v12, v2

    :goto_1f
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v13, v2

    if-eqz v2, :cond_44

    instance-of v2, v13, Landroid/widget/ListView;

    if-eqz v2, :cond_40

    move-object v1, v13

    check-cast v1, Landroid/widget/ListView;

    nop

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int v5, v9, v2

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    move-object v2, p1

    move-object v3, v1

    move-object/from16 v4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v11

    :cond_40
    move-object v12, v13

    check-cast v12, Landroid/view/View;

    goto :goto_1f

    :cond_44
    instance-of v2, v10, Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_55

    move-object v2, v10

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object v3, p0

    move-object/from16 v4, p3

    invoke-direct {p0, v2, v0, v4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->clickPreferenceScreen(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_58

    return v11

    :cond_55
    move-object v3, p0

    move-object/from16 v4, p3

    :cond_58
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_5b
    move-object v3, p0

    move-object/from16 v4, p3

    return v1
.end method

.method private onBindViewForCheckBoxPreference(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V
    .registers 6

    const v0, 0x1020001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    instance-of v1, v0, Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_18

    move-object v1, v0

    check-cast v1, Lmiui/widget/SlidingButton;

    new-instance v2, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;-><init>(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/view/View;Landroid/preference/CheckBoxPreference;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_18
    return-void
.end method

.method private setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;)V
    .registers 5

    invoke-virtual {p2}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-direct {p0, p1, p2, v1}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;Z)V

    return-void
.end method

.method private setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;Landroid/preference/PreferenceGroup;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;Z)V

    return-void
.end method

.method private setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;Z)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    if-eqz p3, :cond_18

    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$attr;->preferenceCategoryFirstNoTitleBackground:I

    invoke-static {v1, v2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3a

    :cond_18
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$attr;->preferenceCategoryNoTitleBackground:I

    invoke-static {v1, v2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3a

    :cond_23
    if-eqz p3, :cond_30

    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$attr;->preferenceCategoryFirstBackground:I

    invoke-static {v1, v2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3a

    :cond_30
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$attr;->preferenceCategoryBackground:I

    invoke-static {v1, v2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .registers 3

    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->attachConstructor(Ljava/lang/String;)J

    const-string v0, "onBindView"

    const-string v1, "(Landroid/view/View;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->originalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    return-void
.end method

.method protected callOriginal_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->original_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected abstract getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;
.end method

.method protected handle()V
    .registers 8

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
    .registers 14

    move-object v0, p3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    instance-of v2, v0, Landroid/preference/PreferenceCategory;

    const/4 v3, 0x0

    if-eqz v2, :cond_53

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_33

    const/4 v2, 0x0

    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getParent"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_28

    move-object v2, v5

    goto :goto_29

    :catch_28
    move-exception v4

    :goto_29
    if-eqz v2, :cond_2f

    invoke-direct {p0, p4, v0, v2}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;Landroid/preference/PreferenceGroup;)V

    goto :goto_32

    :cond_2f
    invoke-direct {p0, p4, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;)V

    :goto_32
    goto :goto_36

    :cond_33
    invoke-direct {p0, p4, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->setBackgroundForView(Landroid/view/View;Landroid/preference/Preference;)V

    :goto_36
    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_63

    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p4}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v2, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_63

    :cond_53
    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/miui/internal/R$attr;->preferenceBackground:I

    invoke-static {v2, v4}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p4}, Lcom/miui/internal/widget/Android_Preference_Preference_class_helper;->setPreferenceTouchAnim(Landroid/view/View;)V

    :cond_63
    :goto_63
    instance-of v2, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6d

    move-object v2, v0

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v2, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->onBindViewForCheckBoxPreference(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V

    :cond_6d
    sget v2, Lcom/miui/internal/R$id;->arrow_right:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_81

    invoke-virtual {v0}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v4

    if-nez v4, :cond_7c

    goto :goto_7e

    :cond_7c
    const/16 v3, 0x8

    :goto_7e
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_81
    nop

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$dimen;->preference_horizontal_extra_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v4, :cond_9c

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_9c
    instance-of v5, v0, Lmiui/preference/RadioButtonPreference;

    if-eqz v5, :cond_b0

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/miui/internal/R$dimen;->preference_item_padding_side_zero:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    :cond_b0
    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v3

    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {p4, v5, v7, v6, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->callOriginalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    return-void
.end method

.method protected handle_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->callOriginal_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/miui/internal/variable/Android_Preference_Preference_class;->mCanRecycleLayout:Lmiui/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected originalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.Android_Preference_Preference_class.originalOnBindView(long, Preference, View)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.Android_Preference_Preference_class.original_init_(long, View, Context, AttributeSet, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
