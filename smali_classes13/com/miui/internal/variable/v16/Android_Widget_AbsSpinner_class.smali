.class public Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;
.super Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;
.source "Android_Widget_AbsSpinner_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;",
        ">;"
    }
.end annotation


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .registers 3

    const-string v0, "setAdapter"

    const-string v1, "(Landroid/widget/SpinnerAdapter;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;->setAdapter(Landroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V

    return-void

    :cond_8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->originalSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method protected handle()V
    .registers 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->handleSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method protected handleSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V
    .registers 7

    instance-of v0, p4, Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_16

    invoke-virtual {p3}, Landroid/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/AttributeResolver;->isUsingMiuiTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, p4

    check-cast v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/miui/internal/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    :cond_16
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->callOriginalSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_AbsSpinner_class.original_init_(long, AbsSpinner, Context, AttributeSet, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
