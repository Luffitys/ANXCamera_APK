.class public Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;
.super Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;
.source "Android_Widget_PopupWindow_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;",
        ">;"
    }
.end annotation


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
    .registers 3

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
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class$1;-><init>(Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;)V

    return-void
.end method

.method protected callOriginalInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;->invokePopup(Landroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->callOriginalInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected handleInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->handleInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    sget-object v1, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mLayoutInsetDecorField:Lmiui/reflect/Field;

    invoke-virtual {v1, p3}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    sget-object v3, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mBackgroundViewField:Lmiui/reflect/Field;

    invoke-virtual {v3, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v0, :cond_47

    if-eqz v1, :cond_47

    if-eqz v3, :cond_47

    sget-object v4, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mDecorViewField:Lmiui/reflect/Field;

    invoke-virtual {v4, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    if-ne v0, v2, :cond_3e

    const/16 v2, 0x2000

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_47

    :cond_3e
    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, -0x2001

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_47
    :goto_47
    return-void
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method
