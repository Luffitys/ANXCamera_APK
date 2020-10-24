.class public Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;
.super Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;
.source ""


# static fields
.field private static final EXTRA_FLAG_STATUS_BAR_DARK_MODE:I = 0x10

.field private static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field private static mExtraFlags:Lmiui/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    const-string v0, "invokePopup"

    const-string v1, "(Landroid/view/WindowManager$LayoutParams;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    :try_start_0
    const-class p0, Landroid/view/WindowManager$LayoutParams;

    const-string v0, "extraFlags"

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->mExtraFlags:Lmiui/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    sput-object p0, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->mExtraFlags:Lmiui/reflect/Field;

    :goto_0
    return-void
.end method

.method protected callOriginalInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->originalInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected handle()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->handleInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected handleInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    iget v0, p4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_1

    iget v0, p4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_1

    iget v0, p4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101020d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->mExtraFlags:Lmiui/reflect/Field;

    if-eqz v1, :cond_1

    iget v1, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v1, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->mExtraFlags:Lmiui/reflect/Field;

    invoke-virtual {v0, p4}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    sget-object v1, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->mExtraFlags:Lmiui/reflect/Field;

    invoke-virtual {v1, p4, v0}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->callOriginalInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected originalInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v21.Android_Widget_PopupWindow_class.originalInvokePopup(long, PopupWindow, WindowManager.LayoutParams)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
