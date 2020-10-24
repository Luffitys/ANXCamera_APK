.class public Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;
.super Lcom/miui/internal/variable/Android_Widget_Spinner_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# static fields
.field private static final mPopup:Lmiui/reflect/Field;

.field private static final mPopupWindow:Lmiui/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

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
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;->handleSetPrompt(JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;)V

    return-void
.end method

.method protected callOriginalSetPrompt(JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;->setPrompt(Landroid/widget/Spinner;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;->callOriginalSetPrompt(JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getArrowPopupWindow(Landroid/widget/Spinner;)Lmiui/widget/ArrowPopupWindow;
    .locals 1

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mPopup:Lmiui/reflect/Field;

    invoke-virtual {p0, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->mPopupWindow:Lmiui/reflect/Field;

    invoke-virtual {p1, p0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lmiui/widget/ArrowPopupWindow;

    if-eqz p1, :cond_0

    check-cast p0, Lmiui/widget/ArrowPopupWindow;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string v0, "mPopup"

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method
