.class Lcom/android/internal/app/ChooserActivityForCts$3;
.super Landroid/os/AsyncTask;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivityForCts;->onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivityForCts;

.field final synthetic val$chooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$3;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivityForCts$3;->val$chooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$3;->val$chooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->updateAlphabeticalList()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$3;->val$chooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    return-void
.end method
