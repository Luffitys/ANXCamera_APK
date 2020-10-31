.class Landroid/widget/TranslationManager$2;
.super Landroid/os/AsyncTask;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationManager;->doDestroy()V
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
.field final synthetic this$0:Landroid/widget/TranslationManager;


# direct methods
.method constructor <init>(Landroid/widget/TranslationManager;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/TranslationManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    iget-object v0, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    # getter for: Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TranslationManager;->access$200(Landroid/widget/TranslationManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    # getter for: Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Landroid/widget/TranslationManager;->access$100(Landroid/widget/TranslationManager;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/TranslationManager$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    # invokes: Landroid/widget/TranslationManager;->onDestroyed()V
    invoke-static {v0}, Landroid/widget/TranslationManager;->access$400(Landroid/widget/TranslationManager;)V

    return-void
.end method
