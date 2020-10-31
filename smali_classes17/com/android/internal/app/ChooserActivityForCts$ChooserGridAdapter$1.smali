.class Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

.field final synthetic val$this$0:Lcom/android/internal/app/ChooserActivityForCts;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivityForCts;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$1;->val$this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .registers 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
