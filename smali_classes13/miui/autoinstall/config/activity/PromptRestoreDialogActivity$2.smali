.class Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;
.super Ljava/lang/Object;
.source "PromptRestoreDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->configDialog(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;


# direct methods
.method constructor <init>(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    const/4 v1, 0x1

    # setter for: Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->mNotNow:Z
    invoke-static {v0, v1}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->access$002(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)Z

    iget-object v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    # invokes: Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->donotRestore()V
    invoke-static {v0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->access$100(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V

    return-void
.end method
