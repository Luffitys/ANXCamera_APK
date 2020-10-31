.class Landroid/telecom/Call$8;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireCallDestroyed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$record:Landroid/telecom/CallbackRecord;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V
    .registers 5

    iput-object p1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v2, v3}, Landroid/telecom/Call$Callback;->onCallDestroyed(Landroid/telecom/Call;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_c

    :catch_a
    move-exception v2

    move-object v1, v2

    :goto_c
    iget-object v2, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    monitor-enter v2

    :try_start_f
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    # getter for: Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;
    invoke-static {v3}, Landroid/telecom/Call;->access$100(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    # getter for: Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;
    invoke-static {v3}, Landroid/telecom/Call;->access$100(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v0, 0x1

    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_39

    if-eqz v0, :cond_35

    iget-object v2, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    # getter for: Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;
    invoke-static {v2}, Landroid/telecom/Call;->access$200(Landroid/telecom/Call;)Landroid/telecom/Phone;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v2, v3}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    :cond_35
    if-nez v1, :cond_38

    return-void

    :cond_38
    throw v1

    :catchall_39
    move-exception v3

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v3
.end method
