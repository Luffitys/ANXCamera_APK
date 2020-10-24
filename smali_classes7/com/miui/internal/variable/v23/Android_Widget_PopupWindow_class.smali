.class public Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;
.super Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# static fields
.field private static final SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I = 0x2000

.field private static final mBackgroundViewField:Lmiui/reflect/Field;

.field private static final mDecorViewField:Lmiui/reflect/Field;

.field private static final mLayoutInsetDecorField:Lmiui/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mBackgroundView"

    const-string v2, "Landroid/view/View;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mBackgroundViewField:Lmiui/reflect/Field;

    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mDecorView"

    const-string v2, "Landroid/widget/PopupWindow$PopupDecorView;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mDecorViewField:Lmiui/reflect/Field;

    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mLayoutInsetDecor"

    const-string v2, "Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mLayoutInsetDecorField:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class$1;-><init>(Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;)V

    return-void
.end method

.method protected callOriginalInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;->invokePopup(Landroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->callOriginalInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected handleInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->handleInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p0

    sget-object p1, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mLayoutInsetDecorField:Lmiui/reflect/Field;

    invoke-virtual {p1, p3}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1

    sget-object p4, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mBackgroundViewField:Lmiui/reflect/Field;

    invoke-virtual {p4, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    sget-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mDecorViewField:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    if-ne p0, p2, :cond_0

    const/16 p0, 0x2000

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/lit16 p0, p0, -0x2001

    :goto_0
    invoke-virtual {p4, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method
