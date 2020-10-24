.class public Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;
.super Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class$1;-><init>(Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;JLandroid/widget/ListView;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handleLayoutChildren(JLandroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;JLandroid/widget/ListView;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handleFillGap(JLandroid/widget/ListView;Z)V

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    move-result-object p0

    return-object p0
.end method

.method protected attachSpecialMethod()V
    .locals 1

    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/util/ClassProxy;->attachConstructor(Ljava/lang/String;)J

    return-void
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;)V

    return-void
.end method

.method protected callOriginalFillGap(JLandroid/widget/ListView;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;->fillGap(Landroid/widget/ListView;Z)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->callOriginalFillGap(JLandroid/widget/ListView;Z)V

    return-void
.end method

.method protected callOriginalLayoutChildren(JLandroid/widget/ListView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;->layoutChildren(Landroid/widget/ListView;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->callOriginalLayoutChildren(JLandroid/widget/ListView;)V

    return-void
.end method

.method protected callOriginal_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->original_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected handle()V
    .locals 7

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handle_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-super {p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handle()V

    return-void
.end method

.method protected handle_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->callOriginal_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->doInit(Landroid/widget/ListView;Landroid/content/Context;)V

    return-void
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected original_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v21.Android_Widget_ListView_class.original_init_(long, ListView, Context, AttributeSet, int, int)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
