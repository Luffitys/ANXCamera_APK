.class public Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;
.super Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# static fields
.field private static final mDropDownHorizontalOffset:Lmiui/reflect/Field;

.field private static final mPopup:Lmiui/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

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
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .locals 2

    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/util/ClassProxy;->attachConstructor(Ljava/lang/String;)J

    const-string v0, "show"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalShow(JLandroid/widget/ListPopupWindow;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;->show(Landroid/widget/ListPopupWindow;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->originalShow(JLandroid/widget/ListPopupWindow;)V

    return-void
.end method

.method protected callOriginal_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected handle()V
    .locals 8

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
    .locals 4

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mDropDownHorizontalOffset:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    sget-object v3, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mDropDownHorizontalOffset:Lmiui/reflect/Field;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {v3, p3, v1}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->callOriginalShow(JLandroid/widget/ListPopupWindow;)V

    if-eqz v2, :cond_1

    sget-object p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mDropDownHorizontalOffset:Lmiui/reflect/Field;

    invoke-virtual {p0, p3, v0}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method protected handle_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    move-object v0, p4

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_1

    sget v1, Lmiui/R$attr;->windowActionBar:I

    invoke-static {p4, v1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    if-ltz v1, :cond_1

    sget v1, Lcom/miui/internal/R$attr;->hidePopupArrow:I

    const/4 v2, 0x0

    invoke-static {p4, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->callOriginal_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    :try_start_0
    new-instance v1, Lmiui/widget/ArrowPopupWindow;

    move-object v2, p5

    move v3, p6

    move/from16 v4, p7

    invoke-direct {v1, p4, p5, p6, v4}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    move-object v5, p0

    move-object v6, p3

    invoke-virtual {p0, p3, v1}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->setPopupWindow(Landroid/widget/ListPopupWindow;Landroid/widget/PopupWindow;)V
    :try_end_0
    .catch Lmiui/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "ListPopupWindow constructor"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    move-object v5, p0

    move-object v6, p3

    move-object v2, p5

    move v3, p6

    move/from16 v4, p7

    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->callOriginal_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalShow(JLandroid/widget/ListPopupWindow;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.originalShow(long, ListPopupWindow)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.original_init_(long, ListPopupWindow, Context, AttributeSet, int, int)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPopupWindow(Landroid/widget/ListPopupWindow;Landroid/widget/PopupWindow;)V
    .locals 0

    sget-object p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->mPopup:Lmiui/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
