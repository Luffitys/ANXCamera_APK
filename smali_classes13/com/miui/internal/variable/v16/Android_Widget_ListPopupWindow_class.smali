.class public Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;
.super Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;
.source "Android_Widget_ListPopupWindow_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final mDropDownHorizontalOffset:Lmiui/reflect/Field;

.field private static final mPopup:Lmiui/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/widget/ListPopupWindow;

    const-string v1, "mPopup"

    const-string v2, "Landroid/widget/PopupWindow;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mPopup:Lmiui/reflect/Field;

    const-class v0, Landroid/widget/ListPopupWindow;

    const-string v1, "mDropDownHorizontalOffset"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mDropDownHorizontalOffset:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .registers 3

    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->attachConstructor(Ljava/lang/String;)J

    const-string v0, "show"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalShow(JLandroid/widget/ListPopupWindow;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;->show(Landroid/widget/ListPopupWindow;)V

    return-void

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->originalShow(JLandroid/widget/ListPopupWindow;)V

    return-void
.end method

.method protected callOriginal_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected handle()V
    .registers 9

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->handle_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->handleShow(JLandroid/widget/ListPopupWindow;)V

    return-void
.end method

.method protected handleShow(JLandroid/widget/ListPopupWindow;)V
    .registers 9

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mDropDownHorizontalOffset:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1f

    if-eqz v2, :cond_1f

    instance-of v3, v2, Landroid/widget/Spinner;

    if-eqz v3, :cond_1f

    const/4 v1, 0x1

    sget-object v3, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mDropDownHorizontalOffset:Lmiui/reflect/Field;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v3, p3, v4}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V

    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->callOriginalShow(JLandroid/widget/ListPopupWindow;)V

    if-eqz v1, :cond_29

    sget-object v3, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mDropDownHorizontalOffset:Lmiui/reflect/Field;

    invoke-virtual {v3, p3, v0}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V

    :cond_29
    return-void
.end method

.method protected handle_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 18

    move-object v9, p4

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_54

    sget v0, Lmiui/R$attr;->windowActionBar:I

    invoke-static {p4, v0}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v0

    if-ltz v0, :cond_54

    sget v0, Lcom/miui/internal/R$attr;->hidePopupArrow:I

    const/4 v1, 0x0

    invoke-static {p4, v0, v1}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v4, p0

    move-object v5, p3

    move-object v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    goto :goto_5b

    :cond_1e
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->callOriginal_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    :try_start_28
    new-instance v0, Lmiui/widget/ArrowPopupWindow;
    :try_end_2a
    .catch Lmiui/reflect/ReflectionException; {:try_start_28 .. :try_end_2a} :catch_42

    move-object v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    :try_start_2f
    invoke-direct {v0, p4, p5, v2, v3}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V
    :try_end_36
    .catch Lmiui/reflect/ReflectionException; {:try_start_2f .. :try_end_36} :catch_3e

    move-object v4, p0

    move-object v5, p3

    :try_start_38
    invoke-virtual {p0, p3, v0}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->setPopupWindow(Landroid/widget/ListPopupWindow;Landroid/widget/PopupWindow;)V
    :try_end_3b
    .catch Lmiui/reflect/ReflectionException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_53

    :catch_3c
    move-exception v0

    goto :goto_4a

    :catch_3e
    move-exception v0

    move-object v4, p0

    move-object v5, p3

    goto :goto_4a

    :catch_42
    move-exception v0

    move-object v4, p0

    move-object v5, p3

    move-object v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    :goto_4a
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v6

    const-string v7, "ListPopupWindow constructor"

    invoke-virtual {v6, v7, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_53
    return-void

    :cond_54
    move-object v4, p0

    move-object v5, p3

    move-object v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    :goto_5b
    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->callOriginal_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalShow(JLandroid/widget/ListPopupWindow;)V
    .registers 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.originalShow(long, ListPopupWindow)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.original_init_(long, ListPopupWindow, Context, AttributeSet, int, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPopupWindow(Landroid/widget/ListPopupWindow;Landroid/widget/PopupWindow;)V
    .registers 4

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mPopup:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
