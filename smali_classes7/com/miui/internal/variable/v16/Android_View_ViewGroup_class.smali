.class public Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;
.super Lcom/miui/internal/variable/Android_View_ViewGroup_class;
.source ""


# static fields
.field protected static final DESCENDANT_FOCUSABILITY_FLAGS:[I

.field protected static final R_styleable_ViewGroup:[I

.field protected static final R_styleable_ViewGroup_addStatesFromChildren:I

.field protected static final R_styleable_ViewGroup_alwaysDrawnWithCache:I

.field protected static final R_styleable_ViewGroup_animateLayoutChanges:I

.field protected static final R_styleable_ViewGroup_animationCache:I

.field protected static final R_styleable_ViewGroup_clipChildren:I

.field protected static final R_styleable_ViewGroup_clipToPadding:I

.field protected static final R_styleable_ViewGroup_descendantFocusability:I

.field protected static final R_styleable_ViewGroup_layoutAnimation:I

.field protected static final R_styleable_ViewGroup_persistentDrawingCache:I

.field protected static final R_styleable_ViewGroup_splitMotionEvents:I

.field protected static final com_android_internal_R_styleable:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.android.internal.R$styleable"

    invoke-static {v0}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v1, "ViewGroup_clipChildren"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_clipChildren:I

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v3, "ViewGroup_clipToPadding"

    invoke-static {v0, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_clipToPadding:I

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v3, "ViewGroup_animationCache"

    invoke-static {v0, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_animationCache:I

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v3, "ViewGroup_persistentDrawingCache"

    invoke-static {v0, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_persistentDrawingCache:I

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v3, "ViewGroup_addStatesFromChildren"

    invoke-static {v0, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_addStatesFromChildren:I

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v3, "ViewGroup_alwaysDrawnWithCache"

    invoke-static {v0, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_alwaysDrawnWithCache:I

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v3, "ViewGroup_layoutAnimation"

    invoke-static {v0, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_layoutAnimation:I

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v3, "ViewGroup_animateLayoutChanges"

    invoke-static {v0, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_animateLayoutChanges:I

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v3, "ViewGroup_descendantFocusability"

    invoke-static {v0, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_descendantFocusability:I

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v3, "ViewGroup_splitMotionEvents"

    invoke-static {v0, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_splitMotionEvents:I

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v2, "ViewGroup"

    const-string v3, "[I"

    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup:[I

    const-class v0, Landroid/view/ViewGroup;

    const-string v2, "DESCENDANT_FOCUSABILITY_FLAGS"

    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;-><init>()V

    return-void
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected attachPrivateMethods()V
    .locals 2

    const-string v0, "initFromAttributes"

    const-string v1, "(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/util/ClassProxy;->attachConstructor(Ljava/lang/String;)J

    invoke-virtual {p0, v1}, Lcom/miui/internal/util/ClassProxy;->attachConstructor(Ljava/lang/String;)J

    return-void
.end method

.method public buildProxy()V
    .locals 2

    const-string v0, "addInArray"

    const-string v1, "(Landroid/view/View;I)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "removeFromArray"

    const-string v1, "(I)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v1, "(II)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "onChildVisibilityChanged"

    const-string v1, "(Landroid/view/View;II)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "resolveLayoutDirection"

    const-string v1, "()Z"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->attachPrivateMethods()V

    return-void
.end method

.method protected callOriginalAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->originalAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method protected callOriginalOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->originalOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V

    return-void
.end method

.method protected callOriginalRemoveFromArray(JLandroid/view/ViewGroup;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->originalRemoveFromArray(JLandroid/view/ViewGroup;I)V

    return-void
.end method

.method protected callOriginalRemoveFromArray(JLandroid/view/ViewGroup;II)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->originalRemoveFromArray(JLandroid/view/ViewGroup;II)V

    return-void
.end method

.method protected callOriginalResolveLayoutDirection(JLandroid/view/ViewGroup;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->originalResolveLayoutDirection(JLandroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method

.method protected callOriginal_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->original_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected handle()V
    .locals 10

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v7, v8, v9, v0}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleRemoveFromArray(JLandroid/view/ViewGroup;I)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleRemoveFromArray(JLandroid/view/ViewGroup;II)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V

    invoke-virtual {p0, v7, v8, v9}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleResolveLayoutDirection(JLandroid/view/ViewGroup;)Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleInitFromAttributes(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected handleAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->callOriginalAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V

    instance-of p0, p3, Landroid/widget/AbsListView;

    if-nez p0, :cond_0

    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method protected handleInitFromAttributes(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method protected handleOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->callOriginalOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V

    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected handleRemoveFromArray(JLandroid/view/ViewGroup;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->callOriginalRemoveFromArray(JLandroid/view/ViewGroup;I)V

    instance-of p0, p3, Landroid/widget/AbsListView;

    if-nez p0, :cond_0

    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method protected handleRemoveFromArray(JLandroid/view/ViewGroup;II)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->callOriginalRemoveFromArray(JLandroid/view/ViewGroup;II)V

    instance-of p0, p3, Landroid/widget/AbsListView;

    if-nez p0, :cond_0

    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method protected handleResolveLayoutDirection(JLandroid/view/ViewGroup;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->callOriginalResolveLayoutDirection(JLandroid/view/ViewGroup;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    if-eq v0, p1, :cond_0

    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    :cond_0
    return p0
.end method

.method protected handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->callOriginal_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->initFromAttributes(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected initFromAttributes(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup:[I

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-virtual {p0, p1, v1, p4, p2}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->processAttribute(Landroid/view/ViewGroup;ILandroid/content/res/TypedArray;Landroid/content/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1, p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->initTagChildSequenceState(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected originalAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalAddInArray(long, ViewGroup, View, int)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected originalInitFromAttributes(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalInitFromAttributes(long, ViewGroup, Context, AttributeSet)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected originalOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalOnChildVisibilityChanged(long, ViewGroup, View, int, int)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected originalRemoveFromArray(JLandroid/view/ViewGroup;I)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalRemoveFromArray(long, ViewGroup, int)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected originalRemoveFromArray(JLandroid/view/ViewGroup;II)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalRemoveFromArray(long, ViewGroup, int, int)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected originalResolveLayoutDirection(JLandroid/view/ViewGroup;)Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalResolveLayoutDirection(long, ViewGroup)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected original_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.original_init_(long, ViewGroup, Context, AttributeSet)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected original_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.original_init_(long, ViewGroup, Context, AttributeSet, int)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected processAttribute(Landroid/view/ViewGroup;ILandroid/content/res/TypedArray;Landroid/content/Context;)V
    .locals 2

    sget p0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_clipChildren:I

    const/4 v0, 0x1

    if-ne p2, p0, :cond_0

    invoke-virtual {p3, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto/16 :goto_0

    :cond_0
    sget p0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_clipToPadding:I

    if-ne p2, p0, :cond_1

    invoke-virtual {p3, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto/16 :goto_0

    :cond_1
    sget p0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_animationCache:I

    if-ne p2, p0, :cond_2

    invoke-virtual {p3, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_0

    :cond_2
    sget p0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_persistentDrawingCache:I

    if-ne p2, p0, :cond_3

    const/4 p0, 0x2

    invoke-virtual {p3, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_0

    :cond_3
    sget p0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_addStatesFromChildren:I

    const/4 v1, 0x0

    if-ne p2, p0, :cond_4

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_0

    :cond_4
    sget p0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_alwaysDrawnWithCache:I

    if-ne p2, p0, :cond_5

    invoke-virtual {p3, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_0

    :cond_5
    sget p0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_layoutAnimation:I

    if-ne p2, p0, :cond_6

    const/4 p0, -0x1

    invoke-virtual {p3, p2, p0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    if-lez p0, :cond_9

    invoke-static {p4, p0}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0

    :cond_6
    sget p0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_descendantFocusability:I

    if-ne p2, p0, :cond_7

    sget-object p0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    aget p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_0

    :cond_7
    sget p0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_splitMotionEvents:I

    if-ne p2, p0, :cond_8

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_0

    :cond_8
    sget p0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_animateLayoutChanges:I

    if-ne p2, p0, :cond_9

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Landroid/animation/LayoutTransition;

    invoke-direct {p0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_9
    :goto_0
    return-void
.end method
