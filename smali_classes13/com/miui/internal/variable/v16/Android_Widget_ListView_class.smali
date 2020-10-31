.class public Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;
.super Lcom/miui/internal/variable/Android_Widget_ListView_class;
.source "Android_Widget_ListView_class.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_ListView_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachSpecialMethod()V
    .registers 2

    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->attachConstructor(Ljava/lang/String;)J

    return-void
.end method

.method public buildProxy()V
    .registers 3

    const-string v0, "layoutChildren"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "fillGap"

    const-string v1, "(Z)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->attachSpecialMethod()V

    return-void
.end method

.method protected callOriginalFillGap(JLandroid/widget/ListView;Z)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->originalFillGap(JLandroid/widget/ListView;Z)V

    return-void
.end method

.method protected callOriginalLayoutChildren(JLandroid/widget/ListView;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->originalLayoutChildren(JLandroid/widget/ListView;)V

    return-void
.end method

.method protected doInit(Landroid/widget/ListView;Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->listview_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_23
    return-void
.end method

.method protected handle()V
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handleLayoutChildren(JLandroid/widget/ListView;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handleFillGap(JLandroid/widget/ListView;Z)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handle_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected handleFillGap(JLandroid/widget/ListView;Z)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->callOriginalFillGap(JLandroid/widget/ListView;Z)V

    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected handleLayoutChildren(JLandroid/widget/ListView;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->callOriginalLayoutChildren(JLandroid/widget/ListView;)V

    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected handle_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->original_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->doInit(Landroid/widget/ListView;Landroid/content/Context;)V

    return-void
.end method

.method protected originalFillGap(JLandroid/widget/ListView;Z)V
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_ListView_class.originalFillGap(long, ListView, boolean)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalLayoutChildren(JLandroid/widget/ListView;)V
    .registers 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_ListView_class.originalLayoutChildren(long, ListView)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_ListView_class.original_init_(long, ListView, Context, AttributeSet, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
