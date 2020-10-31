.class Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->createMultiChoiceListAdapter(Landroid/widget/ListView;ILcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

.field final synthetic val$layout:I

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;I)V
    .registers 7

    iput-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p5, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->val$listView:Landroid/widget/ListView;

    iput p6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->val$layout:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p0}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object p5

    iget-object p6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p6, p6, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p5, p6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p6

    iput p6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->mLabelIndex:I

    iget-object p6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p6, p6, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p5, p6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p6

    iput p6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 9

    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iget v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mEditMode:Z

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->mIsCheckedIndex:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_2c
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v0, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->val$layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
