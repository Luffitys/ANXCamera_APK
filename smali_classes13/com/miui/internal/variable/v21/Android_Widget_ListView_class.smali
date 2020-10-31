.class public Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;
.super Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;
.source "Android_Widget_ListView_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;",
        ">;"
    }
.end annotation


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class$1;-><init>(Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;JLandroid/widget/ListView;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->handleLayoutChildren(JLandroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;JLandroid/widget/ListView;Z)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->handleFillGap(JLandroid/widget/ListView;Z)V

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    move-result-object v0

    return-object v0
.end method

.method protected attachSpecialMethod()V
    .registers 2

    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->attachConstructor(Ljava/lang/String;)J

    return-void
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;)V

    return-void
.end method

.method protected callOriginalFillGap(JLandroid/widget/ListView;Z)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;->fillGap(Landroid/widget/ListView;Z)V

    return-void

    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->callOriginalFillGap(JLandroid/widget/ListView;Z)V

    return-void
.end method

.method protected callOriginalLayoutChildren(JLandroid/widget/ListView;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;->layoutChildren(Landroid/widget/ListView;)V

    return-void

    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->callOriginalLayoutChildren(JLandroid/widget/ListView;)V

    return-void
.end method

.method protected callOriginal_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->original_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected handle()V
    .registers 8

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->handle_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-super {p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handle()V

    return-void
.end method

.method protected handle_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->callOriginal_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_ListView_class;->doInit(Landroid/widget/ListView;Landroid/content/Context;)V

    return-void
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected original_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v21.Android_Widget_ListView_class.original_init_(long, ListView, Context, AttributeSet, int, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
