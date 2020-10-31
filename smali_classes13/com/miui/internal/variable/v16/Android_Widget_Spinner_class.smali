.class public Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;
.super Lcom/miui/internal/variable/Android_Widget_Spinner_class;
.source "Android_Widget_Spinner_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/Android_Widget_Spinner_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final mPopup:Lmiui/reflect/Field;

.field private static final mPopupWindow:Lmiui/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/widget/Spinner;

    const-string v1, "mPopup"

    const-string v2, "Landroid/widget/Spinner$SpinnerPopup;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mPopup:Lmiui/reflect/Field;

    const-class v0, Landroid/widget/ListPopupWindow;

    const-string v2, "Landroid/widget/PopupWindow;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mPopupWindow:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->handleSetPrompt(JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;)V

    return-void
.end method

.method protected callOriginalSetPrompt(JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;->setPrompt(Landroid/widget/Spinner;Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;->callOriginalSetPrompt(JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getArrowPopupWindow(Landroid/widget/Spinner;)Lmiui/widget/ArrowPopupWindow;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mPopup:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mPopupWindow:Lmiui/reflect/Field;

    invoke-virtual {v1, v0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lmiui/widget/ArrowPopupWindow;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lmiui/widget/ArrowPopupWindow;
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_17} :catch_19

    return-object v2

    :cond_18
    goto :goto_23

    :catch_19
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "mPopup"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method
