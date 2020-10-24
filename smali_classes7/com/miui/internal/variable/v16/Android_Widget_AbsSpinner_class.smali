.class public Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;
.super Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .locals 2

    const-string v0, "setAdapter"

    const-string v1, "(Landroid/widget/SpinnerAdapter;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;->setAdapter(Landroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->originalSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method protected handle()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->handleSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method protected handleSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V
    .locals 2

    instance-of v0, p4, Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/AttributeResolver;->isUsingMiuiTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/miui/internal/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->callOriginalSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_Widget_AbsSpinner_class.original_init_(long, AbsSpinner, Context, AttributeSet, int)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
