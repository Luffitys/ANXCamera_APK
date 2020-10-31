.class public Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;
.super Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;
.source "Android_View_ViewGroup_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;",
        ">;"
    }
.end annotation


# static fields
.field protected static R_styleable_ViewGroup_touchscreenBlocksFocus:I

.field protected static final R_styleable_ViewGroup_transitionGroup:I

.field protected static setTouchscreenBlocksFocus:Lmiui/reflect/Method;

.field protected static final setTransitionGroup:Lmiui/reflect/Method;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-object v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v1, "ViewGroup_transitionGroup"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->R_styleable_ViewGroup_transitionGroup:I

    const/4 v0, 0x0

    sput v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->R_styleable_ViewGroup_touchscreenBlocksFocus:I

    const-class v0, Landroid/view/ViewGroup;

    const-string v3, "setTransitionGroup"

    const-string v4, "(Z)V"

    invoke-static {v0, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->setTransitionGroup:Lmiui/reflect/Method;

    sput-object v1, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->setTouchscreenBlocksFocus:Lmiui/reflect/Method;

    :try_start_22
    sget-object v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v3, "ViewGroup_touchscreenBlocksFocus"

    invoke-static {v0, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->R_styleable_ViewGroup_touchscreenBlocksFocus:I

    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setTouchscreenBlocksFocus"

    invoke-static {v0, v1, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->setTouchscreenBlocksFocus:Lmiui/reflect/Method;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3a} :catch_3b

    goto :goto_3c

    :catch_3b
    move-exception v0

    :goto_3c
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class$1;-><init>(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handleAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handleRemoveFromArray(JLandroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;II)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handleRemoveFromArray(JLandroid/view/ViewGroup;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handleOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;JLandroid/view/ViewGroup;)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handleResolveLayoutDirection(JLandroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    move-result-object v0

    return-object v0
.end method

.method protected attachPrivateMethods()V
    .registers 3

    const-string v0, "initFromAttributes"

    const-string v1, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    invoke-virtual {p0, v1}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->attachConstructor(Ljava/lang/String;)J

    return-void
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->bind(Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;)V

    return-void
.end method

.method protected callOriginalAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3, p4, p5}, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;->addInArray(Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void

    :cond_8
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->callOriginalAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method protected callOriginalOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3, p4, p5, p6}, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;->onChildVisibilityChanged(Landroid/view/ViewGroup;Landroid/view/View;II)V

    return-void

    :cond_8
    invoke-super/range {p0 .. p6}, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->callOriginalOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V

    return-void
.end method

.method protected callOriginalRemoveFromArray(JLandroid/view/ViewGroup;I)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;->removeFromArray(Landroid/view/ViewGroup;I)V

    return-void

    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->callOriginalRemoveFromArray(JLandroid/view/ViewGroup;I)V

    return-void
.end method

.method protected callOriginalRemoveFromArray(JLandroid/view/ViewGroup;II)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3, p4, p5}, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;->removeFromArray(Landroid/view/ViewGroup;II)V

    return-void

    :cond_8
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->callOriginalRemoveFromArray(JLandroid/view/ViewGroup;II)V

    return-void
.end method

.method protected callOriginalResolveLayoutDirection(JLandroid/view/ViewGroup;)Z
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p3}, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;->resolveLayoutDirection(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0

    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->callOriginalResolveLayoutDirection(JLandroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method protected callOriginal_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super/range {p0 .. p6}, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->callOriginal_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected callOriginal_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;

    if-eqz v0, :cond_d

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;->init(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void

    :cond_d
    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->original_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected handle()V
    .registers 17

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->handleInitFromAttributes(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-super/range {p0 .. p0}, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->handle()V

    return-void
.end method

.method protected handleInitFromAttributes(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    return-void
.end method

.method protected handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->callOriginal_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->initFromAttributes(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalInitFromAttributes(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v21.Android_View_ViewGroup_class.originalInitFromAttributes(long, ViewGroup, Context, AttributeSet, int, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v21.Android_View_ViewGroup_class.original_init_(long, ViewGroup, Context, AttributeSet, int, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected processAttribute(Landroid/view/ViewGroup;ILandroid/content/res/TypedArray;Landroid/content/Context;)V
    .registers 11

    sget v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->R_styleable_ViewGroup_transitionGroup:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_19

    sget-object v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->setTransitionGroup:Lmiui/reflect/Method;

    const-class v3, Landroid/view/ViewGroup;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, p1, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_19
    sget v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->R_styleable_ViewGroup_touchscreenBlocksFocus:I

    if-ne p2, v0, :cond_31

    sget-object v0, Lcom/miui/internal/variable/v21/Android_View_ViewGroup_class;->setTouchscreenBlocksFocus:Lmiui/reflect/Method;

    const-class v3, Landroid/view/ViewGroup;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_34

    :cond_31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->processAttribute(Landroid/view/ViewGroup;ILandroid/content/res/TypedArray;Landroid/content/Context;)V

    :goto_34
    return-void
.end method
