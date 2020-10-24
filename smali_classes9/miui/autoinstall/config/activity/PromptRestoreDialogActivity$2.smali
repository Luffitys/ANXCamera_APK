.class Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;


# direct methods
.method constructor <init>(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->access$002(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)Z

    iget-object p0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$2;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-static {p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->access$100(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V

    return-void
.end method
