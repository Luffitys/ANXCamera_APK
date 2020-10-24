.class public Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;
.super Lcom/miui/internal/variable/Android_Widget_GridView_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_GridView_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .locals 2

    const-string v0, "layoutChildren"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "fillGap"

    const-string v1, "(Z)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalFillGap(JLandroid/widget/GridView;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;->fillGap(Landroid/widget/GridView;Z)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->originalFillGap(JLandroid/widget/GridView;Z)V

    return-void
.end method

.method protected callOriginalLayoutChildren(JLandroid/widget/GridView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;->layoutChildren(Landroid/widget/GridView;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->originalLayoutChildren(JLandroid/widget/GridView;)V

    return-void
.end method

.method protected handle()V
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->handleLayoutChildren(JLandroid/widget/GridView;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->handleFillGap(JLandroid/widget/GridView;Z)V

    return-void
.end method

.method protected handleFillGap(JLandroid/widget/GridView;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->callOriginalFillGap(JLandroid/widget/GridView;Z)V

    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected handleLayoutChildren(JLandroid/widget/GridView;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->callOriginalLayoutChildren(JLandroid/widget/GridView;)V

    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalFillGap(JLandroid/widget/GridView;Z)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_Widget_GridView_class.originalFillGap(long, GridView, boolean)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected originalLayoutChildren(JLandroid/widget/GridView;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_Widget_GridView_class.originalLayoutChildren(long, GridView)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
