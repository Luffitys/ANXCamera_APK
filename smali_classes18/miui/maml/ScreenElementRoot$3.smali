.class Lmiui/maml/ScreenElementRoot$3;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/ScreenElementRoot;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$3;->this$0:Lmiui/maml/ScreenElementRoot;

    iput-object p2, p0, Lmiui/maml/ScreenElementRoot$3;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$3;->this$0:Lmiui/maml/ScreenElementRoot;

    # getter for: Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;
    invoke-static {v0}, Lmiui/maml/ScreenElementRoot;->access$200(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTriggers;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot$3;->val$command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_19

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenElementRoot"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_19
    return-void
.end method
