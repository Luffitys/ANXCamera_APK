.class Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

.field final synthetic val$isMobileData:Z


# direct methods
.method constructor <init>(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)V
    .locals 0

    iput-object p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$3;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    iput-boolean p2, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$3;->val$isMobileData:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$3;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->access$202(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)Z

    iget-object p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$3;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    iget-boolean p0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$3;->val$isMobileData:Z

    invoke-static {p1, p0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->access$300(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;Z)V

    return-void
.end method
