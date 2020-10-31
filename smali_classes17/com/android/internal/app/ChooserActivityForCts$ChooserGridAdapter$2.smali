.class Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$2;
.super Ljava/lang/Object;
.source "ChooserActivityForCts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

.field final synthetic val$column:I

.field final synthetic val$holder:Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$2;->val$holder:Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;

    iput p3, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$2;->val$column:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$2;->val$holder:Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;

    iget v2, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$2;->val$column:I

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts;->startSelected(IZZ)V

    return-void
.end method
