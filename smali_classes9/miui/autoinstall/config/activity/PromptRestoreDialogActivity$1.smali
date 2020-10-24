.class Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;


# direct methods
.method constructor <init>(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$1;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$1;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
