.class Lmiui/telephony/SubscriptionManager$1;
.super Landroid/os/AsyncTask;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/SubscriptionManager;->onSubscriptionInfoChanged()V
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
.field final synthetic this$0:Lmiui/telephony/SubscriptionManager;


# direct methods
.method constructor <init>(Lmiui/telephony/SubscriptionManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    iget-object v0, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    const/4 v1, 0x1

    # invokes: Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V
    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->access$000(Lmiui/telephony/SubscriptionManager;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    # invokes: Lmiui/telephony/SubscriptionManager;->notifyOnSubscriptionsChangedListeners()V
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->access$100(Lmiui/telephony/SubscriptionManager;)V

    return-void
.end method
